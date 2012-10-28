#!/usr/bin/env python
# runsagelines.py
#  Takes in a file of lines for Sage, the math software, and runs them,
# collecting the output.
#
# 2012-Oct-28 Jim Hefferon jhefferon@smcvt.edu written

import sys, os, re, pprint
import pexpect

DEBUG = False

def usage(s):
    if s:
        print "ERROR: ",s
    print "Usage:"
    print "  Run lines from a file as a Sage session and collect the results"
    print "   ",sys.argv[0]+" "+"<input file with Sage lines>"+"<output file>"


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

SAGE_PROMPT = 'sage: '
def feed_lines(lines):
    r = []  # the responses
    child = pexpect.spawn('sage')
    child.expect(SAGE_PROMPT)
    for line in lines:
        line = line.rstrip("\n")
        if DEBUG:
            print "line is",line
        if child.after:
            r.append(child.after.rstrip("\n"))
        child.sendline(line)
        child.expect(SAGE_PROMPT)
        if DEBUG:
            print "child.before is ", child.before
            print "child.after is ", child.after
        r.append(child.before)
    child.sendline('exit')
    r[-1] = r[-1].rstrip("\n")  
    return r

def process_lines(fn_in,fn_out):
    """Read the lines from the input file and feed them to a Sage session.
    Collect the outputs. 
    """
    # Get the lines
    f_in = _open_input(fn_in)
    sage_lines = f_in.readlines()
    f_in.close()
    # Get the lines
    response_lines = feed_lines(sage_lines)
    if DEBUG:
        print "response lines is \n",("".join(response_lines))
    # Put them in the output
    f_out = _open_output(fn_out)
    f_out.write("".join(response_lines))
    f_out.close()
    return response_lines

if __name__ == '__main__':
    try:
        fn_in = sys.argv[1]
    except:
        usage('you must supply an input filename')
        sys.exit(1)
    try:
        fn_out = sys.argv[2]
    except:
        usage('you must supply an output filename')
        sys.exit(1)
    out_lines = process_lines(fn_in,fn_out)
    sys.exit(0)
