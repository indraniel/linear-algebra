// three_ii_3dproj1.asy
import jh;
real height; height=2cm; size(0,height);
import settings;
// settings.render=-7;  // fewer jaggies but very slow
// settings.maxtile=(10,10);

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Axes
path xaxis=(-0.75,0)--(1.75,0);
path yaxis=(0,-1.35)--(0,1.35);
real ticklength=0.1;

// Vectors
path v1=(0,0)--(1,1);
path v2=(0,0)--(1,-1);

// Draw
draw(xaxis,AXISPEN);
draw((1,0)--(1,-1*ticklength),AXISPEN);
draw(yaxis,AXISPEN);
draw((0,1)--(-1*ticklength,1),AXISPEN);
draw((0,-1)--(-1*ticklength,-1),AXISPEN);
draw(v1,VECTORPEN,Arrow(DefaultHead,VECTORHEADSIZE));
draw(v2,VECTORPEN,Arrow(DefaultHead,VECTORHEADSIZE));
// Label
// label("$\vec{v}$",v,SW);
// label("$L$",1.25*s,SE);
