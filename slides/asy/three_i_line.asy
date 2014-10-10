// three_i_line.asy
import jh;

import graph;
unitsize(1cm);

real Line(real x) {return 2*x;}

draw(graph(Line,-0.5,2.5,500),FCNPEN); 
// axes("$x$",rotate(0)*"$y=2x$",AXISPEN);
xaxis(shift(0,6)*"$x$",-0.6,2.6,AXISPEN,ticks=RightTicks(" ",n=1,Size=4));
yaxis(rotate(0)*"$y=2y$",-1.1,5.1,AXISPEN,ticks=LeftTicks(" ",n=1,Size=4));

draw((0,0)--(1,2),CURVEPEN+red, Arrow(DefaultHead,VECTORHEADSIZE));
