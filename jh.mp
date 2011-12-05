% JH.mp
%  MetaPost input file by Jim Hefferon
%verbatimtex
%%&latex
%\documentclass{book}
%\usepackage{jhbook}
%\usepackage{verbatim}
%\begin{document}
%etex

input boxes
input graph
% modify tick length in graph package; see below under TICKS

% GLOBAL Values
color lightgray;
  lightgray=.70white;
color medgray;
  medgray=.60white;
color darkgray;
  darkgray=.35white;
color shading_color;
  shading_color=lightgray;  

color highlighted_color, usual_color, shadow_color;
  highlighted_color=black;
  usual_color=black;
  shadow_color=darkgray;

numeric line_width_dark, line_width_light;
line_width_dark:=0.8pt;
line_width_light:=0.4pt; %TeX's rule width

%===================================================
% MACROS
%..................................................
%  For drawing vectors, dark or light.
%  drawvec_dark((0,0),(3,1));
%  drawvec_light((0,0),(3,1));
numeric vector_scale_factor_light, vector_scale_factor_dark;
vector_scale_factor_dark:=line_width_dark;
vector_scale_factor_light:=line_width_light;
def drawvec_dark(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled vector_scale_factor_dark;
    drawarrow startpt--endpt;
  endgroup
enddef;
def drawvec_dark_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+vector_scale_factor_dark);
    drawarrow startpt--endpt withcolor white;
    drawvec_dark(startpt,endpt);
  endgroup
enddef;
def drawvec_light(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled vector_scale_factor_light;
    drawarrow startpt--endpt;
  endgroup
enddef;
def drawvec_light_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+vector_scale_factor_light);
    drawarrow startpt--endpt withcolor white;
    drawvec_light(startpt,endpt);
  endgroup
enddef;
def drawline_dark(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled line_width_dark;
    draw startpt--endpt;
  endgroup
enddef;
def drawline_dark_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+line_width_dark);
    draw startpt--endpt withcolor white;
    drawline_dark(startpt,endpt);
  endgroup
enddef;
def drawline_light(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled line_width_light;
    draw startpt--endpt;
  endgroup
enddef;
def drawline_light_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+line_width_light);
    draw startpt--endpt withcolor white;
    drawline_light(startpt,endpt);
  endgroup
enddef;
%
%................................
% A point is a small, empty circle.
picture drawn_point; 
drawn_point:=nullpicture;
addto drawn_point contour (fullcircle scaled (3.5*line_width_light))
                        withpen pencircle scaled line_width_light
                        withcolor white;
addto drawn_point doublepath (fullcircle scaled (3.5*line_width_light))
                     withpen pencircle scaled line_width_light;
%................................
% Draw a point as a small, empty, circle.
def drawpoint(expr loc)=
  begingroup
    path ptcirc; ptcirc=fullcircle scaled (3.5*line_width_light) shifted loc;
    fill ptcirc withcolor white;
    pickup pencircle scaled line_width_light;
    draw ptcirc;
  endgroup
enddef;
%
%................................
% A stick figure is sometimes useful.  Draws it with the currently
% picked-up pen.
% ARGS
%  height  Height of the drawn figure.
%  t Transform (if any).  Figure is centered on the floor between the legs
% USAGE:
%  pickup pencircle scaled line_width_light;
%  drawdot(0,0) withcolor red;
%  drawstickfigure(u);
%  drawstickfigure(u) shifted (3u,2v);
%  drawstickfigure(u) shifted (5u,4v) rotated 30;
% Results in three figures, all of height u, the first with a red dot halfway
% between the ends of his two legs.
def drawstickfigure(expr height)text t=
  begingroup
    save legs, trunk, arms, head; path legs, trunk, arms, head;
    save crotch, shoulders, neck; pair crotch, shoulders, neck;
    crotch=(0,.4height); shoulders=(0,.65height); neck=(0,.78height);
    legs = (-.2height,0)--crotch--(.2height,0);
    arms = (-.3height,.6height)--shoulders--(.3height,.6height);
    trunk = crotch--shoulders--neck;
    head = neck..((neck+(0,.22height)))..cycle;
    %pickup pencircle scaled line_width_light;
    draw legs t;
    draw trunk t;
    draw arms t;
    fill (head t) withcolor white; draw head t; 
  endgroup
enddef;
%......................................
% drawdisk
% draw a cylinder
% ARGS
%  maj_axis the x-width of top face
%  min_axis the y-width of top face
%  hgt dist from top face to bot face
%  (t is any extra textual parameters, such as `shifted (3pt,-2pt)')
% USAGE
%  drawdisk(40pt,10pt,5pt) rotated 30;
% draws a disk (cylinder) 40pt wide, 10pt deep (top-to-bot) rotated 30,
% and placed so its top face is at (0,0)
def drawdisk(expr maj_axis,min_axis,hgt)text t =
  begingroup
    save pth, top_pth, bot_pth, outline; path pth, top_pth, bot_pth, outline;
    pth = fullcircle xscaled maj_axis yscaled min_axis;
    top_pth = pth t;
    bot_pth = pth shifted (0,-hgt) t;
    save edge_one, edge_two; path edge_one, edge_two;
    edge_one = (point (0length(bot_pth)) of  bot_pth)
               --(point (0length(top_pth)) of top_pth); 
    edge_two = (point (.5length(top_pth)) of  top_pth)
               --(point (.5length(bot_pth)) of bot_pth); 
    outline = subpath (0length(top_pth),.5length(top_pth)) of top_pth
               ..edge_two
	       ..subpath (.5length(bot_pth),length(bot_pth)) of bot_pth
	       ..edge_one..cycle;
    fill outline withcolor white;
    draw subpath (.5length(bot_pth),length(bot_pth)) of bot_pth;
    draw top_pth;
    draw edge_one; draw edge_two;
  endgroup
enddef;


%...............................
% drawinterval
%  p path
%  t transform arguments
def drawinterval(expr p)text t=
  begingroup
    draw p t;
    save interval_left_end, interval_right_end;
    path interval_left_end, interval_right_end;
    interval_left_end=quartercircle rotated 135 shifted .5right scaled 5pt;
    interval_right_end=interval_left_end reflectedabout((0,0),(0,1));
    draw (interval_left_end rotated angle(direction 0 of p)) shifted (point 0 of p) t;
    draw (interval_right_end rotated angle(direction infinity of p)) shifted (point infinity of p) t;
  endgroup
enddef;


%................................
% Label a triangle or rectangle in its center.
def center_triangle(expr vone, vtwo, vthree) =
  0.3333(vone+vtwo+vthree)
enddef;
def center_parallelogram(expr vone, vtwo) =
  0.5(vone+vtwo)
enddef;
%............LABELS....................
% Find a point near ptone in direction of pttwo.
def near_toward(expr ptone, pttwo) =
  ((1/(arclength ((0,0)--pttwo)))*pttwo)+ptone)
enddef;
%............TICKS....................
% defaults
numeric ticklength, tickwidth; ticklength:=2pt; tickwidth:=.4pt;
% modify defaults of graph package
path Gtemplate.itick, Gtemplate.otick;
Gtemplate.itick = origin--(2pt,0);
Gtemplate.otick = (-2pt,0)--origin;
%end of modification of graph package
pen updown_tick, sidetoside_tick;
    updown_tick:=pensquare shifted (-.5,0) xscaled ticklength yscaled tickwidth
                     rotated 90;
    sidetoside_tick:=pensquare shifted (-.5,0)
		       xscaled ticklength yscaled tickwidth;
% Make ticks that go up and down (e.g. for 2D x-axis or 3D z-axis).
def updown_ticks(expr numticks, first, offset) =
  begingroup
    save currentpen; pen currentpen; currentpen = updown_tick;
    for i=0 upto (numticks-1):
      drawdot first shifted (i*offset);
    endfor
  endgroup
enddef;
% Make ticks that go side to side (y-axis or 3D x-axis).
def sidetoside_ticks(expr numticks, first, offset) =
  begingroup
    save currentpen; pen currentpen; currentpen = sidetoside_tick;
    for i=0 upto (numticks-1):
      drawdot first shifted (i*offset);
    endfor
  endgroup
enddef;





% Graphs
color histogram_box_color; histogram_box_color:=.85white; %default
def histogram_box(expr startx,endx,starty,endy)=
  begingroup
    save p;
    path p;
    augment.p(startx,starty);
    augment.p(endx,starty);
    augment.p(endx,endy);
    augment.p(startx,endy);
    gfill p--cycle withcolor histogram_box_color;
  endgroup
enddef;



% MACRO bisect
%  Given two rays l and m that intersect, return
% the direction vector of the angle bisector.
% USAGE
%  Line l is specified with lpoint and intpoint, and line m is
% specified with intpoint and m point.
%  The direction vector is halfway between (in a clockwise
% sense) l and m.
% REMARKS
% IMPLEMENTATION
% HISTORY
%  98-Nov-15 jh written
def swath(expr lpoint,intpoint,mpoint,len)=
  begingroup
    save theta, phi;
    phi=angle(intpoint-lpoint)-angle(mpoint-intpoint);
    theta=angle(intpoint-lpoint)+((180-phi)/2);
    dir theta    
  endgroup
enddef;

%.......SET_PICTURE...............
% Draw picture of a generic set.  Use Knuth's bean, rotated quarter circle.
%
%a is width, b is height
def set_pic(expr a, b)=
  begingroup
    save x, y;
    z5=(0a,1b);  z6=(1a,1b);
    z3=(0a,.5b); z4=(1a,.5b);
    z1=(0a,0b);  z2=(1a,0b);
    pickup pencircle scaled line_width_light;
    draw z3..z5..z6..tension 1.2..z2..z1..cycle;
  endgroup
enddef;
% Generic set: returns the path
def generic_set(expr a, b)=
    (0a,.5b)..(0a,1b)..(1a,1b)..tension 1.2..(1a,0b)..(0a,0b)..cycle
enddef;

%...............MAPSTO............
% What LaTeX refers to as the `mapsto' character, except
% that it is a curve, of course.
numeric mapsto_offset;
  %mapsto_offset=1.414*labeloffset;
  mapsto_offset=2.5*labeloffset;
def mapsto(expr frompt, midpt, topt)=
  begingroup
    save x, y;
    path arrowbody;
    arrowbody=flex(frompt,midpt,topt);
    path frompt_disc, topt_disc;
    frompt_disc=fullcircle scaled mapsto_offset shifted frompt;
    topt_disc=fullcircle scaled mapsto_offset shifted topt;
    z1 = frompt_disc intersectiontimes arrowbody; %start of arrow
    z2 = topt_disc intersectiontimes arrowbody;   %end of arrow
    pickup pencircle scaled line_width_light;
    drawarrow subpath (y1,y2) of arrowbody;
    % draw the | part of the |-->
    save rule_len;
    rule_len=1*(ahlength*sind(ahangle)); % hgt of back of arrow
    pickup pensquare shifted (0,.5) xscaled rule_len
              yscaled line_width_light
              rotated (angle(direction y1 of arrowbody)+90);
    drawdot point y1 of arrowbody;
  endgroup
enddef;

%========================================
% partition
%  Draw a partition Venn diagram
% USES z1..z13! REQUIRES that you previously declare path p[]; !
vardef partitionbox=
  z3=(0w,0.618v);   z2=(1w,.618v);
  z0=(0w,0v);       z1=(1w,0v);
  z0--z1--z2--z3--cycle
enddef;  


def partition=
  pickup pencircle scaled line_width_light;
  %z3=(0w,0.618v);   z2=(1w,.618v);
  %z0=(0w,0v);       z1=(1w,0v);
  %draw z0--z1--z2--z3--cycle;
  draw partitionbox;
  
  x5=.35[x3,x2]; y5=y3; % part in upper left
  x6=x3; y6=.6[y0,y3];
  p1=z5{down}...{left}z6;
  draw p1;
  x7=.35[x0,x1]; y7=y0; % part in lower left
  x8=x0; y8=.4[y0,y3];
  p2=z7{up}...{left}z8;
  draw p2;
  z9=point .3 of p1; % part in center
  z10=point .3 of p2;
  p3=z9{(1,-.5)}..{(-1,-.5)}z10;
  draw p3;
  x11=.75[x3,x2]; y11=y3; % part in upper right
  z12=point .25 of p3;
  p4=z11{down}..{left}z12;
  draw p4;
  % put in the ldots
  z13=.618[z3,z1];
  % see these pts with:  dotlabels.ulft(5,6,7,8,9,10,11,12,13);
enddef;












