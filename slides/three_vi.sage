# three_vi.sage
# Calculations for Chapter Three section VI slides for Linear Algebra, Hefferon

# load "gauss_method.sage"

def ortho_projection_into_line(v,s):
    c=v.dot_product(s)/s.dot_product(s)
    return c*s

print "==== orthogonal projection ===="
v=vector([1,-2,1])
s=vector([2,1,1])
print "projection of v=",v,"into line spanned by s=",s,"is\n",ortho_projection_into_line(v,s)
print "norm of v=",v.norm(),"while that of the projection is",ortho_projection_into_line(v,s).norm()
print "In reals that's norm of v=",v.norm().n(),"while that of the projection is",ortho_projection_into_line(v,s).norm().n()

print "========= gram-schmidt ==========="
b1=vector([1,1,2])
b2=vector([-1,2,1])
b3=vector([0,3,-1])
k1=b1
print "kappa1 is ",k1
k2=b2-ortho_projection_into_line(b2,k1)
print "kappa2 is ",k2
k3=b3-ortho_projection_into_line(b3,k1)-ortho_projection_into_line(b3,k2)
print "kappa3 is ",k3
print "\ncheck:"
A=matrix(QQ, [[1,1,2], [-1,2,1], [0,3,-1]])
print "the gram-schmidt of A=\n",A," is\n",A.gram_schmidt()