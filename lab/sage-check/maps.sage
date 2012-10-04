# Checks for maps.tex


print "\n\n---- Defining ----"

print "  symbolically"
a, b = var('a, b')
T_symbolic(a, b) = [a+b, a-b, b] 
print "T_symbolic is\n",T_symbolic

T = linear_transformation(RR^2, RR^3, T_symbolic)
print "instance of linear transformation is\n",T  

print "T.matrix(side='right')\n",T.matrix(side='right')                              

v = vector(RR, [1, 3])  
print "v=",v
print "T(v)=\n",T(v)

print "T.kernel()\n",T.kernel()
print "T.image()\n",T.image()

print "define a not-one-to-one map"
S_symbolic(a, b) = [a+2*b, a+2*b]
print "S_symbolic is\n", S_symbolic
S = linear_transformation(RR^2, RR^2, S_symbolic)               
print "S=\n",S
print "v=",v
print "S(v)=",S(v)
print "S.kernel()=\n", S.kernel()
print "S.image()=\n", S.image()

print "  via matrices"
A = matrix(RR, [[1, 2], [3, 4]])
print "A=\n",A
F = linear_transformation(RR^2, RR^2, A, side='right')
print "F=\n",F
v = vector(RR, [1, -1])
print "v=",v
print "F(v)=\n",F(v)
print "F.kernel()\n",F.kernel()
print "F.image()\n",F.image()
print "is F.image() == RR^2?",F.image() == RR^2
