#!/usr/bin/python
# chio.py
#  Calculate determinant using Chio's method.
# 2012-Jun-18 Jim Hefferon; PD
# For pedagogical purposes only; does not handle the M[0][0]=0 case!

def det_two(a,b,c,d):
    """Compute the determinant of the 2x2 matrix [[a,b], [c,d]]"""
    return a*d-b*c

def chio_mat(M):
    """Return the Chio matrix as a list of the rows
        M  nxn matrix as list of rows"""
    dim=len(M)
    C=[]
    for row in range(1,dim):
        C.append([])
        for col in range(1,dim):  
            C[-1].append(det_two(M[0][0], M[0][col], M[row][0], M[row][col]))
    print "Chio matrix",C
    return C

def chio_det(M,show=None):
    dim=len(M)
    key_elet=M[0][0]
    if dim==1:
        return key_elet
    return chio_det(chio_mat(M))/(key_elet**(dim-2))


if __name__=='__main__':
    M=[[2,1,1], [3,4,-1], [1,5,1]]
    M=[[2,1,4,0], [0,1,4,0], [1,1,1,1], [0,2,1,1]]
    print "M=",M
    print "chio det is", chio_det(M)
