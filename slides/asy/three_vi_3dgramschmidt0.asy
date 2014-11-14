// three_vi_3dgramschmidt0.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
settings.render=0; //  for png: -7;  // fewer jaggies but very slow
settings.maxtile=(20,20);

import three;
import graph3;

currentprojection=orthographic(camera=(20,4,3),target=(0,0,0));
currentlight=nolight;

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

pen bcolor=black;
pen kcolor=red;

// Axes
axes3(xlabel="{\tiny x}",ylabel="{\tiny y}",zlabel="{\tiny z}", 
      min=(-3.75,-1.75,-2.35),
      max=(3.75,4.25,2.75),
      AXISPEN,
      arrow=None);

// Vectors
triple b1=(1,1,2);
triple b2=(-1,2,1);
triple b3=(0,3,-1);
triple k1=b1;
triple k2=(-3/2,3/2,0);
triple k3=(4/3,4/3,-4/3);

// Draw
draw((0,0,0)--b1,VECTORPEN+bcolor,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw((0,0,0)--b2,VECTORPEN+bcolor,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw((0,0,0)--b3,VECTORPEN+bcolor,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw((0,0,0)--k1,VECTORPEN+kcolor,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw((0,0,0)--k2,VECTORPEN+kcolor,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw((0,0,0)--k3,VECTORPEN+kcolor,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// Label
label("$\vec{\beta}_1$",b1,NE);
// label("$\vec{\beta}_1=\vec{\kappa}_1$",b1,NE);
label("$\vec{\beta}_2$",b2,E);
label("$\vec{\beta}_3$",b3,E);
// label("$\vec{\kappa}_2$",k2,E);
// label("$\vec{\kappa}_3$",k3,SW);

