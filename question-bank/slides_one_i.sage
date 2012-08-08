# slides_one_i.sage
# Calculations for quizzes for 
#  Chapter One section 1 slides for Linear Algebra, Hefferon

load "../slides/gauss_method.sage"

print "==== Gauss's method ===="
print ".. One variable of solution of simple linear system .."
var('x,y')
eqn = [x+y==1, x-y==0]
s = solve(eqn, x,y); 
print s

print ".. One value of solution of linear system .."
var('x,y,z')
eqn = [x-y+2*z==1, 2*x-y+z==1, x+3*z==4]
s = solve(eqn, x,y,z); 
print s

print ".. Does this system have a unique solution? .."
var('x,y,z')
eqn = [x+y+z==0, 2*x+y-2*z==2, x+2*y+5*z==-1]
s = solve(eqn, x,y,z); 
print s


print "==== Describing the solution set ===="

print ".. Parametrize solution set three unknowns .."
M = matrix(QQ,[[1,1,2,4], [1,2,-1,2]])
gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()
var('x,y,z,w')
eqn = [x+y+2*z==4, x+2*y-z==2]
s = solve(eqn, x,y); 
print s
 
print ".. Parametrize solution set four unknowns .."
M = matrix(QQ,[[1,1,0,0,1], [2,-1,0,2,0]])
gauss_method(M,rescale_leading_entry=False)
var('x,y,z,w')
eqn = [x+y+w==1, 2*x-y+2*z==0]
s = solve(eqn, x,y); 
print s
 

# M = matrix(QQ,[[1,-1,1,4], [1,1,-2,-1]])
# gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()



# print ".. first .."
# M = matrix(QQ,[[1/4,1,-1,0], [1,4,2,12], [2,-3,-1,3]])
# gauss_method(M,rescale_leading_entry=True)
# print M.echelon_form()

# print ".. second .."
# M = matrix(QQ,[[2,-3,-1,2,-2], [1,0,3,1,6], [2,-3,-1,3,-3], [0,1,1,-2,4]])
# gauss_method(M,rescale_leading_entry=False)
# print M.echelon_form()

