#!/usr/bin/env python
# runrepl.py
#  Generates the output from from a repl, given a file 
# containing a list of commands
#
# 2012-Nov-04 Jim Hefferon jhefferon@smcvt.edu  adapted from runsage.py

import sys, os, re, pprint, argparse
import pexpect
import shutil

SAGE_CALL = 'sage'  # command line string to call Sage
PYTHON_CALL = 'python' # command line string to call Python
DIFF_CALL = 'diff'  # command line string to call the diff program

# Filename extensions added to be processed.
#
# The CMDS_EXTENSION file is the list of commands to feed to the repl.
# Before this pgm runs the repl, it tests if the list in  CMDS_NEW_EXTENSION
# is any different and if not, does not call the repl.
#
# The EDITS_EXTENSION file holds the edits to do.  The same diff is done
# with the EDITS_NEW_EXTENSION.
CMDS_EXTENSION = 'cmds'  # Typically from prior run of this pgm
CMDS_NEW_EXTENSION = 'cmdsnew' # From current run of this pgm
UNEDITED_OUTPUT_EXTENSION = 'out_unedited' # Result of running prior thru repl
EDITS_EXTENSION = 'edit'  # Typically from prior run of this pgm
EDITS_NEW_EXTENSION = 'editnew' # From current run of this pgm
RESULT_EXTENSION = 'result' # Result of editing output
ERROR_EXTENSION = 'err'  # Any error traceback
RETURN_CODE_EXTENSION = 'rc'  # System return code

# =============== What to feed expect =========================
# Have to get pyexpect to run either repl.  It has to react to 
# the prompts, and has to spot an error.
# This is not a general program so I won't get fancy, and only make 
# it work for the two similar cases of Sage and Python.
SAGE_PROMPT = 'sage: '
SAGE_CONTINUE = '....: '
SAGE_ERROR = '------------------------------------------------------------'
SAGE_DATA = {'prompt': SAGE_PROMPT, 
             'prompt_continue': SAGE_CONTINUE,
             'error': SAGE_ERROR,
             'start_cmd': 'sage',
             'exit_cmd': 'exit'}
PYTHON_PROMPT = '>>> '
PYTHON_CONTINUE = '... '
PYTHON_ERROR = 'Traceback (most recent call last):'
PYTHON_DATA = {'prompt': PYTHON_PROMPT, 
               'prompt_continue': PYTHON_CONTINUE,
               'error': re.compile("\r\nTr"), # start of PYTHON_ERROR
               'start_cmd': 'python',
               'exit_cmd': chr(4)}
EXPECT_INFO = {'sage': SAGE_DATA,
               'python': PYTHON_DATA}
EXPECT_TIMEOUT = 120

DEBUG = True


class RunreplError(Exception):
    def __init__(self, msg):
        self.msg = msg


class ReplFailure(RunreplError):
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

# =============== diff ====================
def diff(outname):
    """Return True if the two files outname.CMD_NEW_EXTENSION
    and outname.CMD_EXTENSION differ, or the second doesn't exist.
    Also return True if the edits differ or if the EDIT_EXTENSION
    file doesn't exist.
    """
    for ext_old, ext_new in [(CMDS_EXTENSION, CMDS_NEW_EXTENSION), 
                             (EDITS_EXTENSION, EDITS_NEW_EXTENSION)]:
        fn_ext_old, fn_ext_new = outname+'.'+ext_old, outname+'.'+ext_new
        if not(os.path.isfile(fn_ext_old)):
            return True
        f_old = open(fn_ext_old, 'r') 
        f_new = open(fn_ext_new, 'r')
        old, new = f_old.read(), f_new.read()
        f_old.close()
        f_new.close()
        if (old != new):
            return True
    return False

# ======= execute routines ==============
def get_repl_info(repl):
    """Return the correct dictionary
    """
    try:
        return EXPECT_INFO[repl]
    except Exception, e:
        raise RunreplError('expected repl to be "python" or "sage": '+str(e))

def _feed_lines(lines,repl,fn_in):
    """Feed the lines as commands to a Sage session
     lines  list of strings
     repl  string, either 'sage' or 'python'
     fn_in  name of input file, for error messages
    """
    # Get the expect info for this repl
    repl_info =  get_repl_info(repl)
    prompt = repl_info['prompt']
    prompt_continue = repl_info['prompt_continue']
    error = repl_info['error']
    start_cmd = repl_info['start_cmd']
    exit_cmd = repl_info['exit_cmd']
    # Spawn the expect child, feed it the lines, and collect the responses
    r = []  # for the responses
    child = pexpect.spawn(start_cmd, maxread=1) # turn off buffering so can detect error string
    # if DEBUG:  # dump output if I am confused
    #     child.logfile =  sys.stdout
    child.expect(prompt, timeout=EXPECT_TIMEOUT)  # skip past intro
    for i, line in enumerate(lines):
        # line = line.rstrip()  
        # if (not(line) and (i+1 >= len(lines))):  # drop trailing line
        #     continue
        if DEBUG:
            print "\n++++++++ feed_lines: line=\n"+pprint.pformat(line)
        if child.after:  # get the prompt
            if DEBUG:
                print "  feed_lines: child.after=",pprint.pformat(child.after)
            r.append(child.after.rstrip())
        child.sendline(line)
        dex = child.expect([prompt, prompt_continue]) # does not stop if repl raises an exception
        # dex = child.expect([error, prompt, prompt_continue])
        # if (dex == 0):
        #     print "ERROR running",repl,"from file",fn_in
        #     print "  input line number", str(i)
        #     print "  line is",pprint.pformat(line)
        #     print "    child.before:\n---->", pprint.pformat(child.before)
        #     print "    child.after:\n----->", pprint.pformat(child.after)
        #     raise ReplFailure('Repl '+repl+" gave error for line number="+str(i)+" line="+pprint.pformat(line))
        # else:
        r.append(child.before)
        if DEBUG:
            print "  feed_lines continuing: child.before is ", pprint.pformat(child.before)
            print "    child.after is ", pprint.pformat(child.after)
    child.sendline(exit_cmd)  
    return r

def feed_lines(outname,repl):
    """Read the lines from the input file and feed them to a repl session.
    Collect the outputs, give them unix \n line endings and put them to a file.
    Return as one string. 
    """
    # Get the expect info for this repl
    repl_info =  get_repl_info(repl)
    prompt = repl_info['prompt']
    prompt_continue = repl_info['prompt_continue']
    error = repl_info['error']
    start_cmd = repl_info['start_cmd']
    exit_cmd = repl_info['exit_cmd']
    # Read from the commands input tile
    fn_in = outname+'.'+CMDS_EXTENSION
    f_in = _open_input(fn_in)
    cmd_lines = f_in.readlines()
    f_in.close()
    # Strip any leading and trailing blank lines
    cmd_lines = [line.rstrip() for line in cmd_lines]
    if not(cmd_lines[0].strip()):
        cmd_lines = cmd_lines[1:]
    if not(cmd_lines[-1].strip()):
        cmd_lines = cmd_lines[:-1]
    # Get the responses from the repl
    responses = _feed_lines(cmd_lines,repl,fn_in)
    responses = "".join(responses)
    responses = responses.replace("\r\n","\n")
    responses = responses.rstrip()
    if DEBUG:
        print "responses is \n",pprint.pformat(responses)
    # Put them in the output
    fn_out = outname+'.'+UNEDITED_OUTPUT_EXTENSION
    f_out = _open_output(fn_out)
    f_out.write(responses)
    f_out.close()
    return responses

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
    # Strip leading and trailing blank lines
    if not(sage_lines[0].strip()):
        sage_lines = sage_lines[1:]
    if not(sage_lines[-1].strip()):
        sage_lines = sage_lines[:-1]
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
def _edit_line(source,edit,fn):
    """Execute one edit.  Return array of lines.
      source  list   elets are: a list of strings (representing lines of text)
                      or None (representing deleted line)
      edit  edit command, line of text
      fn  string file name for error message
    """
    r = source[:]
    edit_lst = edit.rstrip(";\n ")   # drop trailing semicolon
    edit_lst = edit_lst.split(',')
    if DEBUG:
        print "edit_line: edit_lst is",edit_lst
        print "source to edit is:", pprint.pformat(r)
    if not(len(edit_lst)) >= 1:
        raise RunreplError("bad edit command "+edit+" for file "+fn)
    if (edit_lst[0] == 'd'):  # will delete lines
        try:
            start, end = int(edit_lst[1]), int(edit_lst[2])
        except Exception, e:
            raise RunreplError("non-integer argument to edit command "+edit+" for file "+fn)
        for line_no in range(start,end):
            try:
                r[line_no] = None
            except Exception, e:
                raise RunreplError("delete argument out of bounds in edit "+edit+" for file "+fn)
    elif (edit_lst[0] == 's'): # split line
        if DEBUG:
            print "  edit: splitting line with "+edit
        try:
            line_no, split_point, padding = int(edit_lst[1]), int(edit_lst[2]), int(edit_lst[3])
        except Exception, e:
            raise RunreplError("non-integer argument to split command "+edit+" for "+fn)
        # print "edit_line: line_no, split_point, padding",line_no, split_point, padding
        try:
            line_lst = r[line_no]
        except Exception, e:
            raise RunreplError("line number argument out of bounds in split command "+edit+" for "+fn)
        if line_lst is None:
            raise RunreplError("trying to split deleted line number "+str(line_no)+" with command "+edit+" for "+fn)
        text = line_lst[0]
        if split_point < len(text):
            lines = [text[:split_point]] + [" "*padding+text[split_point:]] + line_lst[1:]
            r[line_no] = lines
    else:
        raise RunreplError("unknown starting letter edit command "+edit+" for "+fn)
    return r

# =============== editing ====================
def edit_line(source,edit,fn):
    """Execute one edit.  Return array of lines.
      source  list  elets are: a list of strings (representing lines of text)  
                or None (meaning line has been deleted)
      edit  edit command, line of text
    """
    r = source[:]
    edit_ready = edit.rstrip(";\n ")   # drop trailing semicolon
    edit_ready = edit_ready.split(',')
    if DEBUG:
        print "edit_line: edit_ready is",edit_ready
        print "  source to edit is:", pprint.pformat(r)
    if not(len(edit_ready)) >= 1:
        print usage("for edit command "+edit+" for Sage file "+fn)
        sys.exit(20)
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
