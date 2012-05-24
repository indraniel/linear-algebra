// three_ii_proj5.asy
import jh;
real height; height=1.75cm; size(0,height);

import graph;

pen inverse_image_pen=linecap(1)
                       +linewidth(1.5pt);
pen inverse_image_fill_pen=linecap(1)
                           +linewidth(1pt);
real red=230/255; real green=0.0; real blue=230/255;
pen color=rgb(red,green,blue);  // red
pen shade_color=rgb(red,186/255,blue);

path codomain_vec=(0,0)--(5,0);
picture p=vec_outline(codomain_vec,inverse_image_pen+color,inverse_image_fill_pen+shade_color);
add(p);

pair domain_vec_tip;
path domain_vec;
HSL hsl=HSL(red,green,blue);
// hsl.s=hsl.s/1.25;
for(int i=0; i < 5; ++i) {
  domain_vec_tip=(5,1.25+2*i/3.0);
  domain_vec=(0,0)--domain_vec_tip;
  draw(domain_vec,VECTORPEN+color,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-1,1.5));
  dot(domain_vec_tip,inverse_image_pen);
}
// draw((0,0)--(5,0),inverse_image_pen+color,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-1,0));
// dot((5,0),inverse_image_pen+color);


real[] xticks={-1,1,2,3,4,5};
real[] yticks={1,2,3,4};
xaxis("",-1.2,5.25,AXISPEN,RightTicks("%",Size=2,xticks));
yaxis("",-0.2,4.1,AXISPEN,LeftTicks("%",Size=2,yticks));
