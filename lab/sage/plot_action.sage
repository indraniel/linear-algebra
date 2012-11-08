import colortransforms

# superseeded: from colorsys import hsv_to_rgb
def color_list(n, CIE_Lstar=52, CIE_bstar=0.25, interval_width=1.5):
    """Return a list list of rgb tuples.  Like rainbow() but your eye should
    perceive the colors as more evenly-spaced.
      n  positive integer  Length of list.
      interval_width  real  how wide the interval of color parameters is,
        centered on 0
    """
    n = Integer(n) # make 1/(n-1) give a real
    r = []
    for i in range(n):
        rgb_tuple = colortransforms.cielab_to_rgb(CIE_Lstar, (-0.5+(i/(n-1)))*interval_width, CIE_bstar)
        r.append(rgb_tuple)
    return r


def color_graph_list(a, b, c, d, colors):
    """Return list of graph instances showing the action of a 2x2 matrix on 
    the upper half of the unit circle.  That circle is broken into chunks each
    colored a different color.
      a, b, c, d  reals  entries of the matrix
      colors  list of rgb tuples; len of this list is how many chunks
    """
    r = []
    t = var('t')
    n = len(colors)
    for i in range(n):
    	color = colors[i]
	x(t) = a*cos(t)+b*sin(t)
        y(t) = c*cos(t)+d*sin(t)
        g = parametric_plot((x(t), y(t)), 
                            (t, pi*i/n, pi*(i+1)/n), 
                            color = color)
    	r.append(g)
	r.append(circle((x(pi*i/n), y(pi*i/n)), .02, color=color))
    r.append(circle((x(pi), y(pi)), .05, color='black', fill = 'true'))
    r.append(circle((x(pi), y(pi)), .03, color='white', fill = 'true'))
    return r

def plot_action(a, b, c, d, n = 12):
    """Show the action of the matrix with entries a, b, c, d on the upper half
    of the unit circle, as the circle and the output curve, broken into a 
    number of colors.
     a, b, c, d  reals  Entries are upper left, upper right, lower left, lr.
     n = 12  positive integer  Number of colors.
    """
    colors = rainbow(n)
    G = Graphics()  # holds graph parts until they are to be shown
    for f_part in color_graph_list(1,0,0,1,colors):
        G += f_part
    for g_part in color_graph_list(a,b,c,d,colors):
        G += g_part
    return plot(G)    

p = plot_action(1,1,0,1)
p.set_axes_range(-5,5,-5,5)
show(p, aspect_ratio=1)