# Checks for spaces.tex


print "\n\n---- Real n-spaces ----"

V = RR^3
print "real three space\n", V
v1 = vector(RR, [1, 2, 3])
print "v1 in V?", v1 in V 
v2 = vector(RR, [1, 2, 3, 4])
print "v2 in V?", v2 in V

V = RR^3
v1 = vector(RR, [2, 1, 0])
print "v1=\n",v1
v2 = vector(RR, [-2, 0, 1])
print "v2=\n",v2
W = V.span([v1, v2])
print "planar subspace of R^3 spanned by v1 and v2\n",W
v3 = vector(RR, [0, 1, 1])
print "v3 in W?",v3 in W
print "v3=\n",v3
v4 = vector(RR, [1, 0, 0])
print "v4=\n",v4
print "v4 in W?",v4 in W

print "\n  Subspace of Re^4"
V = RR^4
print "Re^4\n",V
v1 = vector(RR, [2, 0, -1, 0])
W = V.span([v1])
print "W = V.span([v1])\n", W
v2 = vector(RR, [2, 1, -1, 0])
print "v2 in W?", v2 in W
v3 = vector(RR, [-4, 0, 2, 0])
print "v3 in W?", v3 in W


print "\n\n  Basis"
V=RR^2
print "R^2"
v=vector(RR, [1, -1])
print "v1=",v1
W = V.span([v])
print "W=\n",W     
print "basis for W=\n",W.basis()

V=RR^3  
print "R^3"             
v1 = vector(RR, [1, -1, 0]) 
print "v1=",v1
v2 = vector(RR, [1, 1, 0]) 
print "v2=",v2
W = V.span([v1, v2])
print "W=\n",W       
print "W.basis()=\n",W.basis()

v3 = vector(RR, [2, 3, 0])
print "v3=",v3
W_prime = V.span([v1, v2, v3])
print "W_prime=\n",W_prime
print "W_prime.basis()=\n",W_prime.basis()
[
(1.00000000000000, 0.000000000000000, 0.000000000000000),
(0.000000000000000, 1.00000000000000, 0.000000000000000)
]  

print "\n\n  Space equality"
print "\n  Subspace of Re^4"
V = RR^4
print "Re^2\n",V
v1 = vector(RR, [1, 0, 0, 0])
v2 = vector(RR, [1, 1, 0, 0])
W12 = V.span([v1, v2])
print "W12 = V.span([v1, v2])\n", W12
v3 = vector(RR, [2, 1, 0, 0])
W13 = V.span([v1, v3])
print "v3 in W12?", v3 in W12
print "v2 in W13?", v2 in W13

v4 = vector(RR, [1, 1, 1, 1])
print "v4=",v4
W14 = V.span([v1, v4])
print "W14=\n",W14
print "v2 in W14?",v2 in W14
print "v3 in W14?",v3 in W14                                 
print "v4 in W12?",v4 in W12
print "v4 in W13?",v4 in W13
print "W12==W14?",W12 == W14
print "W13==W14?",W13 == W14


print "\n\n---- Other spaces ----"

V=RR^3
print "Real three space"
v1 = vector(RR, [1, 1, 0])
print "v1=",v1
v2 = vector(RR, [1, 0, 1])
print "v2=",v2
W = V.span([v1, v2])
print "W=\n",W
print "W.basis()=\n",W.basis()

V = RR^4
print "Real four space"
v1 = vector(RR, [-1, 0, 1, 0])
print "v1=",v1
v2 = vector(RR, [-1, -1, 0, 1])
print "v2=",v2
W = V.span([v1, v2])
print "W=\n",W
print "W.basis()=\n",W.basis()

