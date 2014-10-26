// three_ii_kernel.asy
import jh;
real height; height=.25*beamerpaperheight; size(0,height);
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
// settings.maxtile=(10,10);
settings.outformat="pdf";
settings.prc=false;

pen line_pen=linecap(0)
             +linewidth(1.5pt);

import graph3;
currentprojection=orthographic(camera=(10,5,3),target=(0,0,0));

// draw a plane, and the same plane shifted up one
triple f(pair t) {
  return ((t.x,t.y,-.5t.x-.2*t.y));
}
triple f_prime(pair t) {
  return ((t.x,t.y,1-.5t.x-.2*t.y));
}

pen edgepen=THINPEN+linejoin(0);

pen jhpen=makepen(shift(0.75pt,0pt)*scale(1.5pt)*nullpath);
pair box_min=(-1,-1); // surface drawn over this box
pair box_max=(1,1);
path3 e=f(box_min)  // edge of surface
  --f((box_max.x,box_min.y))
  --f((box_max.x,box_max.y))
  --f((box_min.x,box_max.y))
  --cycle;  
path3 e_prime=f_prime(box_min)  // edge of surface, shifted
  --f_prime((box_max.x,box_min.y))
  --f_prime((box_max.x,box_max.y))
  --f_prime((box_min.x,box_max.y))
  --cycle;  

surface s=surface(f,box_min,box_max,8,8,Spline);
surface s_prime=surface(f_prime,box_min,box_max,8,8,Spline);

triple axes_min=(-1.25,-1.25,-1); 
triple axes_max=(2.9,1.4,2.1);

triple origin=(0,0,0);
path3 xaxis=(axes_min.x,0,0)--origin--(axes_max.x,0,0);
  path3 xaxis_pos=subpath(xaxis,1,2);
path3 yaxis=(0,axes_min.y,0)--origin--(0,axes_max.y,0);
  path3 yaxis_pos=subpath(yaxis,1,2);
path3 zaxis=(0,0,axes_min.z)--origin--(0,0,axes_max.z);
  path3 zaxis_pos=subpath(zaxis,1,2);

draw(xaxis,AXISPEN);
draw(yaxis,AXISPEN);
draw(zaxis,AXISPEN);

draw(e,edgepen+linewidth(2*MAINPEN_WIDTH)+white);
draw(e,edgepen);
draw(xaxis_pos,AXISPEN+linewidth(2*MAINPEN_WIDTH)+white);
draw(yaxis_pos,AXISPEN+linewidth(2*MAINPEN_WIDTH)+white);
draw(zaxis_pos,AXISPEN+linewidth(2*MAINPEN_WIDTH)+white);
draw(s,MAINPEN+mediumred+opacity(0.9),nolight);
draw(xaxis_pos,AXISPEN);
draw(yaxis_pos,AXISPEN);
draw(zaxis_pos,AXISPEN);
draw(e_prime,edgepen+linewidth(1.5*MAINPEN_WIDTH)+white);
path3 zaxis_top=(0,0,1)--(0,0,axes_max.z);
draw(e_prime,edgepen);
draw(zaxis_top,AXISPEN+linewidth(2*MAINPEN_WIDTH)+white);
draw(s_prime,MAINPEN+mediumblue+opacity(0.9),nolight);
// // xaxis3(xmin=0,xmax=axes_max.x,AXISPEN,above=true);
// yaxis3(ymin=0,ymax=axes_max.y,AXISPEN,above=true);
// zaxis3(zmin=1,zmax=axes_max.z,AXISPEN,above=true);
draw(zaxis_top,AXISPEN);
