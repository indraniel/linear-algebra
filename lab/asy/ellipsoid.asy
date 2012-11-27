// size(3inch);
// import settings; settings.render=10;
// import graph3;
// currentprojection=orthographic(2,4,1);
// currentlight=(5,4,4);
// real pi=2*acos(0);
// path3 P=(-1,-1,0)--(-1,1,0)--(1,1,0)--(1,-1,0)
//         --cycle;
// draw(surface(P),lightred,nolight);

// real f(pair z)
//    {return 2+sin(z.x*pi)*sin(z.y*pi);}
// draw(surface(f,(-1,-1),(1,1),nx=128), lightblue);

// pen axispen=(linewidth(1.5)+squarecap);
// axes3((-1.3,-1.3,0),(1.3,1.3,3.3),axispen);

import settings;
// settings.render=-30;
// settings.maxtile=(10,10);

import graph3;
size(4.5inch,0);
currentprojection=orthographic(-1,-4,0);
currentlight=light(-1,-4,0);

transform3 rot=rotate(-15,(0,1,0));
transform3 slide=shift((0,-35,0));
// Draw the ellipsoid
real a=3;
real b=2;
real c=1;
triple f(pair z) {
  triple v=(a*cos(z.x)*sin(z.y), b*sin(z.x)*sin(z.y), c*cos(z.y));
  return(v);
}
int meshnumber=20;
// pen p=rgb(0.2,0.5,0.7);
surface s=surface(f,(0,0),(2pi,pi),meshnumber,meshnumber,Spline);
draw(slide*rot*s,material(red,specularpen=0.2*red,diffusepen=0.5*red,emissivepen=.25*red,opacity=0.65));
pen vec_pen=linecap(0)
             +linewidth(.5pt);
real VECTORHEADSIZE=3;
path3 w=(0,0,0)--rot*(a,0,0);
draw(slide*w,vec_pen+red,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));

// Draw the tangent plane
real yextent=1.5;
real zextent=1.5;
path3 tplane=(a,-1*yextent,-1*zextent)
               -- (a,1*yextent,-1*zextent)
               -- (a,1*yextent,1*zextent)
               -- (a,-1*yextent,1*zextent) -- cycle;
draw(slide*rot*surface(tplane),material(green+white,ambientpen=.7*green,emissivepen=.25*green,opacity=0.75));
// draw(rot*tplane);
// axes3((-1.25*a,-1.25*b,-1.25*c),(1.35*a,1.25*b,1.25*c),xlabel="{\tiny $x$}");

// Draw the unit sphere
draw(rot*shift((-a,0,0))*surface(tplane),material(green+white,specularpen=0.2*green,ambientpen=.7*green,emissivepen=.25*green,opacity=0.75));
draw(scale(1,1,1)*unitsphere,material(lightblue+white,specularpen=0.2*lightblue,ambientpen=.8*lightblue,emissivepen=.25*lightblue,opacity=0.05));
path3 v=(0,0,0)--(1,0,0);
draw(v,vec_pen+blue,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));

