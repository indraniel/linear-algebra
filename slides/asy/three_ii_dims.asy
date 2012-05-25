// three_ii_dims.asy
import jh;
real height; height=2.25cm; size(0,height);
import settings;
settings.render=-3;
settings.maxtile=(20,20);

import three;
import graph3;
currentprojection=perspective((20,4,6),target=(0,4,0));

pen plane_vector_pen=linecap(0)
                       +linewidth(2.5pt);
pen inverse_image_pen=linecap(1)    // round, to make dots 
                       +linewidth(1.5pt);

// Axes
axes3(xlabel="",ylabel="",zlabel="", 
      min=(-0.2,-0.2,-0.2),
      max=(4.25,5.25,2.25),
      AXISPEN,
      arrow=None);

// Vectors in the codomain plane
pair plane_endpt[]={(2,3), (-4,5)};
plane_endpt.push(plane_endpt[0]+plane_endpt[1]);
path plane_vec[];
for(int i=0; i < 3; ++i) {
  plane_vec.push((0,0)--plane_endpt[i]);
}
pen color[]={rgb(0.9,0,0), rgb(0,0,0.75), rgb(0.8,0,0.75)}; 
path space_vec[];
int i=0;
draw(path3(plane_vec[0]),VECTORPEN+color[i]+gray(0.95),Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// }
label(Label("{\tiny $\vec{w}$}"),path3(plane_vec[0]));

// Domain vectors and inverse image sets
triple inv_image_pt;
real starting_hgt[]={8,10};  //  how high above the plane starts the inverse image
starting_hgt.push(starting_hgt[0]+starting_hgt[1]);
path3 domain_vec[];
int i=0;
  for(int j=0; j < 6; ++j) {
    inv_image_pt=(xpart(plane_endpt[i]), ypart(plane_endpt[i]), (j+starting_hgt[i])/6);
    dot(inv_image_pt,inverse_image_pen);
    inv_image_pt=(xpart(plane_endpt[i]), ypart(plane_endpt[i]), (-j+starting_hgt[i])/6);
    dot(inv_image_pt,inverse_image_pen);
  }
  // the vector endpoint is 0.15 ps points from inverse image dot
  domain_vec[i]=(0,0,0)--(xpart(plane_endpt[i]),ypart(plane_endpt[i]),starting_hgt[i]/6);
  draw((0,0,0)--arcpoint(reverse(domain_vec[i]),.15),VECTORPEN+color[i],arrow=Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
label(Label("{\tiny $\vec{v}$}"),domain_vec[0],N);
