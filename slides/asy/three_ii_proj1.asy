// three_ii_proj1.asy
import jh;
real height; height=1.75cm; size(0,height);

import graph;

pen inverse_image_pen=linecap(1)
                       +linewidth(1.5pt);
pen inverse_image_fill_pen=linecap(1)
                       +linewidth(1pt);

real red=230/255; real green=0.0; real blue=0.0;
pen color=rgb(red,green,blue);  // red
pen shade_color=rgb(red,204/255,204/255);  // change saturation to .2

// // vec_outline  draw a vector's outline, filled in white
// picture vec_outline(path p, pen exterior, pen interior) {
//   picture pic;
//   draw(pic,p,exterior,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-1,0));
//   draw(pic,p,interior,arrow=Arrow(DefaultHead,VECTORHEADSIZE),PenMargin(-3/4,1/4));
//   return pic;
// }

path vec=(0,0)--(2,0);
picture p=vec_outline(vec,inverse_image_pen+color,inverse_image_fill_pen+shade_color);
add(p);

real[] xticks={-1,1,2,3,4,5};
real[] yticks={1,2,3,4};
xaxis("",-1.2,5.25,AXISPEN,RightTicks("%",Size=2,xticks));
yaxis("",-0.2,4.1,AXISPEN,LeftTicks("%",Size=2,yticks));
