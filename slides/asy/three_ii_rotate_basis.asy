// three_ii_rotate_basis.asy
import jh;
texpreamble("\usepackage{../../linalgjh}");  // should go in jh.asy?
real height; height=.2*beamerpaperheight; size(0,height);
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

// Tics and Axes
real ticklength=0.07;
for(int i=-1; i<2; ++i){
  draw((i,0)--(i,-1*ticklength),AXISPEN);
}
for(int j=0; j<2; ++j){
  draw((0,j)--(-1*ticklength,j),AXISPEN);
}
path xaxis=(-1.25,0)--(1.25,0);
path yaxis=(0,-.25)--(0,1.25);
draw(xaxis,AXISPEN);
draw(yaxis,AXISPEN);

real theta=20;
// Vectors
pair a1=(1,0);
pair a2=(0,1);
path e1=(0,0)--a1;
path e2=(0,0)--a2;


draw(arc((0,0),1,0,180),gray(.94));
real arcrad=.4;
draw(arc((0,0),arcrad,0,theta),VECTORPEN+blue);
draw(arc((0,0),arcrad,90,90+theta),VECTORPEN+blue);
draw(e1,VECTORPEN+gray(.6),Arrow(DefaultHead,.7*VECTORHEADSIZE));
draw(rotate(theta)*e1,VECTORPEN,Arrow(DefaultHead,.7*VECTORHEADSIZE));
draw(e2,VECTORPEN+gray(.6),Arrow(DefaultHead,.7*VECTORHEADSIZE));
draw(rotate(theta)*e2,VECTORPEN,Arrow(DefaultHead,.7*VECTORHEADSIZE));
// Label
label("$\colvec{\cos\Theta \\ \sin\Theta}$",rotate(theta)*a1,E);
label("$\colvec{-\sin\Theta \\ \cos\Theta}$",rotate(theta)*a2,NW);
