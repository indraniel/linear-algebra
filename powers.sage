def eigen(M,v,num_loops=10):
    for p in range(num_loops):
        v_normalized = (1/v.norm())*v
        v = M*v
    return v    

# Exercise 1a
M = matrix(RDF, [[1,5], [0,4]])
v = vector(RDF, [1, 2])
v = eigen(M,v)
(M*v).dot_product(v)/v.dot_product(v)

# Exercise 1b
M = matrix(RDF, [[3,2], [-1,0]])
v = vector(RDF, [1, 2])
v = eigen(M,v)
(M*v).dot_product(v)/v.dot_product(v)



# Exercise 2a
M = matrix(RDF, [[1,5], [0,4]])
v = vector(RDF, [1, 2])
def eigen_by_iter(M, v, toler=0.01):
    dex = 0
    diff = 10
    while abs(diff)>toler:
        dex = dex+1
        if dex>1000:
            print "oops! probably in some loop: v=",v,"v_next=",v_next
        v_next = M*v
        if (v.norm()==0):
            print "oops! v is zero"
	    return None
        if (v_next.norm()==0):
            print "oops! v_next is zero"
            return None
        v_normalized = (1/v.norm())*v
        v_next_normalized = (1/v_next.norm())*v_next
        diff = (v_next_normalized-v_normalized).norm()
        v_prior = v_normalized
        v = v_next_normalized
    return v, v_prior, dex
v,v_prior,dex = eigen_by_iter(M,v,0.000001)
(M*v).norm()/v.norm()
dex

# Exercise 2b
M = matrix(RDF, [[3,2], [-1,0]])
v = vector(RDF, [1, 2])
v,v_prior,dex = eigen_by_iter(M,v,0.000001)
(M*v).norm()/v.norm()
dex

# Exercise 3a
M = matrix(RDF, [[4,0,1], [-2,1,0], [-2,0,1]])
v = vector(RDF, [1, 2, 3])
v = eigen(M,v)
(M*v).dot_product(v)/v.dot_product(v)

# Exercise 3b
M = matrix(RDF, [[-1,2,2], [2,2,2], [-3,-6,-6]])
v = vector(RDF, [1, 2, 3])
v = eigen(M,v)
(M*v).dot_product(v)/v.dot_product(v)


# Exercise 4a
M = matrix(RDF, [[4,0,1], [-2,1,0], [-2,0,1]])
v = vector(RDF, [1, 2, 3])
v,v_prior,dex = eigen_by_iter(M,v)  
(M*v).dot_product(v)/v.dot_product(v)
dex

# Exercise 4b
M = matrix(RDF, [[-1,2,2], [2,2,2], [-3,-6,-6]])
v = vector(RDF, [1, 2, 3])
# v,v_prior,dex = eigen_by_iter(M,v)  
(M*v).dot_product(v)/v.dot_product(v)
dex
