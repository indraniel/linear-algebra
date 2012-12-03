#!/usr/bin/env python
# runsage.py
#  Generates the output from Sage, the math software, from a file 
# containing a list of commands
#
# 2012-Nov-04 Jim Hefferon jhefferon@smcvt.edu  adapted from earlier stuff

import sys, os, re, pprint, argparse
import pexpect
import shutil

SAGE_CALL = 'sage'  # command line string to call Sage
DIFF_CALL = 'diff'  # command line string to call the diff program

SAGE_CMD_EXTENSION = 'sagecmd'  # Typically from prior run of this pgm
SAGE_CMD_NEWFILE_EXTENSION = 'sagecmdnew' # From current run of this pgm
SAGE_UNEDITED_OUTPUT_EXTENSION = 'out_unedited'
SAGE_EDIT_EXTENSION = 'edit'
SAGE_EDIT_NEWFILE_EXTENSION = 'editnew'
SAGE_RESULT_EXTENSION = 'result'
ERROR_EXTENSION = 'err'
RETURN_CODE_EXTENSION = 'rc'

DEBUG = False

class RunsageError(Exception):
    def __init__(self, msg):
        self.msg = msg


def _open_input(fn):
    try:
        return open(fn,'r')
    except Exception, e:
        print "ERROR opening input file",fn
        print e
        sys.exit(2)

def _open_output(fn):
    try:
        return open(fn,'w')
    except Exception, e:
        print "ERROR opening output file",fn
        print e
        sys.exit(2)

def get_new_sage_cmds(outname):
    """Return a string that is the contents of the new_sage_cmds file
    """
    newsagecmds_f = _open_input(outname+'.'+SAGE_CMD_NEWFILE_EXTENSION)
    return newsagecmds_f.read()

def diff(outname):
    """Return True if the two files outname.SAGE_CMD_NEWFILE_EXTENSION
    and outname.SAGE_CMD_EXTENSION differ.
    """
    # Test the sage commands
    sage_cmds_fn = outname+'.'+SAGE_CMD_EXTENSION
    if not(os.path.isfile(sage_cmds_fn)):
        return True
    sage_cmds_f = open(sage_cmds_fn, 'r')
    sage_cmds = sage_cmds_f.read()  
    new_sage_cmds = get_new_sage_cmds(outname)
    # Test the edits
    edits_fn = outname+'.'+SAGE_EDIT_EXTENSION
    if not(os.path.isfile(edits_fn)):
        return True
    edits_f = open(edits_fn, 'r')
    edits = edits_f.read()
    edits_f.close()
    edits_new_fn = outname+'.'+SAGE_EDIT_NEWFILE_EXTENSION
    edits_new_f = open(edits_new_fn, 'r')
    edits_new = edits_new_f.read()
    edits_new_f.close()
    return ((sage_cmds != new_sage_cmds) or (edits != edits_new))


# ======= execute routines ==============
SAGE_PROMPT = 'sage: '
SAGE_CONTINUE = '....: '
# SAGE_CONTINUE_INITIAL = '....:    '
SAGE_ERROR = '------------------------------------------------------------'
def feed_lines(lines,fn_in):
    """Feed the lines as commands to a Sage session
     lines  list of strings
     fn_in  name of input file, for error messages
    """
    r = []  # the responses
    child = pexpect.spawn(SAGE_CALL)
    child.expect(SAGE_PROMPT, timeout=120)
    for i, line in enumerate(lines):
        line = line.rstrip("\n")
        if (not(line) and (i+1 >= len(lines))):  # drop trailing line
            continue
        if DEBUG:
            print "line is",line
        if child.after:
            r.append(child.after.rstrip("\n"))
        child.sendline(line)
        dex = child.expect([SAGE_ERROR,SAGE_PROMPT,SAGE_CONTINUE])
        if (dex == 0):
            print "ERROR running sage from file",fn_in
            print "context:\n",child.before
            sys.exit(10)
        else:
            r.append(child.before)
            if DEBUG:
                print "    continuing: child.before is ", child.before
                print "    child.after is ", child.after
    child.sendline('exit')
    r[-1] = r[-1].rstrip("\n")  
    return r

def run_sage_lines(outname):
    """Read the lines from the input file and feed them to a Sage session.
    Collect the outputs.  Return as one string, probably with \r\n's. 
    """
    fn_in = outname+'.'+SAGE_CMD_EXTENSION
    fn_out = outname+'.'+SAGE_UNEDITED_OUTPUT_EXTENSION
    # Get the lines
    f_in = _open_input(fn_in)
    sage_lines = f_in.readlines()
    f_in.close()
    # Get the lines
    response_lines = feed_lines(sage_lines,fn_in)
    response = "".join(response_lines)
    if DEBUG:
        print "response lines is \n",pprint.pformat(response_lines)
    # Put them in the output
    f_out = _open_output(fn_out)
    f_out.write(response)
    f_out.close()
    return response

# ======= edit routines ==============
def edit_line(source,edit,fn):
    """Execute one edit.  Return array of lines.
      source  array   elets are: a string (a line of text) 
         or None (meaning line has been deleted)
         or array of strings (meaning more than one line has been inserted)
      edit  edit command, line of text
    """
    r = source[:]
    edit_ready = edit.rstrip(";\n ")   # drop trailing semicolon
    edit_ready = edit_ready.split(',')
    if DEBUG:
        print "edit_line: edit_ready is",edit_ready
    if not(len(edit_ready)) >= 1:
        print usage("for edit command "+edit+" for Sage file "+fn)
        sys.exit(10)
    if (edit_ready[0] == 'd'):  # delete lines
        try:
            start, end = int(edit_ready[1]), int(edit_ready[2])
        except Exception, e:
            print usage("edit command "+edit+
                        " for Sage file "+fn)
            print e
            sys.exit(10)
        for line_no in range(start,end):
            try:
                r[line_no] = None
            except Exception, e:
                print usage("with edit command "+edit+
                            " for Sage file "+fn)
                print e
                sys.exit(10)
    elif (edit_ready[0] == 's'): # split line
        try:
            line_no, split_point, padding = int(edit_ready[1]), int(edit_ready[2]), int(edit_ready[3])
        except Exception, e:
            print "ERROR with edit command "+edit+" for Sage file "+fn
            print e
            sys.exit(10)
        # print "edit_line: line_no, split_point, padding",line_no, split_point, padding
        try:
            line = r[line_no]
        except Exception, e:
            print "ERROR with edit command "+edit+" for Sage file "+fn
            print e
            sys.exit(10)
        # print "line is ",line
        if not(isinstance(line,type(''))):
            print "ERROR with edit command "+edit+" for Sage file "+fn+"\n  line number "+str(line_no)+" is not a string"
            sys.exit(10)
        if split_point < len(line.strip()):
            lines = [line[:split_point]," "*padding+line[split_point:]]
            r[line_no] = lines
            # print "now r is\n",pprint.pformat(r)
    else:
        print usage("on edit command "+edit+" for Sage file "+fn+
                    "\n  Edit command should start with d or s")
        sys.exit(10)
    return r

def edit_lines(sage_lines,edits,fn_in):
    """Go through the edit commands one at a time
    """
    r = sage_lines[:]
    # Split the edit lines into separate lines
    m = re.compile(";")
    edit_lines = m.sub("\n", edits.rstrip())
    for edit in edit_lines.split("\n"):
        if DEBUG:
            print "doing edit",edit
            print "====\n"+pprint.pformat(r)
        if edit.strip():
            r =  edit_line(r, edit, fn_in)
    # Make into an array of lines
    s = []
    for dex, i in enumerate(r):
        if i is None:
            continue
        elif isinstance(i,type('')):
            s.append(i)
        else:
            # print "i is ",i
            s.append("\n".join(i)) 
    # print "s=",pprint.pformat(s)
    # print "s done"
    return s

def edit_sage_lines(sage_output,outname):
    """Read the lines from the input file and the edit file and make the changes
    in the order called for.  Collect the outputs. 
      sage_output  strings  Sage session, probably with embedded \r\n's
      outname  string  Prefix name of this job, from sageoutputs.sty
    """
    edit_fn = outname+'.'+SAGE_EDIT_EXTENSION
    out_fn = outname+'.'+SAGE_RESULT_EXTENSION
    # Get the edit information
    f_edit = _open_input(edit_fn)
    edits = f_edit.read().strip()
    f_edit.close()
    # Edit the lines
    sage_lines = sage_output.splitlines()
    if DEBUG:
        print "  sage_lines is \n",pprint.pformat(sage_lines)
    response_lines = edit_lines(sage_lines, edits, outname)
    if DEBUG:
        print "  response_lines is \n",pprint.pformat(response_lines)
    finish = "\n".join(response_lines)
    # Put them in the output
    f_out = _open_output(out_fn)
    f_out.write(finish)
    f_out.close()
    return finish

# ======== clean up ==================================
def clean_up(outname):
    """Erase files no longer needed.
    """
    pass


# ====================================
def main(argv=None):
    if argv is None:
        argv = sys.argv
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument("outname",help="sageoutput.sty's @outname: labnn")
    args = arg_parser.parse_args()
    outname = args.outname.rstrip(". \n\r")
    # Main program logic
    try:
        if diff(outname):
            if DEBUG:
                print "\n\n\n++there is a difference outname=",outname
            shutil.copy2(outname+'.'+SAGE_CMD_NEWFILE_EXTENSION,outname+'.'+SAGE_CMD_EXTENSION)
            shutil.copy2(outname+'.'+SAGE_EDIT_NEWFILE_EXTENSION,outname+'.'+SAGE_EDIT_EXTENSION)
            if DEBUG:
                print "++copy done"
            sage_output = run_sage_lines(outname)
            if DEBUG:
                print "++sage_output:\n", pprint.pformat(sage_output)
            result = edit_sage_lines(sage_output,outname)
            if DEBUG:
                print "++edit output:\n", pprint.pformat(result)
        else:
            if DEBUG:
                print "\n\n\n++there is no difference outname=",outname
    except RunsageError, err:
        print >>sys.stderr, err.msg
        print >>sys.stderr, "for help use --help"
        return 2
    return 0

if __name__ == "__main__":
    sys.exit(main())
