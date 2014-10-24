// three_ii_rotate.asy
import jh;
real height; height=.25*beamerpaperheight; size(0,height);
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
// settings.maxtile=(10,10);
settings.outformat="pdf";

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Axes
path xaxis=(-0.5,0)--(4.5,0);
path yaxis=(0,-.5)--(0,3.5);
real ticklength=0.15;

// Vectors
real theta=30;
transform t=rotate(theta);
pair a1=t*(2,0);
pair a2=t*(2,1);
path v1=t*(0,0)--a1;
path v2=t*(0,0)--a2;
path sum=t*(0,0)--(a1+a2);
path parallelogram=(0,0)--a1--(a1+a2)--a2--cycle;

// Draw
draw(xaxis,AXISPEN);
for(int i=0; i<5; ++i){
  draw((i,0)--(i,-1*ticklength),AXISPEN);
}
draw(yaxis,AXISPEN);
for(int j=0; j<4; ++j){
  draw((0,j)--(-1*ticklength,j),AXISPEN);
}

real s=1.5;
draw(scale(s)*v2,VECTORPEN+red,Arrow(DefaultHead,.7*VECTORHEADSIZE));
draw(v2,VECTORPEN+blue,Arrow(DefaultHead,.7*VECTORHEADSIZE));
// Label
label("$t_\Theta(\vec{v})$",a2,SE);
label("$t_\Theta(1.5\cdot \vec{v})$",scale(s)*a2,SE);
