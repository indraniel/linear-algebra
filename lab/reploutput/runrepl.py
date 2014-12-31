#!/usr/bin/env python
# runrepl.py
#  Generates the output from from a repl, given a file 
# containing a list of commands
#
# 2014-Dec-15 JH for some reason Sage is doing cursor termcap cmds.  
#   Strip those.
# 2012-Nov-04 Jim Hefferon jhefferon@smcvt.edu  adapted from runsage.py
from __future__ import print_function

import sys, os, re, pprint, argparse
import pexpect
import shutil

SAGE_CALL = 'sage'  # command line string to call Sage
PYTHON_CALL = 'python' # command line string to call Python
DIFF_CALL = 'diff'  # command line string to call the diff program

# ========== Filename extensions ============================
# The CMDS_EXTENSION file is the list of commands to feed to the repl.
# Before this pgm runs the repl, it tests if the list in  CMDS_NEW_EXTENSION
# is any different and if not, does not call the repl.
#
# The EDITS_EXTENSION file holds the edits to do.  The same diff is done
# with the EDITS_NEW_EXTENSION.

CMDS_EXTENSION = 'cmds'  # Typically from prior run of this pgm
CMDS_NEW_EXTENSION = 'cmdsnew' # From current run of this pgm
UNEDITED_OUTPUT_EXTENSION = 'outunedited' # Result of running prior thru repl
EDITS_EXTENSION = 'edit'  # Typically from prior run of this pgm
EDITS_NEW_EXTENSION = 'editnew' # From current run of this pgm
RESULT_EXTENSION = 'result' # Result of editing output
ERROR_EXTENSION = 'err'  # Any error traceback
RETURN_CODE_EXTENSION = 'rc'  # System return code
CURSOR_CMDS_STRIPPED_EXTENSION = 'cursorstripped' # Strip termcap codes


# =============== What to feed expect =========================
# Have to get pyexpect to run either repl.  It has to react to 
# the prompts, and has to spot an error.
# This is not a general program so I won't get fancy, and only make 
# it work for the two similar cases of Sage and Python.

SAGE_PROMPT = r'sage: '  # I have tried a begin of line ^ but it doesn't work
SAGE_CONTINUE = r'\.\.\.\.: '
SAGE_ERROR = '------------------------------------------------------------'
SAGE_DATA = {'prompt': SAGE_PROMPT, 
             'prompt_continue': SAGE_CONTINUE,
             'error': SAGE_ERROR,
             'start_cmd': 'sage',
             'exit_cmd': 'exit'}
PYTHON_PROMPT = r'>>> '
PYTHON_CONTINUE = r'\.\.\. '
PYTHON_ERROR = '^Traceback'
PYTHON_DATA = {'prompt': PYTHON_PROMPT, 
               'prompt_continue': PYTHON_CONTINUE,
               'error': PYTHON_ERROR,
               'start_cmd': 'python',
               'exit_cmd': chr(4)}
EXPECT_INFO = {'sage': SAGE_DATA,
               'python': PYTHON_DATA}
EXPECT_TIMEOUT = 120

FORCE_DEFAULT = False # set to True to remake all sage plots 
DEBUG = True


class RunreplError(Exception):
    def __init__(self, msg):
        self.msg = msg


class ReplFailure(RunreplError):
    def __init__(self, msg):
        self.msg = msg

def warning(*objs):
    msg = ' '.join(objs)
    print('WARNING:', msg, file=sys.stderr)
    return msg
def error(*objs):
    msg = warning(s='ERROR', *objs)
    print('ERROR!', msg, file=sys.stderr)  
    raise ReplFailure, msg

def open_input(fn):
    try:
        return open(fn,'r')
    except Exception, e:
        error("unable to open input file ",fn,': ',str(e))
def open_output(fn):
    try:
        return open(fn,'w')
    except Exception, e:
        error("unable to open out file ",fn,': ',str(e))

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
    child = pexpect.spawn(start_cmd, maxread=1) # turn off buffering so can detect error string?
    # if DEBUG:  # dump output if I am confused
    #     child.logfile =  sys.stdout
    child.expect(prompt, timeout=EXPECT_TIMEOUT)  # skip past intro
    for i, line in enumerate(lines):
        if DEBUG:
            print("\n++++++++ feed_lines: line=\n"+pprint.pformat(line), file=sys.stderr)
        if child.after:  # get the prompt
            if DEBUG:
                print("  _feed_lines: child.after="+pprint.pformat(child.after), file=sys.stderr)
            r.append(child.after)
        child.sendline(line)
        dex = child.expect([prompt, prompt_continue])
        if DEBUG:
            print("  _feed_lines sent the line: dex=", str(dex), file=sys.stderr)
            print("   appended to r is child.before:", pprint.pformat(child.before), file=sys.stderr)
            print("    child.after is ", pprint.pformat(child.after), file=sys.stderr)
        r.append(child.before)
    if DEBUG:
        print("  _feed_lines after loop: child.before is ", pprint.pformat(child.before), file=sys.stderr)
        print("    child.after is ", pprint.pformat(child.after), file=sys.stderr)
    if child.after != prompt:
        r.append(child.after)
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
    f_in = open_input(fn_in)
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
        print("responses is \n",pprint.pformat(responses), file=sys.stderr)
    # Put them in the output
    fn_out = outname+'.'+UNEDITED_OUTPUT_EXTENSION
    f_out = open_output(fn_out)
    f_out.write(responses)
    f_out.close()
    return responses

# ======= edit routines ==============
CURSOR_SEQ_RE = re.compile("\x1b\[(\d+|;)*m")
def _strip_cursor_seqs(line):
    """Remove the cursor movement control sequences
    """
    return CURSOR_SEQ_RE.sub('',line)

def strip_cursor_seqs(fn_in,fn_out):
    """Remove the cursor movement control sequences
    """
    f_in = open_input(fn_in)
    inlines = f_in.readlines()
    f_in.close()
    outlines = []
    for line in inlines:
        outline = _strip_cursor_seqs(line)
        outlines.append(outline)
    f_out = open_output(fn_out)
    for lne in outlines:
        f_out.write(lne)
    f_out.close()

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
    edit_lst = [entry.strip() for entry in edit_lst]  # strip whitespace
    if DEBUG:
        print("_edit_line: edit_lst is",edit_lst, file=sys.stderr)
        print("    source to edit is:", pprint.pformat(r), file=sys.stderr)
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
            print("  _edit_line: splitting line with "+edit, file=sys.stderr)
        try:
            line_no, split_point, padding = int(edit_lst[1]), int(edit_lst[2]), int(edit_lst[3])
        except Exception, e:
            raise RunreplError("non-integer argument to split command "+edit+" for "+fn)
        # print "edit_line: line_no, split_point, padding",line_no, split_point, padding
        try:
            line_lst = r[line_no]
            if DEBUG:
                print("  _edit_line: line_no="+str(line_no)+" and line_lst is "+pprint.pformat(line_lst), file=sys.stderr)
        except Exception, e:
            raise RunreplError("line number argument out of bounds in split command "+edit+" for "+fn)
        if line_lst is None:
            raise RunreplError("trying to split deleted line number "+str(line_no)+" with command "+edit+" for "+fn)
        text = line_lst[0]
        if split_point < len(text):
            if padding >= 0:
                insert_line = [" "*padding+text[split_point:]]
            else:
                insert_line = []  # omit it if padding is less than 0
            lines = [text[:split_point]] + insert_line + line_lst[1:]
            if DEBUG:
                print("  _edit_line: lines is "+pprint.pformat(lines), file=sys.stderr)
            r[line_no] = lines
            if DEBUG:
                print("  _edit_line: r is now "+pprint.pformat(r), file=sys.stderr)
    else:
        raise RunreplError("unknown starting letter edit command "+edit+" for "+fn)
    return r

def edit_lines(source,edit_cmds,fn):
    """Go through the edit commands one at a time
      source  list   elets are: a list of strings (representing lines of text)
                      or None (representing deleted line)
      edit_cmds  list of strings  edit commands
      fn  string file name for error message
    """
    s = source[:]
    for edit in edit_cmds:
        if DEBUG:
            print("==== edit_lines: doing edit",edit, file=sys.stderr)
            print("\n"+pprint.pformat(s), file=sys.stderr)
        if edit.strip():
            s = _edit_line(s,edit,fn)
    # Concatenate into an array of lines
    r = []
    for line in s:  # line was a single line in output
        if DEBUG:
            print("edit_lines: line is "+pprint.pformat(line), file=sys.stderr)
        if line is None:
            continue
        else:
            r.append("\n".join(line)) 
    return r

def edit_output(fn_source, fn_edit, fn_result, debug=DEBUG):
    """Read the lines from the file of repl output and from the file of
    edits, and make the changes. 
      outname  string  Prefix name of the files
    """
    # Get the source information
    # fn_source = outname+'.'+UNEDITED_OUTPUT_EXTENSION
    f_source = open_input(fn_source)
    source_lines = f_source.readlines()
    f_source.close()
    if debug:
        print("editing: source lines are ", pprint.pformat(source_lines), file=sys.stderr)
    # strip empty first and last line
    if not(source_lines[0].strip()): 
        source_lines = source_lines[1:]
    if not(source_lines[-1].strip()):
        source_lines = source_lines[:-1]
    source = [[line.strip()] for line in source_lines] # for editing need list of strings
    if debug:
        print("edit_output: source lines are \n",pprint.pformat(source), file=sys.stderr)
    # Get the edit information
    # fn_edit = outname+'.'+EDITS_EXTENSION
    f_edit = open_input(fn_edit)
    edits = f_edit.read().strip()
    f_edit.close()
    edit_cmds = edits.split(";")
    edit_cmds = [cmd.strip() for cmd in edit_cmds] # omit whitespace in cmd
    if debug:
        print("edit_output: edit_cmds are \n",pprint.pformat(edit_cmds), file=sys.stderr)
    # Edit the lines
    response_lines = edit_lines(source, edit_cmds, fn_edit)
    if debug:
        print("  response_lines is \n",pprint.pformat(response_lines), file=sys.stderr)
    finish = "\n".join(response_lines)
    # Put them in the result file
    f_result = open_output(fn_result)
    f_result.write(finish)
    f_result.close()
    return finish


# ======== clean up ==================================
def clean_up(outname):
    """Erase files no longer needed.
    """
    for extension in [UNEDITED_OUTPUT_EXTENSION, ERROR_EXTENSION, RETURN_CODE_EXTENSION]:
        os.remove(outname+'.'+extension)


# ====================================
def main(argv=None):
    if argv is None:
        argv = sys.argv
    arg_parser = argparse.ArgumentParser()
    arg_parser.add_argument("-f", "--force", help="force running the repl (don't check for diff's)",
                            action="store_true", default=FORCE_DEFAULT)
    arg_parser.add_argument("repl",default="sage",choices=['python','sage'],
                            help='REPL to use')
    arg_parser.add_argument("outname",help="sageoutput.sty's @outname: labnn")
    args = arg_parser.parse_args()
    outname = args.outname.rstrip(". \n\r")
    repl = args.repl
    # Main program logic
    try:
        if args.force or diff(outname):
            if DEBUG:
                if args.force:
                    print("\n\n++runrepl.py forced to proceed as though there is a difference between outname=",outname+'.'+CMDS_NEW_EXTENSION, "and outname=", outname+'.'+CMDS_EXTENSION, file=sys.stderr)
                else:
                    print("\n\n++runrepl.py there is a difference between outname=",outname+'.'+CMDS_NEW_EXTENSION, "and outname=", outname+'.'+CMDS_EXTENSION, file=sys.stderr)
            shutil.copy2(outname+'.'+CMDS_NEW_EXTENSION,outname+'.'+CMDS_EXTENSION)
            shutil.copy2(outname+'.'+EDITS_NEW_EXTENSION,outname+'.'+EDITS_EXTENSION)
            # if DEBUG:
            #     print "++copy done"
            unedited_output = feed_lines(outname, repl)
            if DEBUG:
                print("++unedited_output:\n", pprint.pformat(unedited_output), file=sys.stderr)
            strip_cursor_seqs(outname+'.'+UNEDITED_OUTPUT_EXTENSION,outname+'.'+CURSOR_CMDS_STRIPPED_EXTENSION)
            result = edit_output(outname+'.'+CURSOR_CMDS_STRIPPED_EXTENSION, 
                                 outname+'.'+EDITS_EXTENSION, 
                                 outname+'.'+RESULT_EXTENSION)
            if DEBUG:
                print("++edit output:\n", pprint.pformat(result), file=sys.stderr)
        else:
            if DEBUG:
                print("\n\n\n++there is no difference between outname=",outname+'.'+CMDS_NEW_EXTENSION, "and outname=", outname+'.'+CMDS_EXTENSION, file=sys.stderr)
    except RunreplError, err:
        print('global trouble', err.msg, file=sys.stderr)
        print("for help use --help", file=sys.stderr)
        return 2
    return 0

if __name__ == "__main__":
    sys.exit(main())
