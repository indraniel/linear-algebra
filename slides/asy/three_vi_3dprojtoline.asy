// three_ii_3dproj1.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
settings.render=-7;  // fewer jaggies but very slow
settings.maxtile=(10,10);

import three;
import graph3;
//currentprojection=perspective((20,2,4),target=(0,0,0));
currentprojection=orthographic(camera=(20,4,3),target=(0,0,0));

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Axes
axes3(xlabel="",ylabel="",zlabel="", 
      min=(-2.75,-1.75,-1),
      max=(4.75,1.25,1),
      AXISPEN,
      arrow=None);

// Vectors
triple v=(1,-2,1);
triple s=(2,1,1);
triple p=(1/3,1/6,1/6);

// Draw
draw(-1.5s--1.5*s,line_pen+blue+gray(0.97));
draw(v--p,dotted_line_pen);  // dotted line
draw((0,0,0)--p,line_pen+red,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw((0,0,0)--v,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// Label
label("$\vec{v}$",v,SW);
label("$L$",1.25*s,SE);
