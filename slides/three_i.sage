# two_iii.sage
# Calculations for Chapter Two section III slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== basis examples ===="
print ".. first .."
var('c1,c2,x,y')
eqn = [c1+c2==x, -c1+c2==y]
s = solve(eqn, c1,c2); 
print s

print ".. second .."
var('c1,c2,a,b')
eqn = [c1+c2==a, c1-c2==b]
s = solve(eqn, c1,c2); 
print s

print ".. third .."
M = matrix(QQ,[[1,-1,1,0,0], [-1,2,-1,2,0], [-1,3,-1,4,0]])
gauss_method(M)
var('x,y,z,w')
eqn = [x-y+z==0, -x+2*y-z+2*w==0, -x+3*y-z+4*w==0]
s = solve(eqn, x,y); 
print s


print "==== vector spaces and linear systems ===="

print ".. Gauss's method produces a basis for the rowspace .."
M = matrix(QQ,[[1,2,1,0,3], [-1,-2,2,2,0], [2,4,5,2,9]])
gauss_method(M)
# var('x,y,z,w')
# eqn = [x-y+z==0, -x+2*y-z+2*w==0, -x+3*y-z+4*w==0]
# s = solve(eqn, x,y); 
# print s

print ".. Find a basis for the column space .."
M = matrix(QQ,[[2,-1], [3,1/2]])
gauss_method(M)

print ".. Find column rank .."
M = matrix(QQ,[[2,-1,3,1,0,1], [3,0,1,1,4,-1], [4,-2,6,2,0,2], [1,0,3,0,0,2]])
gauss_method(M)
