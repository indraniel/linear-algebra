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

