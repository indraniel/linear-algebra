// four_ii_orientation_neg.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
settings.render=-10;  // fewer jaggies but very slow
settings.maxtile=(10,10);

import three;
import graph3;
currentprojection=orthographic(camera=(20,4,-3),target=(0,0,0));
currentlight=(5,5,-20);

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Axes
axes3(xlabel="{\tiny x}",ylabel="{\tiny y}",zlabel="{\tiny z}", 
      min=(-2.75,-0.75,-1),
      max=(4.25,6.25,4.25),
      AXISPEN,
      arrow=None);

// Vectors
triple v1=(1,4,1);
triple v2=(-2,3,1);
triple v3=(0,-1,2);
path3 parallelogram=(0,0,0)--v1--(v1+v2)--v2--cycle;

// Draw
draw(surface(parallelogram),rgb("fff0ca"));
draw((0,0,0)--v1,VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
draw(v1--(v1+v2),VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
draw((v1+v2)--v2,VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
draw(v2--(0,0,0),VECTORPEN+blue+gray(0.9),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw,Relative(0.75)));
// draw((0,0,0)--v1,line_pen+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// draw((0,0,0)--v2,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw((0,0,0)--v3,VECTORPEN+gray(.8),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw((0,0,0)--(-1*v3),VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// Label
// label("{\scriptsize $\vec{v}_1$}",v1,SE);
// label("{\scriptsize $\vec{v}_2$}",v2,NW);
// label("{\scriptsize $\vec{v}_3$}",v3,NE);
label("{\scriptsize $-\vec{v}_3$}",-1*v3,W);

int output_suffix;
for(int i=3; i > -5; --i) {
  currentprojection=orthographic(camera=(20,4,i),target=(0,0,0));
  if (i>=0) {
    currentlight=(5,5,20);
  } else {
    currentlight=(5,5,-20);
  }
  output_suffix=3-i;
  shipout(format("four_ii_orientation_neg%d",output_suffix));
}


