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
