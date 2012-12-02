// ellipsoid2.asy
usepackage("../../conc");
import settings;
// settings.render=-30;
// settings.maxtile=(10,10);

import graph3;
size(4.5inch,0);
currentprojection=orthographic(-1,-4,0);
currentlight=light(-1,-4,0);

transform3 rot=rotate(-15,(-1,1,0));
transform3 slide=shift((0,-35,0));
real a=3;
real b=2;
real c=1;
triple f(pair z) {
  triple v=(a*cos(z.x)*sin(z.y), b*sin(z.x)*sin(z.y), c*cos(z.y));
  return(v);
}
// Draw the tangent plane
real yextent=1.5;
real zextent=1.5;
path3 tplane=(a,-1*yextent,-1*zextent)
               -- (a,1*yextent,-1*zextent)
               -- (a,1*yextent,1*zextent)
               -- (a,-1*yextent,1*zextent) -- cycle;
draw(slide*rot*surface(tplane),material(green+white,ambientpen=.7*green,emissivepen=.25*green,opacity=0.75));
label("\scriptsize $Q$",(slide*rot*(a,0.5,1.1)));
int meshnumber=20;
// pen p=rgb(0.2,0.5,0.7);
// Draw the ellipsoid
surface s=surface(f,(0,0),(2pi,pi),meshnumber,meshnumber,Spline);
draw(slide*rot*s,material(red,specularpen=0.2*red,diffusepen=0.5*red,emissivepen=.35*red,opacity=0.65));
pen vec_pen=linecap(0)
             +linewidth(.5pt);
real VECTORHEADSIZE=3;
path3 w=(0,0,0)--rot*(a,0,0);
label(Label("\scriptsize $\vec{w}$",Relative(0.45)),slide*w);
draw(slide*w,vec_pen+red,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw(slide*rot*surface(shift(-a,0,0)*tplane),material(lightgreen,ambientpen=.7*lightgreen,emissivepen=.25*lightgreen,opacity=0.75));
label("\scriptsize $\hat{Q}$",(slide*rot*(0,0.5,1.1)));

// draw(rot*tplane);
// axes3((-1.25*a,-1.25*b,-1.25*c),(1.35*a,1.25*b,1.25*c),xlabel="{\tiny $x$}");

// Draw the unit sphere, with the tangent plane
transform3 P_transform=rotate(15,(1,1,0));  // applied to v, and tangent plane  
draw(shift((1,0,0))*P_transform*shift(-a,0,0)*surface(tplane),material(green+white,specularpen=0.2*green,ambientpen=.7*green,emissivepen=.25*green,opacity=0.75));
draw(scale(1,1,1)*unitsphere,material(lightblue+white,specularpen=0.2*lightblue,ambientpen=.8*lightblue,emissivepen=.25*lightblue,opacity=0.05));
label("\scriptsize $P$",(shift((1,0,0))*P_transform*(0,0.7,1.2)));
path3 v=(0,0,0)--P_transform*(1,0,0);
label(Label("\scriptsize $\vec{v}$",Relative(0.4)),v);
draw(v,vec_pen+blue,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));

