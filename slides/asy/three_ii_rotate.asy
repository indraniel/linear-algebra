// three_ii_rotate.asy
import jh;
real height; height=1.75cm; size(0,height);

path xaxis=(-1.1,0)--(1.1,0);
path yaxis=(0,-1.1)--(0,1.1);
path unit_circle=scale(1.0)*unitcircle;

real theta=0.25;  // radians
path e1=(0,0)--(1,0);
path e2=(0,0)--(0,1);
path e1_rotated=(0,0)--expi(theta);
path e2_rotated=(0,0)--expi(theta+(3.14159/2));


draw(xaxis,AXISPEN);
draw(yaxis,AXISPEN);
draw(unitcircle,THINPEN);
// draw(e1,VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
// draw(e2,VECTORPEN,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
draw(e1_rotated,VECTORPEN+blue,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
draw(e2_rotated,VECTORPEN+blue,arrow=Arrow(DefaultHead,VECTORHEADSIZE));
