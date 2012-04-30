# two_ii.sage
# Calculations for Chapter Two section II slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== LI examples ===="
print ".. first .."
M = matrix(QQ,[[1,-1,1,0], [1,1,3,0], [3,0,6,0]])
gauss_method(M)
# print M.echelon_form()
var('c1,c2,c3')
eqn = [c1-c2+c3==0, c1+c2+3*c3==0, 3*c1+6*c3==0]
s = solve(eqn, c1,c2,c3); 
print s
# gauss_jordan(M1)

print ".. second .."
var('c1,c2,a,b')
eqn = [c1-c2==a, -c1+c2==b]
s = solve(eqn, [b,a]); 
print s
