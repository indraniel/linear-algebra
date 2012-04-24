# one_iii.sage
# Calculations for Chapter One section III slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== Gauss-Jordan examples ===="
print ".. first .."
M = matrix(QQ,[[1,1,-1,2], [2,-1,0,-1], [1,-2,2,-1]])
gauss_jordan(M)
# print M.echelon_form()

print ".. second .."
M = matrix(QQ,[[1,-1,0,-2,2], [1,1,3,1,1], [0,-1,1,-1,0]])
gauss_jordan(M)
var('x,y,z,w')
eqn = [x-y-2*w==2, x+y+3*z+w==1, -1*y+z-w==0]
s = solve(eqn, x,y,z); 
print s


print "==== Linear Combinations ===="
print ".. first .."
M = matrix(QQ,[[1,3,5], [2,4,8]])
gauss_jordan(M)
# print M.echelon_form()

# print ".. first .."
# M = matrix(QQ,[[2,1,0], [1,3,5]])
# gauss_jordan(M)
# # print M.echelon_form()

print ".. echelon form has no linear combinations .."
M = matrix(QQ,[[1,-1,3], [2,0,4], [3,-1,7]])
gauss_jordan(M)

print ".. two matrices row equivalent? .."
M1 = matrix(QQ,[[3,2,0], [1,-1,2], [4,1,2]])
gauss_jordan(M1)
print "  ?? equal to ??"
M1 = matrix(QQ,[[3,1,-2], [6,2,-4], [1,0,2]])
gauss_jordan(M1)
