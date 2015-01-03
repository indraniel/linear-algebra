# three_ii_a.sage
#  Show the effects of linear transformations of R-two.
# 2015-Jan-03

# Unlike in the lab, I will keep to the book's matrix-on-the-left 
# convention here.

# Load the file with the definitions
load("../lab/plot_action.sage")

# Unit half circle
p = plot_circle_action(1,0,0,1)
p.set_axes_range(-1.5,1.5,-0.5,1.5)
p.save("graphics/three_ii_a_unithalfcircle.pdf")

# \colvec{x \\ y} \mapsto \colvec{2x \\ y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -1, 2) 
q.save("graphics/three_ii_a_dialatex1.pdf")
p = plot_circle_action(2,0,0,1) 
p.set_axes_range(-2, 2, -1, 2) 
p.save("graphics/three_ii_a_dialatex2.pdf")

# \colvec{x \\ y} \mapsto \colvec{-x \\ y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -1, 2) 
q.save("graphics/three_ii_a_reversex1.pdf")
p = plot_circle_action(-1,0,0,1) 
p.set_axes_range(-2, 2, -1, 2) 
p.save("graphics/three_ii_a_reversex2.pdf")

#   \colvec{x \\ y} \mapsto \colvec{-x \\ 3y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -4, 4) 
q.save("graphics/three_ii_a_diagmap1.pdf")
p = plot_circle_action(-1,0,0,3) 
p.set_axes_range(-2, 2, -4, 4) 
p.save("graphics/three_ii_a_diagmap2.pdf")

#   \colvec{x \\ y} \mapsto \colvec{x+2y \\ y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 3, -1, 2) 
q.save("graphics/three_ii_a_skew1.pdf")
p = plot_circle_action(1,0,2,1) 
p.set_axes_range(-2, 3, -1, 2) 
p.save("graphics/three_ii_a_skew2.pdf")

#   \colvec{x \\ y} \mapsto \colvec{x \\ 2x+y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 3, -1, 2) 
q.save("graphics/three_ii_a_changeskew1.pdf")
p = plot_circle_action(1,2,0,1) 
p.set_axes_range(-2, 3, -1, 2) 
p.save("graphics/three_ii_a_changeskew2.pdf")

#  \colvec{x \\ y} \mapsto \colvec{x \\ (1/2)x+y} 
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -2, 2) 
q.save("graphics/three_ii_a_otherskew1.pdf")
p = plot_circle_action(1,1/2,0,1) 
p.set_axes_range(-2, 2, -2, 2) 
p.save("graphics/three_ii_a_otherskew2.pdf")

#  \colvec{x \\ y} \mapsto \colvec{\cos(\theta)\cdot x-\sin(\theta)\cdot y \\ \cos(\theta)\cdot x+\sin(\theta)\cdot y} 
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -2, 2) 
q.save("graphics/three_ii_a_rotation1.pdf")
theta=pi/6
p = plot_circle_action(cos(theta),sin(theta),-sin(theta),cos(theta)) 
p.set_axes_range(-2, 2, -2, 2) 
p.save("graphics/three_ii_a_rotation2.pdf")

#  \colvec{x \\ y} \mapsto \colvec{x \\ 0}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -2, 2) 
q.save("graphics/three_ii_a_projection1.pdf")
p = plot_circle_action(1,0,0,0) 
p.set_axes_range(-2, 2, -2, 2) 
p.save("graphics/three_ii_a_projection2.pdf")

#  \colvec{x \\ y} \mapsto \colvec{x \\ 2x}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 2, -2, 2) 
q.save("graphics/three_ii_a_otherprojection1.pdf")
p = plot_circle_action(1,2,0,0) 
p.set_axes_range(-2, 2, -2, 2) 
p.save("graphics/three_ii_a_otherprojection2.pdf")

# generic
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2, 4, -3, 6) 
q.save("graphics/three_ii_a_generic1.pdf",figsize=3)
p = plot_circle_action(1,3,2,4) 
p.set_axes_range(-2, 4, -3, 6) 
p.save("graphics/three_ii_a_generic2.pdf",figsize=3)

