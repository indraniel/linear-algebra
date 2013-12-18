# Work for Computer Algebra Systems Topic in Sage
sage: var('i0,i1,i2,i3,i4,i5,i6')
(i0, i1, i2, i3, i4, i5, i6)
sage: network_system=[i0-i1-i2==0, i1-i3-i5==0,
....:
i2-i4+i5==0,, i3+i4-i6==0, 5*i1+10*i3==10,
....:
2*i2+4*i4==10, 5*i1-2*i2+50*i5==0]
sage: solve(network_system, i0,i1,i2,i3,i4,i5,i6)
[[i0 == (7/3), i1 == (2/3), i2 == (5/3), i3 == (2/3),
i4 == (5/3), i5 == 0, i6 == (7/3)]]

# Homework 1a
var('h,c')
statics = [40*h + 15*c == 100,
           25*c == 50 + 50*h]
solve(statics, h,c)

# Homework 1b
var('h,i,j,k')
chemistry = [7*h == 7*j,
             8*h + 1*i == 5*j + 2*k,
             1*i == 3*j,
             3*i == 6*j + 1*k]
solve(chemistry, h,i,j,k)

# Homework 2a
var('x,y')
system = [2*x + 2*y == 5,
             x - 4*y == 0]
solve(system, x,y)

# Homework 2b
var('x,y')
system = [-1*x + y == 1,
             x + y == 2]
solve(system, x,y)

# Homework 2c
var('x,y,z')
system = [x - 3*y + z == 1,
          x + y + 2*z == 14]
solve(system, x,y)

# Homework 2d
var('x,y')
system = [-1*x - y == 1,
          -3*x - 3*y == 2]
solve(system, x,y)

# Homework 2e
var('x,y,z')
system = [       4*y + z == 20,
           2*x - 2*y + z == 0,
            x +        z == 5,
            x +    y - z == 10]
solve(system, x,y,z)

# Homework 2f
var('x,y,z,w')
system = [ 2*x +        z + w == 5,
                  y -       w == -1,
           3*x -        z - w == 0,
           4*x +  y + 2*z + w == 9]
solve(system, x,y,z,w)

# Homework 3a
var('x,y')
system = [ 3*x + 6*y == 18,
             x + 2*y == 6]
solve(system, x,y)

# Homework 3b
var('x,y')
system = [ x + y == 1,
           x - y == -1]
solve(system, x,y)

# Homework 3c
var('x1,x2,x3')
system = [   x1 +        x3 == 4,
             x1 - x2 + 2*x3 == 5,
           4*x1 - x2 + 5*x3 == 17]
solve(system, x1,x2,x3)

# Homework 3d
var('a,b,c')
system = [ 2*a +  b - c == 2,
           2*a +      c == 3,
             a - b      == 0]
solve(system, a,b,c)

# Homework 3e
var('x,y,z,w')
system = [   x + 2*y - z     == 3,
           2*x +   y     + w == 4,
             x -   y + z + w == 1]
solve(system, x,y,z,w)

# Homework 3f
var('x,y,z,w')
system = [   x +      z + w == 4,
           2*x +  y     - w == 2,
           3*x +  y + z     == 7]
solve(system, x,y,z,w)

# Homework 4
var('x,y,a,b,c,d,p,q')
system = [ a*x +  c*y == p,
           b*x +  d*y == q]
solve(system, x,y)

