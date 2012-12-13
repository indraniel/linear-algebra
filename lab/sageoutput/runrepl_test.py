#!/usr/bin/env python
# 2012-Dec-12 JH
"""Test runrepl.py
"""
import sys, os, re, pprint, argparse
import unittest, runrepl

class difftest(unittest.TestCase):
    """Test the diff routine
    """
    # Strings to put in the files
    a = "This is a test."
    b = "This is not a test."
    c = ""
    # File names
    fn_prefix = 'runrepl_test_testfile'
    fn_cmds = fn_prefix+'.'+runrepl.CMDS_EXTENSION
    fn_cmds_new = fn_prefix+'.'+runrepl.CMDS_NEW_EXTENSION
    fn_edits = fn_prefix+'.'+runrepl.EDITS_EXTENSION
    fn_edits_new = fn_prefix+'.'+runrepl.EDITS_NEW_EXTENSION

    def setUp(self):
        self.f_cmds = open(self.fn_cmds, 'w')
        self.f_cmds_new = open(self.fn_cmds_new, 'w')
        self.f_edits = open(self.fn_edits, 'w')
        self.f_edits_new = open(self.fn_edits_new, 'w')
    def tearDown(self):
        try:  # tests exist for if this file not here
            self.f_cmds.close()
            os.remove(self.fn_cmds)
        except: 
            pass
        self.f_cmds_new.close() 
        os.remove(self.fn_cmds_new)
        try:  # tests exist for if this file not here
            self.f_edits.close()
            os.remove(self.fn_edits)
        except: 
            pass
        self.f_edits_new.close()
        os.remove(self.fn_edits_new)

    def _writeAndFlush(self,cmds,cmds_new,edits,edits_new):
        """Take in strings to write to the four files, and flushes also.
          cmds, cmds_new, edits, edits_new  strings
        """
        self.f_cmds.write(cmds)
        self.f_cmds.flush()
        self.f_cmds_new.write(cmds_new)
        self.f_cmds_new.flush()
        self.f_edits.write(edits)
        self.f_edits.flush()
        self.f_edits_new.write(edits_new)
        self.f_edits_new.flush()

    def testCmdsDiffer(self):
        """See if it returns True when the commands differ but edits do not"""
        self._writeAndFlush(self.a, self.b, self.a, self.a)
        self.failUnless(runrepl.diff(self.fn_prefix))

    def testEditsDiffer(self):
        """See if it returns True when the edits differ but cmds do not"""
        self._writeAndFlush(self.a, self.a, self.b, self.a)
        self.failUnless(runrepl.diff(self.fn_prefix))

    def testSame(self):
        """See if it returns False when no difference"""
        self._writeAndFlush(self.a, self.a, self.b, self.b)
        self.failIf(runrepl.diff(self.fn_prefix))

    def testEmptyCmdsFile(self):
        """See if it returns True when new cmds file is empty"""
        self._writeAndFlush(self.a, self.c, self.a, self.a)
        self.failUnless(runrepl.diff(self.fn_prefix))

    def testBothEmptyCmdsFile(self):
        """See if it returns False when both cmds file are empty"""
        self._writeAndFlush(self.c, self.c, self.a, self.a)
        self.failIf(runrepl.diff(self.fn_prefix))

    def testEmptyEditsFile(self):
        """See if it returns True when new cmds file is empty"""
        self._writeAndFlush(self.a, self.a, self.a, self.c)
        self.failUnless(runrepl.diff(self.fn_prefix))

    def testMissingCmdsFile(self):
        """See if it returns True when cmds file is missing"""
        self._writeAndFlush(self.a, self.a, self.a, self.a)
        self.f_cmds.close()
        os.remove(self.fn_cmds)
        self.failUnless(runrepl.diff(self.fn_prefix))

    def testMissingEditsFile(self):
        """See if it returns True when edits file is missing"""
        self._writeAndFlush(self.a, self.a, self.a, self.a)
        self.f_edits.close()
        os.remove(self.fn_edits)
        self.failUnless(runrepl.diff(self.fn_prefix))


class internal_feed_linestest(unittest.TestCase):
    """Test the _feed_lines routine
    """
    # lines to feed the repl
    lines = ['2+3', 'a=1', 'a+4']
    # File names
    fn_prefix = 'runrepl_test_testfile'
    fn_cmds = fn_prefix+'.'+runrepl.CMDS_EXTENSION
    fn_cmds_new = fn_prefix+'.'+runrepl.CMDS_NEW_EXTENSION

    def testBasic(self):
        """See if it works at all"""
        for repl in ['python', 'sage']:
            try:
                runrepl._feed_lines(self.lines,repl,'dummy_filename')
            except Exception, e:
                self.fail(str(e))

    def testContinuationPrompt(self):
        """See if the '...' prompt works at all"""
        lines = ['for i in range(9):','    print str(i)','','2+3']
        for repl in ['python', 'sage']:
            try:
                runrepl._feed_lines(lines,repl,'dummy_filename')
            except Exception, e:
                self.fail(str(e))

    # Should it raise an exception if the repl fails?  I think no, but
    # this tests if yes.
    # def testError(self):
    #     """See if it works at all"""
    #     lines = ['a']
    #     for repl in ['python', 'sage']:
    #         self.failUnlessRaises(runrepl.ReplFailure, runrepl._feed_lines, lines, repl, 'dummy_filename')

    def testError(self):
        """See if it works when the repl raises an error"""
        lines = ['a']
        for repl in ['python', 'sage']:
            try:
                runrepl._feed_lines(lines, repl, 'dummy_filename')
            except Exception, e: 
                self.fail(str(e))


class feed_linestest(unittest.TestCase):
    """Test the feed_lines routine
    """
    # lines to feed the repl
    lines = ['2+3', 'a=1', 'a+4']
    # File names
    fn_prefix = 'runrepl_test_testfile'
    fn_cmds = fn_prefix+'.'+runrepl.CMDS_EXTENSION
    fn_output = fn_prefix+'.'+runrepl.UNEDITED_OUTPUT_EXTENSION

    def setUp(self):
        self.f_cmds = open(self.fn_cmds, 'w')
        self.f_output = open(self.fn_output, 'w')
    def tearDown(self):
        try:  # tests exist for if this file not here
            self.f_cmds.close()
            os.remove(self.fn_cmds)
        except: 
            pass
        try:  # tests exist for if this file not here
            self.f_output.close()
            os.remove(self.fn_output)
        except: 
            pass

    def _writeAndFlush(self,cmds):
        """Take in string to write to cmd file and flushes also.
          cmds  string
        """
        self.f_cmds.write(cmds)
        self.f_cmds.flush()

    def testBasic(self):
        """See if it works at all"""
        for repl in ['python', 'sage']:
            self._writeAndFlush("\n".join(self.lines))
            try:
                responses = runrepl.feed_lines(self.fn_prefix,repl)
                # print "responses is", pprint.pformat(responses)
            except Exception, e:
                self.fail(str(e))

    def testBlankLines(self):
        """It should strip blank lines before processing"""
        for repl in ['python', 'sage']:
            self._writeAndFlush("\n"+("\n".join(self.lines))+"\n")
            try:
                responses = runrepl.feed_lines(self.fn_prefix,repl)
                # print "responses is", pprint.pformat(responses)
            except Exception, e:
                self.fail(str(e))
            if responses[0]=="\n":
                self.fail("expected initial blank line to be stripped")
            if responses[-1]=="\n":
                self.fail("expected final blank line to be stripped")



class internal_edit_linetest(unittest.TestCase):
    """Test the _edit_line routine
    """
    # source to edit
    source = [['0123456789'], ['abcdef'], ['kkmm']]
    # File names
    fn_prefix = 'runrepl_test_testfile'
    fn_output = fn_prefix+'.'+runrepl.UNEDITED_OUTPUT_EXTENSION

    def testBasic(self):
        """See if it works at all"""
        try:
            result = runrepl._edit_line(self.source,'d,0,1',self.fn_output)
            print "result is", pprint.pformat(result)
        except Exception, e:
            self.fail(str(e))
        try:
            result = runrepl._edit_line(self.source,'s,0,5,10',self.fn_output)
            print "result is", pprint.pformat(result)
        except Exception, e:
            self.fail(str(e))

    def testDeleting(self):
        """See if it deletes correctly"""
        result = runrepl._edit_line(self.source,'d,0,1',self.fn_output)
        self.failUnlessEqual(result,[None]+self.source[1:])
        result = runrepl._edit_line(self.source,'d,0,2',self.fn_output)
        self.failUnlessEqual(result,[None,None]+self.source[2:])
        self.failUnlessRaises(runrepl.RunreplError,runrepl._edit_line,self.source,'d,5,6',self.fn_output)

    def testSplitting(self):
        """See if it splits lines correctly"""
        # Each line is a single string
        result = runrepl._edit_line(self.source,'s,0,5,10',self.fn_output)
        self.failUnlessEqual(result[1:],self.source[1:])
        self.failUnlessEqual(result[0][0],self.source[0][0][:5])
        self.failUnlessEqual(result[0][1]," "*10+self.source[0][0][5:])
        # A line has multiple strings, so it has been split already
        src = self.source[:]
        src[0] = src[0]+['xyz']
        result = runrepl._edit_line(src,'s,0,5,10',self.fn_output)
        # print "result is ",pprint.pformat(result)
        self.failUnlessEqual(result[1:],src[1:])
        self.failUnlessEqual(result[0][0],src[0][0][:5])
        self.failUnlessEqual(result[0][1]," "*10+src[0][0][5:])
        self.failUnlessEqual(result[0][2],"xyz")
        # Each line is a single string, split not 0th line
        result = runrepl._edit_line(self.source,'s,1,5,10',self.fn_output)
        print "result is ",pprint.pformat(result)
        self.failUnlessEqual(result[0],self.source[0])
        self.failUnlessEqual(result[2:],self.source[2:])
        self.failUnlessEqual(result[1][0],self.source[1][0][:5])
        self.failUnlessEqual(result[1][1]," "*10+self.source[1][0][5:])
        # Fail if splitting index out of bounds
        self.failUnlessRaises(runrepl.RunreplError,runrepl._edit_line,self.source,'s,5,10,15',self.fn_output)



if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(internal_edit_linetest)
    unittest.TextTestRunner(verbosity=2).run(suite)
    # unittest.main()
