// three_ii_proj.asy
import jh;
real height; height=1.75cm; size(0,height);

import graph;

pen inverse_image_pen=linecap(1)
                       +linetype(new real[] {0,2})
                       +linewidth(1.5pt);
pair domain_vec_tip;
path domain_vec;
for(int i=0; i < 5; ++i) {
  domain_vec_tip=(3,1+2*i/3.0);
  domain_vec=(0,0)--domain_vec_tip;
  // this gives an endpoint to the vector that is 0.15 ps points from end
  draw((0,0)--arcpoint(reverse(domain_vec),.15),VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
  dot(domain_vec_tip,inverse_image_pen+blue);
}
dot((3,0),inverse_image_pen+red);


real[] xticks={-1,1,2,3,4,5};
real[] yticks={1,2,3,4};
xaxis("",-1.2,5.1,AXISPEN,RightTicks("%",Size=2,xticks));
yaxis("",-0.2,4.1,AXISPEN,LeftTicks("%",Size=2,yticks));

// path xaxis=(-4.1,0)--(4.1,0);
// path yaxis=(0,-1.1)--(0,4.1);

// draw(xaxis,AXISPEN);
// draw(yaxis,AXISPEN);
// draw(unitcircle,THINPEN);
// draw(e1,VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e2,VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e1_rotated,VECTORPEN+blue,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e2_rotated,VECTORPEN+blue,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
