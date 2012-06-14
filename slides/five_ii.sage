# five_ii.sage
# Calculations for Chapter Five section II slides for Linear Algebra, Hefferon

load "gauss_method.sage"

print "==== similarity ===="
T=matrix(QQ, [[0,1,0], [0,0,2], [0,0,0]])
P=matrix(QQ, [[1,-1,0], [0,1,-1], [0,0,1]])
Pinv=P.inverse()
print "The inverse of P=\n",P," is\n",Pinv
print "T=\n",T
print "PTP^{-1}=\n",P*T*Pinv

print " "
S=matrix(QQ, [[0,-1,-2], [2,3,2], [4,5,2]])
P=matrix(QQ, [[1,1,0], [-1,1,0], [0,0,3]])
Pinv=P.inverse()
print "The inverse of P=\n",P," is\n",Pinv
print "S=\n",S
print "PSP^{-1}=\n",P*S*Pinv

print "==== diagonalizability ===="
S=matrix(QQ, [[4,0,0], [0,8,0], [0,0,12]])
P=matrix(QQ, [[1,-1,0], [0,1,-1], [2,1,1]])
Pinv=P.inverse()
print "The inverse of P=\n",P," is\n",Pinv
print "S=\n",S
print "PSP^{-1}=\n",P*S*Pinv

print ""
S=matrix(QQ, [[6,-1,-1], [2,11,-1], [-6,-5,7]])
P=matrix(QQ, [[1/2,1/4,1/4], [-1/2,1/4,1/4], [-1/2,-3/4,1/4]])
Pinv=P.inverse()
print "The inverse of P=\n",P," is\n",Pinv
print "S=\n",S
print "PSP^{-1}=\n",P*S*Pinv
