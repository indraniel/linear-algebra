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
var('r1,r2,a,b')
eqn = [r1+r2==a, -r1+r2==b]
s = solve(eqn, r1,r2); 
print s

print ".. third .."
var('r1,r2,r3,a,b,c')
eqn = [r1+r2+2*r3==a, -r1+r2==b, r3==c]
s = solve(eqn, r1,r2,r3); 
print s

print ".. fourth .."
M = matrix(QQ,[[2,3,1,0,0], [2,3,4,-1,0]])
gauss_method(M)
