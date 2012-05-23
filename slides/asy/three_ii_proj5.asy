// three_ii_proj5.asy
import jh;
real height; height=1.75cm; size(0,height);

import graph;

pen inverse_image_pen=linecap(1)
                       +linewidth(1.5pt);
real red=0.9; real green=0.0; real blue=0.9;
pen color=rgb(red,green,blue);  // red

pair domain_vec_tip;
path domain_vec;
HSL hsl=HSL(red,green,blue);
// hsl.s=hsl.s/1.25;
for(int i=0; i < 5; ++i) {
  domain_vec_tip=(5,1.25+2*i/3.0);
  domain_vec=(0,0)--domain_vec_tip;
  draw(domain_vec,VECTORPEN+color,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-1,1.5));
  dot(domain_vec_tip,inverse_image_pen+color);
}
draw((0,0)--(5,0),inverse_image_pen+color,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-1,0));
// dot((5,0),inverse_image_pen+color);


real[] xticks={-1,1,2,3,4,5};
real[] yticks={1,2,3,4};
xaxis("",-1.2,5.25,AXISPEN,RightTicks("%",Size=2,xticks));
yaxis("",-0.2,4.1,AXISPEN,LeftTicks("%",Size=2,yticks));
