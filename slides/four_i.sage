# four_i.sage
# Calculations for Chapter Four section I slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== determinants ===="
A=matrix(QQ, [[1,3,-2], [2,0,4], [3,-1,5]])
print "The determinant of  A=\n",A," is\n",A.det()
print "gauss's method"
gauss_method(A)

print " "
A=matrix(QQ, [[0,3,1], [1,2,0], [1,5,2]])
print "The determinant of  A=\n",A," is\n",A.det()
print "gauss's method"
gauss_method(A)

print " "
A=matrix(QQ, [[3,-3,9], [1,-1,7], [2,4,0]])
print "The determinant of  A=\n",A," is\n",A.det()
print "The determinant of  2*A=\n",2*A," is\n",(2*A).det()

print " "
A=matrix(QQ, [[1,-1,3], [1,-1,7], [1,2,0]])
print "The determinant of  A=\n",A," is\n",A.det()
