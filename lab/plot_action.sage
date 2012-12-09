# plot_action.sage
# 2012-Dec-04 JH

DOT_SIZE = .02
CIRCLE_THICKNESS = 2
def color_circle_list(a, b, c, d, colors, full_circle=False):
    """Return list of graph instances for the action of a 2x2 matrix on 
    half of the unit circle.  That circle is broken into chunks each
    colored a different color.
      a, b, c, d  reals  entries of the matrix ul, ur, ll, lr
      colors  list of rgb tuples; len of this list is how many chunks
      full_circle=False  Show a full circle instead of a half circle.
    """
    r = []
    if full_circle:
        p = 2*pi
    else:
        p = pi
    t = var('t')
    n = len(colors)
    for i in range(n):
        color = colors[i]
        x(t) = a*cos(t)+c*sin(t)
        y(t) = b*cos(t)+d*sin(t)
        g = parametric_plot((x(t), y(t)), 
                            (t, p*i/n, p*(i+1)/n), 
                            color = color, thickness=CIRCLE_THICKNESS)
        r.append(g)
        r.append(circle((x(p*i/n), y(p*i/n)), DOT_SIZE, color=color))
    if not(full_circle):    # show (x,y)=(-1,0) is omitted
        r.append(circle((x(pi), y(pi)), 2*DOT_SIZE, color='black', 
                        fill = 'true'))
        r.append(circle((x(pi), y(pi)), DOT_SIZE, color='white', 
                        fill = 'true'))
    return r

NUM_CIRCLE_PTS =  12
def plot_circle_action(a, b, c, d, n = NUM_CIRCLE_PTS, full_circle = False):
    """Show the action of the matrix with entries a, b, c, d on half
    of the unit circle, as the circle and the output curve, broken into 
    a number of colors.
     a, b, c, d  reals  Entries are upper left, ur, ll, lr.
     n = 12  positive integer  Number of colors.
     full_circle=False  boolean  Show whole circle, or top half
    """
    colors = rainbow(n)
    G = Graphics()  # holds graph parts until they are to be shown
    for g_part in color_circle_list(a,b,c,d,colors,full_circle):
        G += g_part
    return plot(G)    

SQUARE_THICKNESS = 1.75  # How thick to draw the curves
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
                             thickness = SQUARE_THICKNESS))
    r.append(parametric_plot((a+c*t, b+d*t), (t, 0, 1), 
                             color = colors[1], zorder=ZORDER, 
                             thickness = SQUARE_THICKNESS))
    r.append(parametric_plot((a*(1-t)+c, b*(1-t)+d), (t, 0, 1), 
                              color = colors[2], zorder=ZORDER, 
                              thickness = SQUARE_THICKNESS))
    r.append(parametric_plot((c*(1-t), d*(1-t)), (t, 0, 1), 
                             color = colors[3], zorder=ZORDER, 
                             thickness = SQUARE_THICKNESS))
    # Dots make a cleaner join between edges
    r.append(circle((a, b), DOT_SIZE, 
                    color = colors[0], zorder = 2*ZORDER, 
                    thickness = SQUARE_THICKNESS*1.25, fill =  True))
    r.append(circle((a+c, b+d), DOT_SIZE, 
                    color = colors[1], zorder = 2*ZORDER+1, 
                    thickness = SQUARE_THICKNESS*1.25, fill =  True))
    r.append(circle((c, d), DOT_SIZE, 
                    color = colors[2], zorder = ZORDER+1, 
                    thickness = SQUARE_THICKNESS*1.25, fill =  True))
    r.append(circle((0, 0), DOT_SIZE, 
                    color = colors[3], zorder = ZORDER+1, 
                    thickness = SQUARE_THICKNESS*1.25, fill =  True))
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

EPSILON = 0.25
ARROW_THICKNESS = .25
def point_list(a, b, c, d, pts, colors=None):
    """Show the action of the matrix with entries a, b, c, d on the
    points.
      a, b, c, d  reals  Upper left, ur, ll, lr or matrix.
      pts  list of pairs of reals
      colors = None  list of colors
    """  
    r = []
    for dex, pt in enumerate(pts):
        x, y = pt
        f_x = a*x + c*y 
        f_y = b*x + d*y   
        if colors:
            color = colors[dex]
        else:
            color = 'lightgray'
        if ((abs(x-f_x) < EPSILON) and (abs(y-f_y) < EPSILON)):
            r.append(circle(pt, DOT_SIZE, color=color, 
                            thickness=ARROW_THICKNESS))
        else:
            r.append(arrow(pt, (f_x,f_y), color=color, 
                     width=ARROW_THICKNESS))
    return r

def point_grid(max_x, max_y):
    """Return a grix of points (x,y).
      max_x, max_y  positive integers
    """
    r = []
    for x in range(-1*max_x,max_x+1):
        for y in range(-1*max_y,max_y+1):
            r.append((x,y))
    return r

def plot_point_action(a, b, c, d, pts,colors=None):
    """Show the action of the matrix with entries a, b, c, d on the
    points.
      a, b, c, d  reals  Upper left, ur, ll, lr or matrix.
      pt_list  list of pairs of reals
    """  
    if colors is None:
        colors = ["gray",]*len(pts)
    G =  Graphics()
    for action_arrow in point_list(a,b,c,d,pts,colors=colors):
        G += action_arrow
    p = plot(G)
    return p

BA_THICKNESS = 1.5
def before_after_list(a, b, c, d, pts, colors=None):
    """Show the action of the matrix with entries a, b, c, d on the
    points by showning the vector before and the vector after in the
    same color.
      a, b, c, d  reals  Upper left, ur, ll, lr or matrix.
      pts  list of pairs of reals
      colors = None  list of colors
    """  
    r = []
    for dex, pt in enumerate(pts):
        x, y = pt
        v = vector(RR, pt)
        M = matrix(RR, [[a, b], [c, d]])
        f_x, f_y = v*M
        if colors:
            color = colors[dex]
        else:
            color = 'lightgray'
        if ((abs(x-f_x) < EPSILON) and (abs(y-f_y) < EPSILON)):
            r.append(circle(pt, DOT_SIZE, color=color, 
                            thickness=BA_THICKNESS))
        else:
            r.append(arrow((0,0), (x,y), color=color, 
                     width=BA_THICKNESS))
            r.append(arrow((0,0), (f_x,f_y), color=color, 
                     width=BA_THICKNESS))
    return r

def plot_before_after_action(a, b, c, d, pts, colors=None):
    """Show the action of the matrix with entries a, b, c, d on the
    points.
      a, b, c, d  reals  Upper left, ur, ll, lr or matrix.
      pt_list  list of pairs of reals; the before pts to show
    """  
    if colors is None:
        colors = ["gray",]*len(pts)
    G =  Graphics()
    for ba in before_after_list(a,b,c,d,pts,colors=colors):
        G += ba
    p = plot(G)
    return p

def find_angles(a,b,c,d,num_pts):
    """Apply the matrix to points around the upper half circle, and 
    return the angles between the input and output vectors.
      a, b, c, d  reals  Upper left, ur, ll, lr or matrix.
      num_pts  positive integer  number of points
    """
    r = []
    M = Matrix(RR, [[a, b], [c, d]])
    for i in range(num_pts):
        t = i*pi/num_pts
        pt = (cos(t), sin(t))
        v = vector(RR, pt)
        w = v*M
        try:
            angle = arccos(w*v/(w.norm()*v.norm()))
            # angle_v = atan2(v[1], v[0])
            # angle_w = atan2(w[1], w[0])
            # angle =  angle_w - angle_v
        except:
            angle = None
        r.append((t,angle))
    return r

plot.options['figsize'] = 2.5
plot.options['axes_pad'] = 0.05
plot.options['fontsize'] = 7
plot.options['dpi'] = 500
plot.options['aspect_ratio'] = 1