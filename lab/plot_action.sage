# plot_action.sage
# Show the action of a 2x2 matrix on the top half of a unit circle

DOT_SIZE = .02

def color_circle_list(a, b, c, d, colors):
    """Return list of graph instances for the action of a 2x2 matrix on 
    half of the unit circle.  That circle is broken into chunks each
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
        r.append(circle((x(pi*i/n), y(pi*i/n)), DOT_SIZE, color=color))
    r.append(circle((x(pi), y(pi)), 2*DOT_SIZE, color='black', 
                    fill = 'true'))
    r.append(circle((x(pi), y(pi)), DOT_SIZE, color='white', 
                    fill = 'true'))
    return r

def plot_circle_action(a, b, c, d, n = 12, show_unit_circle = False):
    """Show the action of the matrix with entries a, b, c, d on half
    of the unit circle, as the circle and the output curve, broken into 
    a number of colors.
     a, b, c, d  reals  Entries are upper left, ur, ll, lr.
     n = 12  positive integer  Number of colors.
    """
    colors = rainbow(n)
    G = Graphics()  # holds graph parts until they are to be shown
    if show_unit_circle:
        for f_part in color_circle_list(1,0,0,1,colors):
            G += f_part
    for g_part in color_circle_list(a,b,c,d,colors):
        G += g_part
    return plot(G)    

THICKNESS = 1.75  # How thick to draw the curves
ZORDER = 5    # Draw the graph over the axes
def color_square_list(a, b, c, d, colors):
    """Return list of graph instances for the action of a 2x2 matrix 
    on a unit square.  That square is broken into sides, each colored a 
    different color.
      a, b, c, d  reals  entries of the matrix
      colors  list of rgb tuples; len of this list is at least four
    """
    r = []
    t = var('t')
    # Four sides, ccw around square from origin
    r.append(parametric_plot((a*t, b*t), (t, 0, 1), 
                             color = colors[0], zorder=ZORDER, 
                             thickness=THICKNESS))
    r.append(parametric_plot((a+c*t, b+d*t), (t, 0, 1), 
                             color = colors[1], zorder=ZORDER, 
                             thickness=THICKNESS))
    r.append(parametric_plot((a*(1-t)+c, b*(1-t)+d), (t, 0, 1), 
                              color = colors[2], zorder=ZORDER, 
                              thickness=THICKNESS))
    r.append(parametric_plot((c*(1-t), d*(1-t)), (t, 0, 1), 
                             color = colors[3], zorder=ZORDER, 
                             thickness=THICKNESS))
    # Dots make a cleaner join between edges
    r.append(circle((a, b), DOT_SIZE, 
                    color = colors[0], zorder = 2*ZORDER, 
                    thickness = THICKNESS*1.25, fill =  True))
    r.append(circle((a+c, b+d), DOT_SIZE, 
                    color = colors[1], zorder = 2*ZORDER+1, 
                    thickness = THICKNESS*1.25, fill =  True))
    r.append(circle((c, d), DOT_SIZE, 
                    color = colors[2], zorder = ZORDER+1, 
                    thickness = THICKNESS*1.25, fill =  True))
    r.append(circle((0, 0), DOT_SIZE, 
                    color = colors[3], zorder = ZORDER+1, 
                    thickness = THICKNESS*1.25, fill =  True))
    return r

def plot_square_action(a, b, c, d, show_unit_square = False):
    """Show the action of the matrix with entries a, b, c, d on half
    of the unit circle, as the circle and the output curve, broken into  
    colors.
     a, b, c, d  reals  Entries are upper left, ur, ll, lr.
    """
    colors = ['red', 'orange', 'green', 'blue']  
    G = Graphics()        # hold graph parts until they are to be shown
    if show_unit_square:
        for f_part in color_square_list(1,0,0,1,colors):
            G += f_part
    for g_part in color_square_list(a,b,c,d,colors):
        G += g_part
    p = plot(G)
    return p    

plot.options['figsize'] = 2.5
plot.options['axes_pad'] = 0.05
plot.options['fontsize'] = 7
plot.options['dpi'] = 500
plot.options['aspect_ratio'] = 1