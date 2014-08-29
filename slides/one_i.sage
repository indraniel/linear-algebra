# one_1.sage
# Calculations for Chapter One section 1 slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== Systems without a unique solution ===="
print ".. first .."
M = matrix(QQ,[[1/4,1,-1,0], [1,4,2,12], [2,-3,-1,3]])
gauss_method(M,rescale_leading_entry=True)
print M.echelon_form()

print ".. second .."
M = matrix(QQ,[[2,-3,-1,2,-2], [1,0,3,1,6], [2,-3,-1,3,-3], [0,1,1,-2,4]])
gauss_method(M,rescale_leading_entry=False)
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


print "==== Parametrizing ===="
print ".. three eqns, four vars, parametrized .."
M = matrix(QQ,[[2,0,1,-1,5], [0,-1,1,4,6], ])
# gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z,w')
eqn = [2*x+z-1*w==5, -1*y+z+4*w==6]
s = solve(eqn, x,y,z,w); 
print s

print ".. three eqns, four vars, parametrized .."
M = matrix(QQ,[[1,-1,2,3,14], [2,-2,-1,2,6], [0,0,-3,2,0] ])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z,w')
eqn = [x-y+2*z+3*w==14, 2*x-2*y-z+2*w==6, -3*z+2*w==0]
s = solve(eqn, x,y,z,w); 
print s

print ".. inf many solutions (second), parametrized .."
M = matrix(QQ,[[-1,-1,3,3], [1,0,1,3], [3,-1,7,15]])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z')
eqn = [-x-y+3*z==3, x+z==3, 3*x-y+7*z==15]
s = solve(eqn, x,y,z); 
print s

print ".. two eqs, four vars, already echelon form .."
var('x,y,z,w')
eqn = [-2*x+y-z+w==3/2, 2*z-w==1/2]
s = solve(eqn, [x,z]); 
print s

print ".. first augmented matrix example .."
M = matrix(QQ,[[-3,0,2,-1], [1,-2,2,-5/3], [-1,-4,6,-13/3] ])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z')
eqn = [-3*x+2*z==-1, x-2*y+2*z==-5/3, -x-4*y+6*z==-13/3]
s = solve(eqn, x,y); 
print s

print ".. second augmented matrix example .."
M = matrix(QQ,[[1,2,-1,0,2], [2,-1,-2,1,5], ])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z,w')
eqn = [x+2*y-z==2, 2*x-y-2*z+w==5]
s = solve(eqn, x,y); 
print s

