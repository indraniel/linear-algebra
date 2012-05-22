// three_ii_1vec.asy
import jh;
real height; height=5cm; size(0,height);
import settings;
settings.render=-3;
settings.maxtile=(20,20);

import three;
import graph3;
currentprojection=perspective((20,4,6),target=(0,4,0));
// currentlight=adobe;

pen plane_vector_pen=linecap(0)
                       +linewidth(2.5pt);
pen inverse_image_pen=linecap(1)    // round, to make dots 
                       +linewidth(1.5pt);
// pair domain_vec_tip;
// path domain_vec;
// for(int i=0; i < 5; ++i) {
//   domain_vec_tip=(2,2+1.5*i/3.0);
//   domain_vec=(0,0)--domain_vec_tip;
//   // this gives an endpoint to the vector that is 0.15 ps points from end
//   draw((0,0)--arcpoint(reverse(domain_vec),.15),VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
//   dot(domain_vec_tip,inverse_image_pen+blue);
// }
// dot((2,0),inverse_image_pen+red);

pair plane_endpt[]={(2,3), (-4,5)};
plane_endpt.push(plane_endpt[0]+plane_endpt[1]);
path plane_vec[];
for(int i=0; i < 3; ++i) {
  plane_vec.push((0,0)--plane_endpt[i]);
}
pen color[]={rgb(0.9,0,0), rgb(0,0,0.75), rgb(0.8,0,0.75)}; 
path space_vec[];
path vec1=(0,0)--(2,3);
path vec2=(0,0)--(-4,5);
path vec3=(0,0)--(-4,5);

// Axes
axes3(xlabel="",ylabel="",zlabel="", 
      min=(-0.2,-0.2,-0.2),
      max=(5,9.5,4.5),
      AXISPEN,
      arrow=None);
// Parallelogram of vectors in the plane
draw(path3(plane_endpt[0]--plane_endpt[2]),VECTORPEN+gray(0.9));
draw(path3(plane_endpt[1]--plane_endpt[2]),VECTORPEN+gray(0.9));

for(int i=0; i < 3; ++i) {
  draw(path3(plane_vec[i]),VECTORPEN+color[i]+gray(0.95),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
}
label(Label("{\tiny $\vec{w}_1$}"),path3(plane_vec[0]));
label(Label("{\tiny $\vec{w}_2$}"),path3(plane_vec[1]),NW);
label(Label("{\tiny $\vec{w}_3=\vec{w}_1+\vec{w}_2$}",Relative(0.6)),path3(plane_vec[2]),N);

// Draw inverse image sets
triple inv_image_pt;
real starting_hgt[]={8,8};  //  how high above the plane vector starts the inverse image
starting_hgt.push(starting_hgt[0]+starting_hgt[1]);
path3 domain_vec[];
for (int i=0; i<3; ++i) {
  for(int j=0; j < 5; ++j) {
    inv_image_pt=(xpart(plane_endpt[i]), ypart(plane_endpt[i]), (j+starting_hgt[i])/6);
    dot(inv_image_pt,inverse_image_pen+color[i]);
    inv_image_pt=(xpart(plane_endpt[i]), ypart(plane_endpt[i]), (-j+starting_hgt[i])/6);
    dot(inv_image_pt,inverse_image_pen+color[i]);
  }
  // this gives an endpoint to the vector that is 0.15 ps points from end
  domain_vec[i]=(0,0,0)--(xpart(plane_endpt[i]),ypart(plane_endpt[i]),starting_hgt[i]/6);
  draw((0,0,0)--arcpoint(reverse(domain_vec[i]),.15),VECTORPEN+color[i],arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
}
label(Label("{\tiny $\vec{v}_1$}"),domain_vec[0]);
label(Label("{\tiny $\vec{v}_2$}"),domain_vec[1],NW);
label(Label("{\tiny $\vec{v}_3$}",Relative(0.6)),domain_vec[2],SE);
draw(point(domain_vec[0],1)--point(domain_vec[2],1),VECTORPEN+gray(.7));
draw(point(domain_vec[1],1)--point(domain_vec[2],1),VECTORPEN+gray(.7));
