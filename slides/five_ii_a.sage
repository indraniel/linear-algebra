# five_ii_a.sage
#  Show the angles for various of linear transformations of R-two.
# 2015-Jan-03

# Unlike in the lab, I keep to the book's matrix-on-the-left 
# convention here, so some matrices may appear transposed.

# Load the file with the definitions
load("../lab/plot_action.sage")

# Unit half circle
p = plot_circle_action(1,0,0,1)
p.set_axes_range(-1.5,1.5,-0.5,1.5)
p.save("graphics/five_ii_a_unithalfcircle.pdf")

# \colvec{x \\ y} \mapsto \colvec{2x \\ 2x+2y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-3, 3, -3, 3) 
q.save("graphics/five_ii_a_skew1.pdf")
p = plot_circle_action(2,2,0,2) 
p.set_axes_range(-3, 3, -3, 3) 
p.save("graphics/five_ii_a_skew2.pdf")
p=plot_before_after_action(2,2,0,2,[(1,0)],['red'])
p.set_axes_range(-0.1,2.1,-0.1,2.75)  # give same axes for both plots
p.save("graphics/five_ii_a_skew3.pdf")
p=plot_before_after_action(2,2,0,2,[(cos(pi/6),sin(pi/6))],['orange'])
p.set_axes_range(-0.1,2.1,-0.1,2.75)
p.save("graphics/five_ii_a_skew4.pdf")
p = plot_color_angles(2,2,0,2)
p.set_axes_range(0,pi,0,pi)
p.save("graphics/five_ii_a_skew5.pdf", figsize=3, tick_formatter=[pi,pi])


# \colvec{x \\ y} \mapsto \colvec{x+2y \\ 3x+4y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-3, 3, -4.5, 4.5) 
q.save("graphics/five_ii_a_generic1.pdf")
p = plot_circle_action(1,3,2,4) 
p.set_axes_range(-3, 3, -4.5, 4.5) 
p.save("graphics/five_ii_a_generic2.pdf")
p = plot_color_angles(1,3,2,4)
p.set_axes_range(0,pi,0,pi)
p.save("graphics/five_ii_a_generic3.pdf", figsize=3, tick_formatter=[pi,pi])


# \colvec{x \\ y} \mapsto \colvec{-1x \\ 2y}
q = plot_circle_action(1,0,0,1) 
q.set_axes_range(-2.5, 2.5, -2.5, 2.5) 
q.save("graphics/five_ii_a_diagonal1.pdf")
p = plot_circle_action(-1,0,0,2) 
p.set_axes_range(-2.5, 2.5, -2.5, 2.5) 
p.save("graphics/five_ii_a_diagonal2.pdf")
p = plot_color_angles(-1,0,0,2)
p.set_axes_range(0,pi,0,pi)
p.save("graphics/five_ii_a_diagonal3.pdf", figsize=3, tick_formatter=[pi,pi])

