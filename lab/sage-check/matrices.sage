# Checks for matrices.tex


print "\n\n---- Defining ----"
A = matrix(RR, [[1, 2], [3, 4]])
print "2x2 matrix with real entries", A
i = CC(i)
A = matrix(CC, [[1+2*i, 3+4*i], [5+6*i, 7+8*i]])
print "2x2 matrix with complex entries\n",A
A = matrix(QQ, [[1, 2], [3, 4]])
print "2x2 matrix with rational entries", A
B = matrix(QQ, 2, 3, [[1, 1, 1], [2, 2, 2]])  
print "matrix of specified size B=\n",B
B = matrix(QQ, 2, 3, 0)                     
print "2x3 zero matrix B=\n",B
print "4x4 identity matrix",identity_matrix(4)
print "the transpose",A.transpose()
print "is it symmetric?",A.is_symmetric()



print "\n\n---- Linear combinations ----"

B = matrix(QQ, [[1, 1], [2, -2]])
print "B=\n",B
print "A+B\n", A+B
print "A-B\n", A-B
print "B-A\n", B-A
C = matrix(QQ, [[0, 0, 2], [3, 2, 1]])
print "3*A\n", 3*A
print "3*A-4\n", 3*A-4*B



print "\n\n---- Multiplication ----"

print "  matrix-vector product"
A = matrix(QQ, [[1, 3, 5, 9], [0, 2, 4, 6]])
print "A=\n",A
v = vector(QQ, [1, 2, 3, 4])
print "v=",v
print "the product A*v is\n",A*v
w = vector(QQ, [3, 5])
print "w=",w
print "multipication on the other side works: w*B=",w*B

print "  matrix-matrix product"
A = matrix(QQ, [[2, 1], [4, 3]])
print "A=\n",A
B = matrix(QQ, [[5, 6, 7], [8, 9, 10]]) 
print "B=\n",B
print "A*B=\n",A*B

A = matrix(QQ, [[1, 2], [3, 4]])
print "same-sized A=\n",A
B = matrix(QQ, [[4, 5], [6, 7]])
print "B=\n",B
print "A*B=\n",A*B
print "B*A=\n",B*A



print "  matrix inverse"
A = matrix(QQ, [[1, 3, 1], [2, 1, 0], [4, -1, 0]])
print "A=\n",A
print "singular?",A.is_singular()
I = identity_matrix(3)
print "3x3 identity matrix\n", I
B = A.augment(I, subdivide=True)
print "A augmented\n",B
C = B.rref()
print "after Gauss-jordan reduction\n",C
A_inv = C.matrix_from_columns([3, 4, 5])
print "resulting inverse\n",A_inv
print "shortcut is to ask for inverse\n",A.inverse()

print "  run time"
d = [(3, 0.000125) , 
     (10, 0.000940), 
     (25, 0.012),
     (50, 0.0924), 
     (75, 0.308), 
     (100, 0.727), 
     (150, 2.45), 
     (200, 5.78) ]
g1 = scatter_plot(d, markersize=10, facecolor='#b9b9ff')
g1.save("../inverse_initial.png", figsize=[2.25,1.5], axes_pad=0.05, fontsize=7, dpi=500)
d = d + [(500, 89.2), (750 ,299), (1000, 705) ]
g2 = scatter_plot(d, markersize=10, facecolor='#b9b9ff')
g2.save("../inverse_full.png", figsize=[5,3.25], axes_pad=0.05, fontsize=7, dpi=500)
