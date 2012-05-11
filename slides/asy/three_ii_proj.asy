// three_ii_proj.asy
import jh;
real height; height=2.25cm; size(0,height);

import graph;

pen inverse_image_pen=linecap(1)
                       +linetype(new real[] {0,2})
                       +linewidth(1.5pt);
pair domain_vec_tip;
path domain_vec;
for(int i=0; i < 6; ++i) {
  domain_vec_tip=(2,2+1.5*i/3.0);
  domain_vec=(0,0)--domain_vec_tip;
  // this gives an endpoint to the vector that is 0.15 ps points from end
  draw((0,0)--arcpoint(reverse(domain_vec),.15),VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
  dot(domain_vec_tip,inverse_image_pen+blue);
}
dot((2,0),inverse_image_pen+red);


real[] xticks={4,-3,-2,-1,1,2,3,4};
real[] yticks={-1,1,2,3,4};
xaxis("",-4.1,4.1,AXISPEN,RightTicks("%",Size=2,xticks));
yaxis("",-1.1,4.1,AXISPEN,LeftTicks("%",Size=2,yticks));

// path xaxis=(-4.1,0)--(4.1,0);
// path yaxis=(0,-1.1)--(0,4.1);

// draw(xaxis,AXISPEN);
// draw(yaxis,AXISPEN);
// draw(unitcircle,THINPEN);
// draw(e1,VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e2,VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e1_rotated,VECTORPEN+blue,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e2_rotated,VECTORPEN+blue,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
