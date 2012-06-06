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