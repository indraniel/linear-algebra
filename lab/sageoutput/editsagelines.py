#!/usr/bin/env python
# editsagelines.py
#  Takes in a file of lines from Sage, the math software, and edits them,
# collecting the output.
#
# 2012-Oct-29 Jim Hefferon jhefferon@smcvt.edu written

import sys, os, re, pprint

DEBUG = False

def usage(s):
    if s:
        print "ERROR: ",s
    print "Usage:"
    print "  Edit lines from a file represeting Sage output"
    print "   ",sys.argv[0]+" "+"<file with Sage lines>"+" <file with edits>"+" <output file>"
    print "Each edit command has the form <letter d or s>[,<natural>]*"
    print " * If the letter is d then there are two natural numbers and "
    print "   lines from the first to the second are dropped"
    print " * If the letter is s then there are three natural numbers and "
    print "   the line given by the first number is split at the column" 
    print "   given by the second, and a new line is made padded with the"
    print "   third number of spaces"
    print "Note that the number refers to the command output, so doesn't change"
    print "from prior edit commands."


def _open_input(fn):
    try:
        return open(fn,'r')
    except Exception, e:
        print usage("opening input file "+fn)
        print e
        sys.exit(2)

def _open_output(fn):
    try:
        return open(fn,'w')
    except Exception, e:
        print usage("opening output file "+fn)
        print e
        sys.exit(2)

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
            print usage("with edit command "+edit+
                        " for Sage file "+fn)
            print e
            sys.exit(10)
        # print "edit_line: line_no, split_point, padding",line_no, split_point, padding
        try:
            line = r[line_no]
        except Exception, e:
            print usage("with edit command "+edit+
                        " for Sage file "+fn)
            print e
            sys.exit(10)
        # print "line is ",line
        if not(isinstance(line,type(''))):
            print usage("with edit command "+edit+
                        " for Sage file "+fn+
                        "\n  line number "+str(line_no)+" is not a string")
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

def process_lines(fn_in,fn_edit,fn_out):
    """Read the lines from the input file and the edit file and make the changes
    in the order called for.  Collect the outputs. 
    """
    # Get the lines
    f_in = _open_input(fn_in)
    sage_lines = f_in.readlines()
    f_in.close()
    f_edit = _open_input(fn_edit)
    edits = f_edit.read().strip()
    # print "edits is ",edits
    f_edit.close()
    # Get the lines
    response_lines = edit_lines(sage_lines, edits, fn_in)
    finish = "".join(response_lines)
    if DEBUG:
        print "response lines is \n",("".join(response_lines))
    # Put them in the output
    f_out = _open_output(fn_out)
    f_out.write(finish)
    f_out.close()
    return finish

if __name__ == '__main__':
    try:
        fn_in = sys.argv[1]
    except:
        usage('you must supply an input filename')
        sys.exit(1)
    try:
        fn_edit = sys.argv[2]
    except:
        usage('you must supply an input filename')
        sys.exit(1)
    try:
        fn_out = sys.argv[3]
    except:
        usage('you must supply an output filename')
        sys.exit(1)
    out_lines = process_lines(fn_in, fn_edit, fn_out)
    sys.exit(0)
