// ppiped.asy
import jh;
real height; height=3.5cm; size(0,height);
import settings;
settings.render=0;  // make output not be PRC
settings.maxtile=(20,20);

import three;
import graph3;
currentprojection=orthographic((10,5,4));

// Axes
// axes3(xlabel="",ylabel="",zlabel="", 
//       min=(-0.2,-0.2,-0.2),
//       max=(3,4,5),
//       p=AXISPEN,
//       ticks=OutTicks,
//       arrow=None);
// xaxis3(axis=YZZero,
//        xmin=-0.2,xmax=3.2,
//        p=AXISPEN,
//        ticks=InTicks(),
//        arrow=None,
//        above=false);
xaxis3("",YZZero,
    xmin=-0.2,xmax=3.2,
    OutTicks(Label(" "),
        Step=1,step=1,  
        begin=false,  
        Size=2, size=2)); 
yaxis3("",XZZero,
    ymin=-0.2,ymax=4.2,
    OutTicks(Label(" "),
        Step=1,step=1, 
        begin=false,  
        Size=2, size=2)); 
zaxis3("",XYZero,
    zmin=-0.2,zmax=4.2,
    OutTicks(Label(" "),
        Step=1,step=1,  
        begin=false,  
        Size=2, size=2)); 

// three vectors
triple origin = (0,0,0);
triple p1 = (2,0,2);
triple p2 = (0,3,1);
triple p3 = (-1,0,1);
path3 v1 = origin--p1;
path3 v2 = origin--p2;
path3 v3 = origin--p3;

// Labels; the connecting line is overwritten by a box edge so they
// need to be written now
label(Label("{\tiny $\left(\begin{array}{@{}c@{}} 2 \\ 0 \\ 2 \end{array}\right)$}"),p1,SW);
label(Label("{\tiny $\left(\begin{array}{@{}c@{}} 0 \\ 3 \\ 1 \end{array}\right)$}"),p2+(0,.15,0),E);
triple p3_offset = (1,-0.8,1.6);  // label must move out and away
label(Label("{\tiny $\left(\begin{array}{@{}c@{}} -1 \\ 0 \\ 1 \end{array}\right)$}"),p3+p3_offset,W);
path3 p3_connection = p3+p3_offset+(0,-.1,-.5){(0,1,-.15)}  .. {(0,1,0)}p3;
draw(p3_connection,LIGHTPEN+gray(0.8));


// Draw the parts in white first to make a hairline border
pen WHITEPEN=linecap(0)
             +linewidth(1pt)+white;
pen extra_lines_color = black;
// Uncommenting these makes the black lines not show.  Order of drawing?
// draw(p3--(p1+p3),WHITEPEN);
draw(p3--(p1+p3),THINPEN+extra_lines_color);
// draw(p3--(p2+p3),WHITEPEN);
draw(p3--(p2+p3),THINPEN+extra_lines_color);
// draw(p2--(p2+p3),WHITEPEN);
draw(p2--(p2+p3),THINPEN+extra_lines_color);
// draw(p1--(p1+p3),WHITEPEN);
draw(p1--(p1+p3),THINPEN+extra_lines_color);
draw(p1--(p1+p2),WHITEPEN);
draw(p1--(p1+p2),THINPEN+extra_lines_color);
draw(p2--(p1+p2),WHITEPEN);
draw(p2--(p1+p2),THINPEN+extra_lines_color);
// draw((p2+p3)--(p1+p2+p3),WHITEPEN);
draw((p2+p3)--(p1+p2+p3),THINPEN+extra_lines_color);
// draw((p1+p3)--(p1+p2+p3),WHITEPEN);
draw((p1+p3)--(p1+p2+p3),THINPEN+extra_lines_color);
// draw((p1+p2)--(p1+p2+p3),WHITEPEN+red);
draw((p1+p2)--(p1+p2+p3),THINPEN+extra_lines_color);

// Bug: arrows predrawn with white border will have bases with
// crossing white borders.
// draw(v1,WHITEPEN,arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw(v1,VECTORPEN,arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw(v2,WHITEPEN,arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw(v2,VECTORPEN,arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw(v3,WHITEPEN,arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw(v3,VECTORPEN,arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));

