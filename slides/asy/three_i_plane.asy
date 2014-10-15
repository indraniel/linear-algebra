// three_i_plane.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
settings.maxtile=(10,10);
settings.outformat="pdf";
// settings.prc=false;
  
import three;
import graph3;
currentprojection=orthographic(camera=(20,4,3),target=(0,0,0));
currentlight=(20,4,3); // (20,20,50);

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
triple v3=(-3,3,0);
triple v4=(-3,-3,0);

triple n=(2,-1,1);  // normal to the plane

path3 parallelogram=v1--v2--v3--v4--cycle;
path3 newpath = planeproject(n)*parallelogram;
surface s=surface(newpath);

draw((0,0,0)--(0,-3,0),AXISPEN);
draw((0,0,0)--(-10,0,0),AXISPEN);
draw((0,0,0)--(0,0,-1.3),AXISPEN);
draw(newpath,MAINPEN+linewidth(1.6)+white);
draw(newpath,MAINPEN+yellow);
draw((0,0,0)--(0,3,0),AXISPEN+linewidth(1.6)+white);
draw((0,0,0)--(8,0,0),AXISPEN+linewidth(1.6)+white);
draw((0,0,0)--(0,0,1.3),AXISPEN+linewidth(1.6)+white);
draw(s,MAINPEN+paleyellow+opacity(0.9));  // only works on adobe renderer?
draw((0,0,0)--(0,3,0),AXISPEN);
draw((0,0,0)--(8,0,0),AXISPEN);
draw((0,0,0)--(0,0,1.3),AXISPEN);

triple w1 = (1/2,1,0);
triple w2 = (-1/2,0,1);
// triple w3 = w1+w2;

draw((0,0,0)--w1,red,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));
draw((0,0,0)--w2,red,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));
// draw((0,0,0)--(w1+w2),red,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));
// draw(w1--(w1+w2),DASHPEN+red+white);
// draw(w2--(w1+w2),DASHPEN+red+white);

