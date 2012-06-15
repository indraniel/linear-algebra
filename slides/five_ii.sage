# five_ii.sage
# Calculations for Chapter Five section II slides for Linear Algebra, Hefferon

load "gauss_method.sage"
load "coordinates_wrt.sage"

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


print "==== eigenvectors and eigenvalues ===="
b1=vector([1/2,-1/2,-1/2])
b2=vector([1/4,1/4,-3/4])
b3=vector([1/4,1/4,1/4])
print "basis is \n",[b1,b2,b3]
v1=vector([100,0,0])
rep_v1=coordinates_wrt(v1,[b1,b2,b3])
S=matrix(QQ,[[6,-1,-1], [2,11,-1], [-6,-5,7]])
print "the product of S=\n",S,"and the representative of v1 is\n",S*rep_v1


print ""
S=matrix(QQ,[[0,5,7], [-2,7,7], [-1,1,4]])
print "the eigenvalues of S=\n",S,"are",S.eigenvalues()
print "the characteristic polynomial of S is",S.charpoly()
print "factored that gives",S.charpoly().factor()
S5=matrix(QQ,[[-5,5,7], [-2,2,7], [-1,1,-1]])
print "solving for the eigenspace associated with x=5 .."
gauss_method(S5)
S4=matrix(QQ,[[-4,5,7], [-2,3,7], [-1,1,0]])
print "solving for the eigenspace associated with x=4 .."
gauss_method(S4)
S2=matrix(QQ,[[-2,5,7], [-2,5,7], [-1,1,2]])
print "solving for the eigenspace associated with x=2 .."
gauss_method(S2)




print ""
S=matrix(QQ,[[2,1,0], [0,3,1], [0,0,2]])
print "the eigenvalues of S=\n",S,"are",S.eigenvalues()
print "the characteristic polynomial of S is",S.charpoly()
print "factored that gives",S.charpoly().factor()
S3=matrix(QQ,[[-1,1,0], [0,0,1], [0,0,-1]])
print "solving for the eigenspace associated with x=3 .."
gauss_method(S3)
S2=matrix(QQ,[[0,1,0], [0,1,1], [0,0,0]])
print "solving for the eigenspace associated with x=2 .."
gauss_method(S2)
