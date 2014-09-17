// two_i_plane.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
settings.maxtile=(10,10);

import three;
import graph3;
currentprojection=orthographic(camera=(20,4,3),target=(0,0,0));
currentlight=(5,5,20);

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Axes
// axes3(xlabel="{\tiny x}",ylabel="{\tiny y}",zlabel="{\tiny z}", 
//       min=(-2.75,-0.75,-1),
//       max=(4.25,6.25,4.25),
//       AXISPEN,
//       arrow=None);

// Vectors
triple v1=(2,-3,0);
triple v2=(2,3,0);
triple v3=(-2,3,0);
triple v4=(-2,-3,0);

triple n=(2,1,3);  // normal to the plane

path3 parallelogram=v1--v2--v3--v4--cycle;
path3 newpath = planeproject(n)*parallelogram;
surface s=surface(newpath);

draw((0,0,0)--(0,-3.5,0),AXISPEN);
draw((0,0,0)--(-8,0,0),AXISPEN);
draw((0,0,0)--(0,0,-2),AXISPEN);
// draw(s,lightgreen+opacity(0.05));
draw(newpath,MAINPEN+linewidth(1)+white);
draw(newpath,MAINPEN);
draw((0,0,0)--(0,3.5,0),AXISPEN+linewidth(1)+white);
draw((0,0,0)--(0,3.5,0),AXISPEN);
draw((0,0,0)--(8,0,0),AXISPEN+linewidth(1)+white);
draw((0,0,0)--(8,0,0),AXISPEN);
draw((0,0,0)--(0,0,2),AXISPEN+linewidth(1)+white);
draw((0,0,0)--(0,0,2),AXISPEN);

triple w1 = (1,1,-1);
triple w2 = (-.5,1,0);
triple w3 = w1+w2;

draw((0,0,0)--w1,red+grey,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));
draw((0,0,0)--w2,red+grey,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));
draw((0,0,0)--(w1+w2),red,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));
draw(w1--(w1+w2),DASHPEN+red);
draw(w2--(w1+w2),DASHPEN+red);

// Draw
// draw(surface(parallelogram),rgb("fff0ca"));
// draw((0,0,0)--v1,VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
// draw(v1--(v1+v2),VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
// draw((v1+v2)--v2,VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
// draw(v2--(0,0,0),VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
// // draw((0,0,0)--v1,line_pen+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// // draw((0,0,0)--v2,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw((0,0,0)--v3,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// // Label
// label("{\scriptsize $\vec{v}_1$}",v1,SE);
// label("{\scriptsize $\vec{v}_2$}",v2,NW);
// label("{\scriptsize $\vec{v}_3$}",v3,NE);

