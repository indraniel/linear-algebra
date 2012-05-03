# two_iii.sage
# Calculations for Chapter Two section III slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== basis examples ===="
print ".. first .."
var('c1,c2,x,y')
eqn = [c1+c2==x, -c1+c2==y]
s = solve(eqn, c1,c2); 
print s
