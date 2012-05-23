// three_ii_proj1.asy
import jh;
real height; height=1.75cm; size(0,height);

import graph;

pen inverse_image_pen=linecap(1)
                       +linewidth(1.5pt);
real red=0.9; real green=0.0; real blue=0.0;
pen color=rgb(red,green,blue);  // red

draw((0,0)--(2,0),inverse_image_pen+color,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-1,0));

real[] xticks={-1,1,2,3,4,5};
real[] yticks={1,2,3,4};
xaxis("",-1.2,5.25,AXISPEN,RightTicks("%",Size=2,xticks));
yaxis("",-0.2,4.1,AXISPEN,LeftTicks("%",Size=2,yticks));
