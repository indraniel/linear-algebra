# one_1.sage
# Calculations for Chapter One section 1 slides for Linear Algebra, Hefferon

load "gauss_method.sage"

M = matrix(QQ,[[1/4,1,-1,0], [1,4,2,12], [2,-3,-1,3]])
gauss_method(M,rescale_leading_entry=True)
print M.echelon_form()

print "==== Systems without a unique solution ===="
print ".. no solution .."
M = matrix(QQ,[[1,1,1,6], [1,2,1,8], [2,3,2,13]])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()

print ".. inf many solutions .."
M = matrix(QQ,[[1,-1,1,4], [1,1,-2,-1]])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z')
eqn = [x-y+z==4, x+y-2*z==-1]
s = solve(eqn, x,y,z); 
print s

print ".. inf many solutions (second) .."
M = matrix(QQ,[[-1,-1,3,3], [1,0,1,3], [3,-1,7,15]])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z')
eqn = [-x-y+3*z==3, x+z==3, 3*x-y+7*z==15]
s = solve(eqn, x,y,z); 
print s

