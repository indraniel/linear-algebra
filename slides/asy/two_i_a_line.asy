// two_i__a_line.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
// settings.render=0;   // for png: -10;  // fewer jaggies but very slow
// settings.maxtile=(10,10);
settings.outformat="pdf";
settings.prc=false;
  
import three;
import graph3;
currentprojection=orthographic(camera=(20,4,3),target=(0,0,0));
currentlight=nolight;  //(20,4,3); 

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Vectors
triple v1=(2,-3,0);
triple v2=(2,3,0);
triple v3=(-3,3,0);
triple v4=(-3,-3,0);

triple v=(-2,-1,1);  // spanning vector for the line

path3 lne=(-1.25*v)--(1.25*v); 

draw((0,0,0)--(0,-3.25,0),AXISPEN);
draw((0,0,0)--(-9,0,0),AXISPEN);
draw((0,0,0)--(0,0,-1.3),AXISPEN);
// draw(lne,MAINPEN+linewidth(1.6pt)+white);
draw(lne,MAINPEN+yellow);
draw((0,0,0)--(0,3.25,0),AXISPEN+linewidth(1.6)+white);
draw((0,0,0)--(7,0,0),AXISPEN+linewidth(1.6)+white);
draw((0,0,0)--(0,0,1.3),AXISPEN+linewidth(1.6)+white);
// draw(s,MAINPEN+paleyellow+opacity(0.9));  // only works on adobe renderer?
draw((0,0,0)--(0,2.25,0),AXISPEN);
draw((0,0,0)--(7,0,0),AXISPEN);
draw((0,0,0)--(0,0,1.3),AXISPEN);

draw((0,0,0)--v,VECTORPEN+red,Arrow3(DefaultHead2,.75*VECTORHEADSIZE,FillDraw));

