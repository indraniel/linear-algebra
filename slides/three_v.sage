# three_v.sage
# Calculations for Chapter Three section V slides for Linear Algebra, Hefferon

# load "gauss_method.sage"

def coordinates_wrt(v,basis_sequence):
    """Print the coordinates of the vector v wrt the basis basis_sequence
    """
    A=matrix(QQ, basis_sequence).transpose(); # Sage takes the vectors as rows by default
    c=A.solve_right(v)
    print "coordinates of ",v,"wrt basis is",c
    return c

print "==== find coordinates wrt basis ===="
e1=vector([1,0,0])
e2=vector([0,1,0])
e3=vector([0,0,1])

beta1=vector([1,1,0])
beta2=vector([0,1,1])
beta3=vector([1,0,1])
V = span([beta1,beta2,beta3], QQ);  # check it is a basis; is span dim 3?
print V

v1=vector([1,2,3])
A = matrix(QQ, [beta1,beta2,beta3]).transpose(); # Sage takes the vectors as rows by default
print "coordinates of ",v1," wrt B are",A.solve_right(v1)

print "==== find change of basis matrix ===="
b1=vector([1,0,0])
b2=vector([1,1,0])
b3=vector([1,1,1])
d1=vector([-1,0,1])
d2=vector([0,1,0])
d3=vector([1,0,1])
A = matrix(QQ, [d1,d2,d3]).transpose(); # Sage takes the vectors as rows by default
print "coordinates of ",b1," wrt D are",A.solve_right(b1)
print "coordinates of ",b2," wrt D are",A.solve_right(b2)
print "coordinates of ",b3," wrt D are",A.solve_right(b3)
print "example of matrix changing basis"
M=matrix(QQ,[[-1/2,-1/2,0], [0,1,1], [1/2,1/2,1]])
v=vector([2,-1,3])
coordinates_wrt(v,[b1,b2,b3])
rep_v=vector([3, -4, 3])
coordinates_wrt(v,[d1,d2,d3])
print "M=\n",M,"\nrep_v=\n",rep_v,"\nand M*rep_v=\n",M*rep_v


print "==== changing map representations ===="
b1=vector([1,0,0])
b2=vector([1,1,0])
b3=vector([1,1,1])
d1=vector([1,0,1])
d2=vector([0,1,0])
d3=vector([1,0,-1])
db1_dx=vector([0,0,0])
db2_dx=vector([1,0,0])
db3_dx=vector([1,1,0])
print "coordinates of d/dx",b1," wrt D are",coordinates_wrt(db1_dx,[d1,d2,d3])
print "coordinates of d/dx",b2," wrt D are",coordinates_wrt(db2_dx,[d1,d2,d3])
print "coordinates of d/dx",b3," wrt D are",coordinates_wrt(db3_dx,[d1,d2,d3])
M1=matrix(QQ, [coordinates_wrt(db1_dx,[d1,d2,d3]),
               coordinates_wrt(db2_dx,[d1,d2,d3]),
               coordinates_wrt(db3_dx,[d1,d2,d3])]).transpose()
print "rep(d/dx)_B,D=\n",M1

bhat1=vector([1,0,0])
bhat2=vector([0,1,0])
bhat3=vector([0,0,1])
dhat1=vector([1,1,0])
dhat2=vector([0,1,1])
dhat3=vector([1,0,1])
dbhat1_dx=vector([0,0,0])
dbhat2_dx=vector([1,0,0])
dbhat3_dx=vector([0,1,0])
print "coordinates of d/dx",bhat1," wrt D are",coordinates_wrt(dbhat1_dx,[dhat1,dhat2,dhat3])
print "coordinates of d/dx",bhat2," wrt D are",coordinates_wrt(dbhat2_dx,[dhat1,dhat2,dhat3])
print "coordinates of d/dx",bhat3," wrt D are",coordinates_wrt(dbhat3_dx,[dhat1,dhat2,dhat3])
M2=matrix(QQ, [coordinates_wrt(dbhat1_dx,[dhat1,dhat2,dhat3]),
               coordinates_wrt(dbhat2_dx,[dhat1,dhat2,dhat3]),
               coordinates_wrt(dbhat3_dx,[dhat1,dhat2,dhat3])]).transpose()
print "rep(d/dx)_B,D=\n",M2
print ""
print "find rep_Bhat,B(id) and rep_D,Dhat(id) "
M3=matrix(QQ, [coordinates_wrt(bhat1,[b1,b2,b3]),
               coordinates_wrt(bhat2,[b1,b2,b3]),
               coordinates_wrt(bhat3,[b1,b2,b3])]).transpose()
print "rep(d/dx)_Bhat,B=\n",M3
M4=matrix(QQ, [coordinates_wrt(d1,[dhat1,dhat2,dhat3]),
               coordinates_wrt(d2,[dhat1,dhat2,dhat3]),
               coordinates_wrt(d3,[dhat1,dhat2,dhat3])]).transpose()
print "rep(d/dx)_D,Dhat=\n",M4
print ""
print "Check that the multiplication agrees with\n",M2
print M4*M1*M3
