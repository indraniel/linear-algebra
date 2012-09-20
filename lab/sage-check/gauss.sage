# Checks for gauss.tex


print "\n\n---- Row operations ----"
M = matrix(QQ,[[0, 2, 1], [2, 0, 4], [2 ,-1/2, 3]])
v = vector(QQ, [2, 1, -1/2])
M_prime = M.augment(v, subdivide=True) 
print "initial matrix\n", M_prime

M_prime.swap_rows(0,1)
print "after row swap\n", M_prime

M_prime.rescale_row(0, 1/2)
print "after rescale\n", M_prime

M_prime.add_multiple_of_row(2,0,-2)
print "after added multiple of row\n", M_prime

M_prime.add_multiple_of_row(2,1,1/4)
print "expect echelon form now\n", M_prime

# Check solution.
var('x,y,z')
eqns=[-3/4*z == -1, 2*y+z == 2, x+2*z == 1/2]
print "solution using solve\n", solve(eqns, x, y, z)
print "solution using rref\n",M_prime.rref()

# with_ commands
M = matrix(QQ,[[1/2, 1, -1], [1, -2, 0], [2 ,-1, 1]])
v = vector(QQ, [0, 1, -2])
M_prime = M.augment(v, subdivide=True) 
print "Starting M_prime=\n", M_prime


print "\n\n---- Nonsingular and singular ----"
M = matrix(QQ,[[1, 1, 1], [1, 2, 3], [2 , 3, 4]])    
v = vector(QQ, [0, 1, 1]) 
M_prime = M.augment(v, subdivide=True)
print "M_prime=\n", M_prime
print "M_prime.rref()=\n", M_prime.rref()

def check_nonsingular(mat):
    if not(mat.is_square()):
        print "ERROR: mat must be square"
        return
    p = mat.pivots()
    for col in range(mat.ncols()):
        if not(col in p):
            return False
    return True
N = Matrix(QQ, [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print "check nonsingular N=\n",N
print "is it?",check_nonsingular(N)
N = Matrix(QQ, [[1, 0, 0], [0, 1, 0], [0, 0, 1]])
print "check nonsingular N=\n",N
print "is it?",check_nonsingular(N)


print "\n\n---- Infinitely many solutions ----"
M = matrix(QQ,[[1, 1, 1], [1, 2, 3], [2 , 3, 4]])    
v = vector(QQ, [1, 0, 1])                            
M_prime = M.augment(v, subdivide=True)               
print "M_prime is\n",M_prime
eqns = [x+y+z == 1, x+2*y+3*z == 0, 2*x+3*y+4*z == 1]
print "eqns=\n",eqns
s=solve(eqns, x, y)   
print "solution solving only for x and y\n",s
s=solve(eqns, x, y, z)                                 
print "solution with dummy parameter\n",s



print "\n\n---- Script for doing Gauss's Method ----"
load "gauss_method.sage"
M = matrix(QQ, [[1/2, 1, 4], [2, 4, -1], [1, 2, 0]])          
v = vector(QQ, [-2, 5, 4])
M_prime = M.augment(v, subdivide=True)
print "M_prime=\n",M_prime 
print "Run gauss's method on it .." 
gauss_method(M_prime)

M1 = matrix(QQ, [[2, 0, 1, 3], [-1, 1/2, 3, 1], [0, 1, 7, 5]])
print "M1=\n",M1
print "Run gauss's method on it .." 
gauss_method(M1)
M2 = matrix(QQ,[[1, 2, 3, 4], [1, 2, 3, 4], [2, 4, -1, 5], [1, 2, 0, 4]])
print "M2=\n",M2
print "Run gauss-jordan on it .." 
gauss_jordan(M2)
