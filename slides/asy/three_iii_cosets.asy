// three_iii_cosets.asy
import jh;
real height; height=.3*beamerpaperheight; size(0,height);
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
// settings.maxtile=(10,10);
settings.outformat="pdf";
settings.prc=false;

pen line_pen=linecap(0)
             +linewidth(1.5pt);

import graph3;
// currentprojection=orthographic(camera=(15,4,5),target=(0,0,0));
currentprojection=orthographic(camera=(8,4,4),target=(0,0,0));

// // draw a plane, and the same plane shifted up one
// triple p(pair t) {
//   return ((t.x,t.y,2*t.x-t.y));
// }
// pair box_min=(-1.5,-1.75); // surface drawn over this box
// pair box_max=(2,2.25);
// surface s=surface(p,box_min,box_max,8,8,Spline);
// path3 e=p(box_min)  // edge of surface
//   --p((box_max.x,box_min.y))
//   --p((box_max.x,box_max.y))
//   --p((box_min.x,box_max.y))
//   --cycle;  


triple axes_min=(-3.2,-3.2,-1.5); 
triple axes_max=(4.8,3.4,2.1);
pair ends=(axes_min.y+.4,axes_max.y-.4);  // values of y at ends of lines

path3 n=(0,ends.x,0)--(0,ends.y,0);  // nullspace
path3 n1=(1,ends.x,1)--(1,ends.y,1);
path3 n2=(0,ends.x,1)--(0,ends.y,1);

triple origin=(0,0,0);
path3 xaxis=(axes_min.x,0,0)--origin--(axes_max.x,0,0);
  path3 xaxis_pos=subpath(xaxis,1,2);
path3 yaxis=(0,axes_min.y,0)--origin--(0,axes_max.y,0);
  path3 yaxis_pos=subpath(yaxis,1,2);
path3 zaxis=(0,0,axes_min.z)--origin--(0,0,axes_max.z);
  path3 zaxis_pos=subpath(zaxis,1,2);

// pen edgepen=THINPEN+linejoin(0);
// draw(e,edgepen+linewidth(2*MAINPEN_WIDTH)+white);
// draw(e,edgepen);
draw(xaxis,AXISPEN);
draw(yaxis,AXISPEN);
draw(zaxis,AXISPEN);
// draw(s,MAINPEN+paleyellow+opacity(0.9),nolight);

draw(n,MAINPEN+blue,Arrows3(DefaultHead2,5*MAINPEN_WIDTH,FillDraw));
draw(n1,MAINPEN+paleblue,Arrows3(DefaultHead2,5*MAINPEN_WIDTH,FillDraw));
draw(n2,MAINPEN+paleblue,Arrows3(DefaultHead2,5*MAINPEN_WIDTH,FillDraw));
draw(xaxis_pos,AXISPEN);
draw(yaxis_pos,AXISPEN);
draw(zaxis_pos,AXISPEN);
