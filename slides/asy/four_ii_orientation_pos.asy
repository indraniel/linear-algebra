// four_ii_orientation_pos.asy
import jh;
real height; height=3cm; size(0,height);
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
settings.maxtile=(10,10);

import three;
import graph3;
triple camera_location=(20,4,3);
currentprojection=orthographic(camera=camera_location,target=(0,0,0));
// currentlight=(5,5,20);
currentlight=nolight;

pen line_pen=linecap(0)
             +linewidth(1.5pt);
pen dotted_line_pen=linecap(1)
  +linewidth(1pt)
  +gray(0.7)
  +linetype(new real[] {0,4});

// Axes
axes3(xlabel="{\tiny x}",ylabel="{\tiny y}",zlabel="{\tiny z}", 
      min=(-2.75,-0.75,-1),
      max=(4.25,6.25,4.25),
      AXISPEN,
      arrow=None);

// Vectors
triple v1=(1,4,1);
triple v2=(-2,3,1);
triple v3=(0,-1,2);
path3 parallelogram=(0,0,0)--v1--(v1+v2)--v2--cycle;

// Draw
draw(surface(parallelogram),rgb("fff0ca"));
// Ring the surface with direction arrows 
// draw((0,0,0)--v1,VECTORPEN+blue+gray(0.9),Arrow3(HookHead2,0.25*VECTORHEADSIZE,FillDraw,Relative(0.75),VECTORPEN+blue));
// draw(v1--(v1+v2),VECTORPEN+blue+gray(0.9),Arrow3(HookHead2,0.25*VECTORHEADSIZE,FillDraw,Relative(0.75),VECTORPEN+blue));
// draw((v1+v2)--v2,VECTORPEN+blue+gray(0.9),Arrow3(HookHead2,0.25*VECTORHEADSIZE,FillDraw,Relative(0.75),VECTORPEN+blue));
// draw(v2--(0,0,0),VECTORPEN+blue+gray(0.9),Arrow3(HookHead2,0.25*VECTORHEADSIZE,FillDraw,Relative(0.75),VECTORPEN+blue));
// Draw in two original arrows
draw((0,0,0)--v1,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
draw((0,0,0)--v2,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// Draw in arc arrow
path3 orient_arc=arc((0,0,0),2.5*unit(v1),2.5*unit(v2));
draw(orient_arc,blue);
triple arrow_loc=point(orient_arc,0.5);
draw(arrow_loc--(arrow_loc+0.2*dir(orient_arc,0.5)),blue,Arrow3(HookHead2(normal=camera_location),VECTORHEADSIZE,FillDraw,blue)); // ? doesn't show; refuses to make it longer than the line?
// draw(arrow_loc--(arrow_loc+0.05*dir(orient_arc,0.5)),blue,Arrow3(HookHead3,500*VECTORHEADSIZE,blue));

path3 vertical_vec=(0,0,0)--v3;
draw(vertical_vec,VECTORPEN+black,Arrow3(DefaultHead2,VECTORHEADSIZE,FillDraw));
// Label
//label("{\scriptsize $\vec{v}_1$}",v1,SE);
//label("{\scriptsize $\vec{v}_2$}",v2,NW);
//label("{\scriptsize $\vec{v}_3$}",v3,NE);

// Person
triple topfoot=point(vertical_vec,.6); // hip-(0,.12,.3);
triple botfoot=point(vertical_vec,.5); //hip-(0,.06,.6);
triple head=(v3.x,botfoot.y,v3.z+.1);
triple hip=head-(0,-0.2,0.475*(head.z-botfoot.z));
triple lefthand=point(vertical_vec,.9); //hip-(0,.06,.6);
// draw(circle(head,0.1,camera_location),red);
dot(head,red);
draw(hip--botfoot,red);
draw(hip--head,red);
triple shoulder=point(hip--head,.8);
path3 leftarm=lefthand--shoulder;
draw(leftarm,red);
path3 topleg=hip--(0.5*(hip.x+topfoot.x),0.5*(hip.y+topfoot.y),0.5*(hip.z+topfoot.z)+0.1)--topfoot;
draw(topleg,red);
triple righthand=(shoulder.x,shoulder.y+.35,shoulder.z-.35);
path3 rightarm=shoulder--righthand;
draw(rightarm,red);
