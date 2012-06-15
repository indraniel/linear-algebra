# code coordinates_wrt.sage
# Find the coordinates of a vector with respect to a basis.  Pedagogical. 
# For _Linear Algebra_ http://joshua.smcvt.edu/linearalgebra .
# 2012-Jun-15  Jim Hefferon jhefferon @s mcvt. edu  Written.  Public Domain. 

def coordinates_wrt(v,basis_sequence):
    """Print the coordinates of the vector v wrt the basis basis_sequence
    Returns those coordinates.
    """
    A=matrix(QQ, basis_sequence).transpose(); # Sage takes the vectors as rows by default
    c=A.solve_right(v)
    print "coordinates of ",v,"wrt basis is",c
    return c

    