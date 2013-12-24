# Exercise 2
M = matrix(RDF, [[0.90,0.01], [0.10,0.99]])
v = vector(RDF, [10000, 100000])
for y in range(10):
    v[1] = v[1]*(1+.01)^y
    print "pop vector year",y," is",v
    v = M*v

# Exercise 3
a,b,c = var('a,b,c')
qe = (x^2 - 1.94*x -.9404 == 0)
print solve(qe, x)

# Exercise 4
var('c,u,m')
eqns = [ .05*c-.06*u  == 0,
        -.04*c+.10*u-.10*m == 0,
        -.01*c-.04*u+.10*m == 0 ]
solve(eqns, c,u,m)