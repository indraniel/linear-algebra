# slides_one_i.sage
# Calculations for quizzes for 
#  Chapter One section 3 slides for Linear Algebra, Hefferon

load "../slides/gauss_method.sage"

print "==== Gauss-Jordan reduction ===="
print ".. what is the 1,3 entry when this matrix is in reduced echelon form .."
M = matrix(QQ,[[1,1,1,4], [2,2,-1,4]])
gauss_jordan(M)

print ".. What is the 2,3 entry in the reduced echelon form of this matrix? .."
M = matrix(QQ,[[1,2,0,1], [3,0,1,1], [2,2,1,0]])
gauss_jordan(M)

print ".. These matrices are row-equivalent .."
M = matrix(QQ,[[2,1,-1], [4,0,2], [6,3,-3]])
gauss_jordan(M)
print " for N --> "
N = matrix(QQ,[[2,2,0], [8,4,4], [2,2,1]])
gauss_jordan(N)

print ".. Find the echelon form of this matrix. .."
M = matrix(QQ,[[1,0,3,1], [3,0,1,2], [6,2,-3,0]])
gauss_jordan(M)


# print "==== Describing the solution set ===="

# print ".. Parametrize solution set three unknowns .."
# M = matrix(QQ,[[1,1,2,4], [1,2,-1,2]])
# gauss_method(M,rescale_leading_entry=False)
# # print M.echelon_form()
# var('x,y,z,w')
# eqn = [x+y+2*z==4, x+2*y-z==2]
# s = solve(eqn, x,y); 
# print s
 
# print ".. Parametrize solution set four unknowns .."
# M = matrix(QQ,[[1,1,0,0,1], [2,-1,0,2,0]])
# gauss_method(M,rescale_leading_entry=False)
# var('x,y,z,w')
# eqn = [x+y+w==1, 2*x-y+2*z==0]
# s = solve(eqn, x,y); 
# print s

