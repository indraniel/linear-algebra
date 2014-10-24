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
axes3(min=axes_min,max=axes_max,AXISPEN);
draw(e,edgepen);
// xaxis3(xmin=0,xmax=axes_max.x,AXISPEN+white+linewidth(4pt),above=true);
draw(s,MAINPEN+palered+opacity(0.9),nolight);
xaxis3(xmin=0,xmax=axes_max.x,AXISPEN,above=true);
yaxis3(ymin=0,ymax=axes_max.y,AXISPEN,above=true);
zaxis3(zmin=0,zmax=axes_max.z,AXISPEN,above=true);
draw(e_prime,edgepen);
draw(s_prime,MAINPEN+paleblue+opacity(0.9),nolight);
xaxis3(xmin=0,xmax=axes_max.x,AXISPEN,above=true);
yaxis3(ymin=0,ymax=axes_max.y,AXISPEN,above=true);
zaxis3(zmin=1,zmax=axes_max.z,AXISPEN,above=true);
