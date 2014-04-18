% CH1.mp
%  MetaPost input file with chapter one pictures.
verbatimtex
%&latex
\documentclass{book}
\usepackage{bookjh} 
\usepackage{linalgjh}
\usepackage{tabstackengine} \setstacktabbedgap{1pt}
\begin{document}
etex

input jh
ahangle:=40;

%..........................................
% dblarrow_with_label
%  draw this:  |<----label----->|
%def dblarrow_with_label(expr ptone, pttwo, lbl)=
%  begingroup
%   pickup updown_tick;
%     drawdot ptone; drawdot pttwo;
%   drawdblarrow (ptone+.5(tickwidth,0v))--(pttwo-.5(tickwidth,0v));
%   pic p;
%   p=thelabel(btex lbl etex,.5[ptone,pttwo]);
%   unfill bbox p;
%   draw p;   
%  endgroup
%enddef;

%--------------------------------
% Fulcrum and Balls (1) and (2)
%  section 1.1
beginfig(1);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=.015in; v:=u; w:=v;
  % the teeter-totter
  linecap:=butt;  
  z0=(-55w,0v); z1=-z0;
  pickup pencircle scaled line_width_light;
  draw z0--z1;
  path fulcrum;
    z2=(-8w,-5v); x3=-x2; y3=y2;
    fulcrum=(0w,0v)--z2--z3--cycle;
    filldraw fulcrum withcolor shading_color; draw fulcrum;
  % the masses
  numeric unitmass, c, h, two;
    unitmass=16pt; % with c=4 and h=1, solved for (4/3)\pi x^3.
     c=0.98475*unitmass; h=0.62035*unitmass; two=0.78159*unitmass;
  draw fullcircle scaled c shifted (-15w,.5c);
    label(btex {\small $c$} etex,(-15w,.5c));
  draw fullcircle scaled h shifted (-40w,.5h);
    label(btex {\small $h$} etex,(-40w,.5h));
  draw fullcircle scaled two shifted (50w,.5two);
    label(btex {\small $2$} etex,(50w,.5two));
  % the decorations
  linecap:=squared;
  pickup pencircle scaled line_width_light;
  y4=1.3unitmass; y5=-.9unitmass;
  picture picc, pich, pictwo;
    picc=thelabel(btex {\tiny $15$} etex,(.5*(-15w),y5));
    pich=thelabel(btex {\tiny $40$} etex,(.5*(-40w),y4));
    pictwo=thelabel(btex {\tiny $50$} etex,(.5*(50w),y4));
  interim ahangle:=30;
  drawarrow ((-15w,y5)-(10pt,0v))--((-15w,y5)-(.5tickwidth,0v));
  drawarrow ((0w,y5)+(10pt,0v))--((0w,y5)+(.5tickwidth,0v));
    unfill bbox picc;
    draw picc; 
  drawdblarrow ((-40w,y4)+(.5tickwidth,0v))--((0w,y4)-(.5tickwidth,0v));
    unfill bbox pich;
    draw pich; 
  drawdblarrow ((0w,y4)+(.5tickwidth,0v))--((50w,y4)-(.5tickwidth,0v));
    unfill bbox pictwo;
    draw pictwo;
  pen vert_bar;
    vert_bar:=pensquare xscaled tickwidth yscaled 4pt;
    pickup vert_bar;
    drawdot (-15w,y5);  drawdot (0w,y5);
    drawdot (-40w,y4);  drawdot (0w,y4);
    drawdot (0w,y4);    drawdot (50w,y4);
endfig;

beginfig(2);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=.015in; v:=u; w:=v;

  linecap:=butt;  
  z0=(-55w,0v); z1=-z0;
  pickup pencircle scaled line_width_light;
  draw z0--z1;
  path fulcrum;
    z2=(-8w,-5v); x3=-x2; y3=y2;
    fulcrum=(0w,0v)--z2--z3--cycle;
    filldraw fulcrum withcolor shading_color; draw fulcrum;

  numeric unitmass, c, h, two;
    unitmass=16pt;
     c=0.98475*unitmass; h=0.62035*unitmass; two=0.78159*unitmass;
  draw fullcircle scaled c shifted (-25w,.5c);
    label(btex {\small $c$} etex,(-25w,.5c));
  draw fullcircle scaled h shifted (50w,.5h);
    label(btex {\small $h$} etex,(50w,.5h));
  draw fullcircle scaled two shifted (25w,.5two);
    label(btex {\small $2$} etex,(25w,.5two));

  linecap:=squared;
  pickup pencircle scaled line_width_light;
  y4=1.3unitmass; y5=-.9unitmass;
  picture picc, pich, pictwo;
    picc=thelabel(btex {\tiny $25$} etex,(.5*(-25w),y4));
    pich=thelabel(btex {\tiny $50$} etex,(.5*(50w),y4));
    pictwo=thelabel(btex {\tiny $25$} etex,(.5*(25w),y5));
  interim ahangle:=30;
  drawdblarrow ((-25w,y4)+(.5tickwidth,0v))--((0w,y4)-(.5tickwidth,0v));
    unfill bbox picc;
    draw picc; 
  drawdblarrow ((50w,y4)+(.5tickwidth,0v))--((0w,y4)-(.5tickwidth,0v));
    unfill bbox pich;
    draw pich; 
  drawdblarrow ((0w,y5)+(.5tickwidth,0v))--((25w,y5)-(.5tickwidth,0v));
    unfill bbox pictwo;
    draw pictwo;
  pen vert_bar;
    vert_bar:=pensquare xscaled tickwidth yscaled 4pt;
    pickup vert_bar;
    drawdot (-25w,y4);  drawdot (0w,y4);
    drawdot (50w,y4);  drawdot (0w,y4);
    drawdot (0w,y5);   drawdot (25w,y5);
endfig;

%--------------------------------------
% Linear Systems (3), (4), and (5)
def onetwo_axes=
  begingroup
    pickup pencircle scaled line_width_light;
    draw (-3.5w,0v)--(3.5w,0v);
    draw (0w,-1v)--(0w,4.5v);
      updown_ticks(3,(-3w,0v),(1w,0v));  updown_ticks(3,(1w,0v),(1w,0v));
      sidetoside_ticks(4,(0w,1v),(0w,1v));
  endgroup
enddef;

beginfig(3) %one solution
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  onetwo_axes;
  pickup pencircle scaled line_width_dark;
  z0=(-0.67w,4.5v); z1=(3w,-1v); % 3x+2y=7
  drawdblarrow z0--z1;
  z2=(-1.75w,-.75v); z3=(3w,4v); % x-y=-1
  drawdblarrow z2--z3;
endfig;

beginfig(4) % no solutions
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  onetwo_axes;
  pickup pencircle scaled line_width_dark;
  z0=(-0.67w,4.5v); z1=(3w,-1v); % 3x+2y=7
  drawdblarrow z0--z1;
  z2=(-1.67w,4.5v); z3=(2w,-1v); % 3x+2y=4
  drawdblarrow z2--z3;
endfig;

beginfig(5) % infinitely many solutions
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  onetwo_axes;
  pickup pencircle scaled line_width_dark;
  z0=(-0.67w,4.5v); z1=(3w,-1v); % 3x+2y=7
  drawdblarrow z0--z1;
endfig;



beginfig(6) % one-dimensional space
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.4in; v:=u; w:=v;

  pickup pencircle scaled line_width_dark;
  z0=(-3w,0v); z1=-z0; 
  drawdblarrow z0--z1;
endfig;



beginfig(7) % R^1
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.4in; v:=u; w:=v;

  pickup pencircle scaled line_width_dark;
  z0=(-3w,0v); z1=-z0; 
  drawdblarrow z0--z1;
  updown_ticks(2,(0w,0v),(1w,0v));  
  label.bot(btex {\small $0$} etex,(0w,-ticklength));
  label.bot(btex {\small $1$} etex,(1w,-ticklength));
endfig;



beginfig(8) % generic vector
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_dark;
  z0=(2w,1.5v); z1=(0w,0v); 
  drawarrow z0--z1;
endfig;



beginfig(9) % two equal vectors in space
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_dark;
  z0=(0w,.8v); z1=(2w,.8v);
  drawarrow z0--z1;
  z3=(-.7w,-.8v);
  drawarrow (z0-z3)--(z1-z3);
endfig;



beginfig(10) % same two equal vectors, with boxes
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  z0=(0w,.8v); z1=(2w,.8v);
  z3=(-.7w,-.8v);
  pickup pensquare scaled .4u;
  drawdot z0;
  drawdot (z0-z3);
  pickup pensquare scaled .35u;
  drawdot z0 withcolor shading_color;
  drawdot (z0-z3) withcolor shading_color;
  pickup pencircle scaled (1.414*line_width_dark);
  drawarrow z0--z1 withcolor white;
  drawarrow (z0-z3)--(z1-z3) withcolor white;
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z1;
  drawarrow (z0-z3)--(z1-z3);
endfig;


beginfig(11) % two vectors on axis (one over, two up)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  % onetwo_axes without the negative x's
  pickup pencircle scaled line_width_light;
  draw (-.5w,0v)--(3.5w,0v);
  draw (0w,-.5v)--(0w,3.5v);
  updown_ticks(3,(1w,0v),(1w,0v));
  sidetoside_ticks(3,(0w,1v),(0w,1v));

  pickup pencircle scaled line_width_dark;
  z0=(1w,1v); z1=(2w,3v); 
  drawarrow z0--z1;
  z3=(1w,0v); 
  drawarrow (z0+z3)--(z1+z3);
endfig;


beginfig(12) % many vectors on axis (one over, two up's)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  % axes 
  pickup pencircle scaled line_width_light;
  draw (-3.5w,0v)--(3.5w,0v);
  draw (0w,-1.5v)--(0w,3.5v);
  updown_ticks(3,(1w,0v),(1w,0v));
    updown_ticks(3,(-1w,0v),(-1w,0v));
  sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(1,(0w,-1v),(0w,-1v));

  pickup pencircle scaled line_width_dark;
  z0=(0w,0v); z1=(1w,2v); 
  drawarrow z0--z1;
  z3=(1w,1v);          drawarrow (z0+z3)--(z1+z3);
  z4=(-1.75w,-1.5v);   drawarrow (z0+z4)--(z1+z4);
  z5=(1.6w,-1.2v);     drawarrow (z0+z5)--(z1+z5);
  z6=(-2.3w,-.5v);     drawarrow (z0+z6)--(z1+z6);
  z7=(-.6w,1.2v);      drawarrow (z0+z7)--(z1+z7);
  z8=(-3.1w,.8v);      drawarrow (z0+z8)--(z1+z8);
endfig;



beginfig(13) % three vectors in space, the second the neg and the third triple
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_dark;
  z0=(0w,1v); z1=(2w,1v);
  drawarrow z0--z1;
    label.top(btex {\small $\vec{v}$} etex,.5[z0,z1]);
  z2=(0w,-1v); z3=(-2w,-1v);
  drawarrow (z2)--(z3);
    label.top(btex {\small $-\vec{v}$} etex,.5[z2,z3]);
  z4=(0w,0v); z5=(6w,0v);
  drawarrow (z4)--(z5);
    label.top(btex {\small $3\vec{v}$} etex,.5[z4,z5]);
endfig;



beginfig(14) % a vector as the sum of two others; not parallelogram
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  numeric n; %what percentage of arrow ends to knock off?
  n:=.02;
  pickup pencircle scaled line_width_light;
  z0=(0w,0v); z1=(5w,.65v);
  drawarrow (n[z0,z1])--((1-n)[z0,z1]);
    label.bot(btex {\small $\vec{v}$} etex,.5[z0,z1]);
  z2=(6w,3v);
  drawarrow (n[z1,z2])--((1-n)[z1,z2]);
    label.rt(btex {\small $\vec{w}$} etex,.5[z1,z2]);
  pickup pencircle scaled line_width_dark;
  z4=0.02*(-1*(y2-y0),x2-x0);  % perp to hyp to offset from w's arrow
  drawarrow (n[z0,z2]+z4)--((1-n)[z0,z2]+z4);
    label.ulft(btex {\small $\vec{v}+\vec{w}$} etex,.707[z0+z4,z2+z4]);
endfig;



beginfig(15) % parallelogram rule for a vector as the sum of two others
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  numeric n; %what percentage of arrow ends to knock off?
  n:=.02;
  pickup pencircle scaled line_width_light;
  z0=(0w,0v); z1=(5w,.65v);
  z2=(6w,3v); % sum
  z4=0.02*(-1*(y2-y0),x2-x0);  % perp to hyp to offset from w's arrow
  z5=z2-z1;
  pickup pencircle scaled line_width_light;
  draw (n[z5,z2])--((1-5n)[z5,z2]) withcolor shading_color; % nb 5n for a-head
  draw (n[z1,z2])--((1-n)[z1,z2]) withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  drawarrow z0--z2 withcolor white;
  pickup pencircle scaled line_width_dark;
%  drawarrow (n[z0,z2])--((1-n)[z0,z2]);
%    label.urt(btex {\small $\vec{v}+\vec{w}=
%                      \smash{\colvec{v_1+w_1 \\ v_2+w_2}}$} etex,z2);
  drawarrow (n[z0,z2])--((1-n)[z0,z2]);
    label.urt(btex {\small $\vec{v}+\vec{w}$} etex,z2);
  pickup pencircle scaled line_width_light;
  drawarrow (n[z0,z1])--((1-n)[z0,z1]);
%    label.bot(btex {\small $\vec{v}=\colvec{v_1 \\ v_2}$} etex,z1);
    label.bot(btex {\small $\vec{v}$} etex,z1);
  drawarrow (n[z0,z2])--((1-n)[z0,z5]);
%    label.ulft(btex {\small $\vec{w}=\colvec{w_1\\ w_2}$} etex,z5);
    label.ulft(btex {\small $\vec{w}$} etex,z5);
endfig;








beginfig(16) % vector description of a line
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.16in; v:=u; w:=v;
  numeric n; %what percentage of arrow ends to knock off?
  n:=.00; % tried some values; looks funny
  
  % onetwo_axes without the negative x's
  pickup pencircle scaled line_width_light;
  draw (-1.5w,0v)--(4.5w,0v);
  draw (0w,-.5v)--(0w,3.5v);
  updown_ticks(4,(1w,0v),(1w,0v));
    updown_ticks(1,(-1w,0v),(-1w,0v));
  sidetoside_ticks(3,(0w,1v),(0w,1v));

  z0=(-1w,3v);   z1=(4.5w,0.25v);  % t=-1 and t=1.75 
  pickup pencircle scaled (2*line_width_dark);
  draw z0--z1 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw z0--z1 withcolor shading_color;
  z2=(0w,0v); z3=(1w,2v);
    drawarrow z2--((1-n)[z2,z3]) withcolor shading_color;
  z4=(3w,1v);
    drawarrow z2--((1-n)[z2,z4]) withcolor shading_color;
  drawarrow z3--z4;
  label.urt(btex {\small 
       \ $\colvec{2 \\ -1}=\colvec{3 \\ 1}-\colvec{1 \\ 2}$} etex,.5[z3,z4]);  
endfig;



input jh3d
beginfig(17) % line in R3 thru (1,2,3) and (5,5,5)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,-1,0,-1);  vect_def(c_b,3,4,3); % t=-2 and 2
  vect_def(c_c,1,2,1); vect_def(c_d,2,3,2);

  % 
  set_point(Obs,20,5,5);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(origin,Obs_phi);
  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(3.5,4.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3.5,4.5,2.5,3,4,2);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,origin);
  pickup pencircle scaled (2*line_width_dark);
  draw z1--z2 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw z1--z2 withcolor shading_color;
  drawarrow z5--z3 withcolor shading_color;
  drawarrow z5--z4 withcolor shading_color;
  drawarrow z3--z4;
%  label.lrt(btex {\small $\colvec{1 \\ 1 \\ 1}$} etex,.5[z3,z4]);
  \label.lrt(btex  {\small $\set{ \colvec{1 \\ 2 \\ 1}
                  +t\cdot\colvec{1 \\ 1 \\ 1}
                   \suchthat t\in\Re}$} etex,z2);
endfig;



beginfig(18) % 2-flat in R3; 2x+y+z=4
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  % four corners of the part of the plane shown 
  vect_def(c_b,1.15,-0.3,2);    vect_def(c_d,-0.5,3,2);       
  vect_def(c_a,2.3,-0.3,-0.3);  vect_def(c_c,0.65,3,-0.3); 

  % I don't understand what these do.
  set_point(Obs,10,4,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  pickup pencircle scaled line_width_dark;
  draw z1--z2--z4--z3--cycle;

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.95,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.95,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

  label.rt(btex {\hspace*{0.05in} \small 
          $P=\set{\colvec{x \\ y \\ z} \suchthat 2x+y+z=4}$} etex,.618[z3,z4]);
endfig;






% beginfig(19) % 2-flat in R3; 2x+y+z=4
%   numeric u;  %scaling factor
%   numeric v;  %vertical scaling factor
%   numeric w;  %horizontal scaling factor
%   u:=.2in; v:=u; w:=v;
%   drawing_scale:=30pt;

%   save c_a, c_b, c_c, c_d,
%        origin;
%   c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
%   c_e:=new_vect;  c_f:=new_vect;  c_g:=new_vect;
%   origin:=new_vect; vect_def(origin,0,0,0);

%   vect_def(c_a,2.1,-0.1,-0.1);  vect_def(c_b,1.05,-0.1,2);
%   vect_def(c_c,0.55,3,-0.1); vect_def(c_d,-0.5,3,2);
%   vect_def(c_e,1.5,1.5,1); vect_def(c_f,1,2.5,1);
%   vect_def(c_g,1,1.5,2); 

%   % I don't understand what these do.
%   set_point(Obs,10,5,5);
%   Obs_phi:=90; Obs_dist:=8;
%   point_of_view_abs(origin,Obs_phi);
%   % Now project the 3D points c_a ... c_d down to z1 ... z4
%   project_point(1,c_a);
%   project_point(2,c_b);
%   project_point(3,c_c);
%   project_point(4,c_d);
%   project_point(5,c_e);
%   project_point(6,c_f);
%   project_point(7,c_g);
%   pickup pencircle scaled line_width_dark;
%   draw z1--z2--z4--z3--cycle;

%   % draw axes (with a white border)
%   pickup pencircle scaled line_width_dark;
%   xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
%   draw_xyz_axes(2.5,3.5,2.5);
%   pickup pencircle scaled line_width_light;
%   xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
%   draw_xyz_axes_withticks(2.5,3.5,2.5,2,3,2);

% %  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
%   pickup pencircle scaled (2*line_width_dark);
%   draw z2--z4 withcolor white;
%   pickup pencircle scaled line_width_dark;
%   draw .5[z1,z2]--z2--z4--.5[z4,z3];

%   label.lft(btex {\small \hspace*{1em}
%                        $P=\set{\colvec{2 \\ 0 \\ 0}
% 		               +\colvec{-0.5 \\ 1 \\ 0} y
% 		               +\colvec{-0.5 \\ 0 \\ 1} z
% 		               \suchthat y,z\in\Re}$} etex,.707[z3,z4]);
%   drawarrow (z5+(.25w,-.1v))--(z6+(.25w,-.1v));
%   drawarrow z5--z7;
% endfig;
beginfig(19) % 2-flat in R3; 2x+y+z=4, paramatized
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  c_e:=new_vect;  c_f:=new_vect;  c_g:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  % four corners of the part of the plane 
  vect_def(c_b,1.15,-0.3,2);    vect_def(c_d,-0.5,3,2);       
  vect_def(c_a,2.3,-0.3,-0.3);  vect_def(c_c,0.65,3,-0.3); 
  % three vectors from the paramatrization
  vect_def(c_e,2,0,0); vect_def(c_f,1.5,1,0);
  vect_def(c_g,1.5,0,1); 

  % I don't understand what these do.
  set_point(Obs,10,4,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,c_e);
  project_point(6,c_f);
  project_point(7,c_g);
  project_point(8,origin);
  pickup pencircle scaled line_width_dark;
  draw z1--z2--z4--z3--cycle;

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.95,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.95,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

%   label.rt(btex {\hspace*{0.05in} \small 
%                        $P=\set{\colvec{2 \\ 0 \\ 0}
% 		               +\colvec{-0.5 \\ 1 \\ 0} y
% 		               +\colvec{-0.5 \\ 0 \\ 1} z
% 		               \suchthat y,z\in\Re}$}} etex,.618[z3,z4]);
  % sides and diagonal of parallelogram
  save c_h, c_i, c_j;
  c_h:=new_vect; c_i:=new_vect; c_j:=new_vect;
  vect_def(c_h,1,2,0);
  vect_def(c_i,1,0,2);
  vect_def(c_j,1,1,1);
  project_point(9,c_h);
  project_point(10,c_i);
  project_point(11,c_j);
  pickup pencircle scaled (2*line_width_light);
  draw .05[z7,z11]--.875[z7,z11] withcolor white;
  draw .05[z6,z11]--.875[z6,z11] withcolor white;
  pickup pencircle scaled line_width_light;
  draw .05[z7,z11]--.875[z7,z11];
  draw .05[z6,z11]--.875[z6,z11];
  pickup pencircle scaled (2*line_width_dark);
  drawarrow .04[z5,z11]--z11 withcolor white;
  pickup pencircle scaled line_width_dark;
  drawarrow .04[z5,z11]--z11;
  %dotlabels.rt(5,6,7,9,10,11);
  % draw these last or else the diagonal vector cuts into them
  pickup pencircle scaled line_width_dark;
  %drawarrow z8--z5 withcolor shading_color;
  drawarrow z5--z6 withcolor shading_color;
  drawarrow z5--z7 withcolor shading_color;

  label.rt(btex {\hspace*{0.05in} \small 
          $P=\set{\colvec[r]{2 \\ 0 \\ 0}
         +y\cdot\colvec[r]{-1/2 \\ 1 \\ 0}
         +z\cdot\colvec[r]{-1/2 \\ 0 \\ 1}\suchthat y,z\in\Re}$} etex,.618[z3,z4]);
endfig;



beginfig(20) % 2-flat in R3; 2x+y+z=4, paramatized
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  c_e:=new_vect;  c_f:=new_vect;  c_g:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  % four corners of the part of the plane 
  vect_def(c_b,1.15,-0.3,2);    vect_def(c_d,-0.5,3,2);       
  vect_def(c_a,2.3,-0.3,-0.3);  vect_def(c_c,0.65,3,-0.3); 
  % three vectors from the paramatrization
  vect_def(c_e,2,0,0); vect_def(c_f,1.5,1,0);
  vect_def(c_g,1.5,0,1); 

  % I don't understand what these do.
  set_point(Obs,10,4,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,c_e);
  project_point(6,c_f);
  project_point(7,c_g);
  project_point(8,origin);
  pickup pencircle scaled line_width_dark;
  draw z1--z2--z4--z3--cycle;

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.95,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.95,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

  label.rt(btex \hbox{\hspace*{0.05in} \small 
                       $P=\set{\colvec{2 \\ 0 \\ 0}
		               +\colvec{-0.5 \\ 1 \\ 0} y
		               +\colvec{-0.5 \\ 0 \\ 1} z
		               \suchthat y,z\in\Re}$} etex,.618[z3,z4]);
  pickup pencircle scaled line_width_dark;
  drawarrow z8--z5 withcolor shading_color;
  drawarrow z5--z6;
  drawarrow z5--z7;
endfig;


beginfig(21) % two vectors in R3, just in space
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,1,0,1);  vect_def(c_b,2,-1,3); % first vector from c_a to c_b
  vect_def(c_c,1,1,1); vect_def(c_d,2,3,2.5); % second vector

  % I don't understand what these do.
  set_point(Obs,20,5,5);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(origin,Obs_phi);
  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(3.5,4.5,3.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3.5,4.5,3.5,3,4,3);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,origin);
  pickup pencircle scaled (2*line_width_dark);
  drawarrow z1--z2 withcolor white;
  drawarrow z3--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  drawarrow z1--z2;
    label.llft(btex {\small $\vec{v}$} etex,.707[z1,z2]);
  drawarrow z3--z4;
    label.lrt(btex {\small $\vec{u}$} etex,.707[z3,z4]);
endfig;





beginfig(22) % two vectors in R3, canonical position, in a plane, with a hyp
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  numeric n; %what percentage of arrow ends to knock off?
  n:=.00; % tried some values
  z0=(0pt,1pt);
  
  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  c_c:=new_vect;  c_d:=new_vect;   c_e:=new_vect;  c_f:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,1,-1,2); % first vector
  vect_def(c_b,1,2,1.5); % second vector 
  vect_def(c_c,2/11,-2,0); % plane boundaries: y=-2, z=0 
  vect_def(c_d,20/11,-2,3); %   y=-2, z=3 
  vect_def(c_e,-3/11,3,0); %      y=3, z=0
  vect_def(c_f,15/11,3,3); %       y=3, z=3  

  % I don't understand what these do.
  set_point(Obs,20,5,5);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(origin,Obs_phi);
  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(3.5,4.5,3.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3.5,4.5,3.5,3,4,3);
  % draw plane boundary
  project_point(4,c_c);
  project_point(5,c_d);
  project_point(6,c_e);
  project_point(7,c_f);
%  pickup pencircle scaled line_width_dark;
%  draw z4--z5--z7--z6--cycle withcolor white;
  pickup pencircle scaled line_width_light;
  draw z4--z5--z7--z6--cycle withcolor shading_color;
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,origin);
  pickup pencircle scaled (2*line_width_dark);
  drawarrow z3--z1 withcolor white;
  drawarrow z3--z2 withcolor white;
  drawarrow (n[z1,z2]+z0)--((1-n)[z1,z2]+z0) withcolor white;
  pickup pencircle scaled line_width_dark;
  drawarrow z3--z1;
  drawarrow z3--z2;
  drawarrow (n[z1,z2]+z0)--((1-n)[z1,z2]+z0);
endfig;






beginfig(23) % a vec as sum of two others; illustrate Triangle Inequality
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  numeric n; %what percentage of arrow ends to knock off?
  n:=.01;
  pickup pencircle scaled line_width_light;
  z0=(0w,0v); z1=(5w,.65v);
  drawarrow (.5n[z0,z1])--((1-n)[z0,z1]);
    label.bot(btex {\small $\vec{u}$} etex,.5[z0,z1]);
  z2=(6w,3v);
  drawarrow (n[z1,z2])--((1-n)[z1,z2]);
    label.rt(btex {\small $\vec{v}$} etex,.5[z1,z2]);
  pickup pencircle scaled line_width_dark;
  z4=0.02*(-1*(y2-y0),x2-x0);  % perp to hyp to offset from w's arrow
  drawarrow (.5n[z0,z2]+z4)--((1-n)[z0,z2]+z4);
    label.ulft(btex {\small $\vec{u}+\vec{v}$} etex,.5[z0+z4,z2+z4]);
  z5=whatever[z0,z1]=whatever[n[z0,z2]+z4,(1-n)[z0,z2]+z4];
  drawpoint(z5);
    label.lft(btex {\small\textit{start}} etex,z5);
  z6=whatever[z1,z2]=whatever[n[z0,z2]+z4,(1-n)[z0,z2]+z4];
  drawpoint(z6);
    label.rt(btex {\small\textit{finish}} etex,z6);
endfig;






beginfig(24) % a plane with a bend in it
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  numeric n; %what percentage of arrow ends to knock off?
  n:=.01;
  % first the shortcut
  x8=0w; x9=4w; y8=y9=.35v;
  pickup pencircle scaled line_width_dark;
  draw z8--z9 withcolor shading_color;
  % next the surface  
  z1=(-.75w,0v);
  z2=(0.65w,0v);
  z3=(0.75w,0v);
  z4=(2.2w,0.7v);
  z5=(3.25w,0v);
  z6=(3.35w,0v);
  z7=(4.75w,0v);
  path p[];
  p1=z1--z2...z3..z4..z5...z6--z7;
  z0=(0.4w,1.25v); % width and offset of surface
  transform t[];
  t0=identity shifted z0;
  p2=p1 transformed t0;
  p3=p1--reverse p2--cycle;
  pickup pencircle scaled line_width_dark;
  draw p3 withcolor white;
  pickup pencircle scaled line_width_light;
  draw p3;
  % the solid curve that is in the surface
  p4=(x8,0w)--z2..z3..z4..z5..z6--(x9,0v);
  t1=identity shifted (0w,y8);
  pickup pencircle scaled line_width_dark;
  draw p4 transformed t1;
  drawpoint(z8);
    label.top(btex {\small $P$} etex,z8);
  drawpoint(z9);
    label.top(btex {\small $Q$} etex,z9);
endfig;




beginfig(25) % two vectors in plane, orthogonal
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  % onetwo_axes without the negative x's
  pickup pencircle scaled line_width_light;
  draw (-.5w,0v)--(3.5w,0v);
  draw (0w,-.5v)--(0w,3.5v);
  updown_ticks(3,(1w,0v),(1w,0v));
  sidetoside_ticks(3,(0w,1v),(0w,1v));

  pickup pencircle scaled line_width_dark;
  z0=(0w,2v); z1=(1w,1v); 
  drawarrow z0--z1;
  z3=(2w,2v); z4=(3w,3v); 
  drawarrow z3--z4;
%  label.rt(btex {\small
%              $\colvec{1 \\ -1}\dotprod\colvec{1 \\ 1}=0$} etex,(3w,1.5v));
endfig;





beginfig(26) % two vectors in R3, not orthogonal
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;

  save c_a, c_b,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,0,3,2);  vect_def(c_b,1,1,0); %

  % I don't understand what these do.
  set_point(Obs,20,5,5);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(origin,Obs_phi);
  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.5,3.5,3.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.5,3.5,2.5,2,3,2);
  % Now project the 3D points down to z1 ... z2
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(0,origin);
  pickup pencircle scaled (2*line_width_dark);
  drawarrow z0--z1 withcolor white;
  drawarrow z0--z2 withcolor white;
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z1;
    label.rt(btex {\small
                          $\colvec{0 \\ 3 \\ 2}$} etex,z1);
  drawarrow z0--z2;
    label.lrt(btex {\small
                         $\colvec{1 \\ 1 \\ 0}$} etex,z2);
endfig;




beginfig(27) % equiv relation; row-equiv mats
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\small \ldots} etex,z13);
  x14=.8[x0,x9]; y14=.7[y10,y9]; drawpoint(z14);
    label.rt(btex {\small $A$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
    label.rt(btex {\small $B$} etex,z15);
endfig;




% 28 is below.  Why?








beginfig(29) % equiv relation; canonical reps shown
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\small \ldots} etex,z13);
  x14=.125[x0,x1]; y14=.84[y0,y3];  % upper left zone
    label(btex {\small $\star$} etex,z14);
  x15=.54[x0,x1]; y15=.875[y0,y3];  % upper right 
    label(btex {\small $\star$} etex,z15);
  x16=.14[x0,x1]; y16=.175[y0,y3];  % bottom left
    label(btex {\small $\star$} etex,z16);
  x17=.28[x0,x1]; y17=.5[y0,y3];    % middle
    label(btex {\small $\star$} etex,z17);
endfig;






beginfig(30) % equiv relation; two specific row-equiv mats
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.75in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\small \ldots} etex,z13);
  x14=.65[x0,x9]; y14=.7[y10,y9]; drawpoint(z14);
  % label.rt(btex {\tiny       $\Bigl(\begin{smallmatrix}
  %                               1  &3  \\
  %                               2  &7
  %                             \end{smallmatrix}\Bigr)$} etex,z14);
  label.rt(btex {\tiny       $\parenMatrixstack{
                                1  &3  \\
                                2  &7
                              }$} etex,z14);
  x15=.7[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
  % label.rt(btex {\tiny       $\Bigl(\begin{smallmatrix}
  %                               1  &3  \\
  %                               0  &1
  %                             \end{smallmatrix}\Bigr)$} etex,z15);
  label.rt(btex {\tiny       $\parenMatrixstack{
                                1  &3  \\
                                0  &1
                              }$} etex,z15);
endfig;










beginfig(31) % equiv relation; canonical reps shown, incl 2x2 identity
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.75in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\small \ldots} etex,z13);
  x14=.125[x0,x1]; y14=.84[y0,y3];  % upper left zone
    label(btex {\small $\star$} etex,z14);
  x15=.54[x0,x1]; y15=.875[y0,y3];  % upper right 
    label(btex {\small $\star$} etex,z15);
  x16=.14[x0,x1]; y16=.175[y0,y3];  % bottom left
    label(btex {\small $\star$} etex,z16);
  x17=.28[x0,x1]; y17=.6[y0,y3];    % middle
    label(btex {\small $\star$} etex,z17);
    % label.bot(btex {\tiny $\Bigl(\begin{smallmatrix}
    %                             1  &0  \\
    %                             0  &1
    %                           \end{smallmatrix}\Bigr)$} etex,z17);
    label.bot(btex {\tiny $\parenMatrixstack{
                                1  &0  \\
                                0  &1
                             }$} etex,z17);
endfig;




beginfig(32) % 2-flat in R3; 2x+y+z=4, paramatized
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  c_e:=new_vect;  c_f:=new_vect;  c_g:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  % four corners of the part of the plane 
  vect_def(c_b,1.15,-0.3,2);    vect_def(c_d,-0.5,3,2);       
  vect_def(c_a,2.3,-0.3,-0.3);  vect_def(c_c,0.65,3,-0.3); 
  % three vectors from the paramatrization
  vect_def(c_e,2,0,0); vect_def(c_f,1.5,1,0);
  vect_def(c_g,1.5,0,1); 

  % I don't understand what these do.
  set_point(Obs,10,4,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,c_e);
  project_point(6,c_f);
  project_point(7,c_g);
  project_point(8,origin);
  pickup pencircle scaled line_width_dark;
  draw z1--z2--z4--z3--cycle;

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.95,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.95,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

%   label.rt(btex {\hspace*{0.05in} \small 
%                        $P=\set{\colvec{2 \\ 0 \\ 0}
% 		               +\colvec{-0.5 \\ 1 \\ 0} y
% 		               +\colvec{-0.5 \\ 0 \\ 1} z
% 		               \suchthat y,z\in\Re}$}} etex,.618[z3,z4]);
  pickup pencircle scaled line_width_dark;
  %drawarrow z8--z5 withcolor shading_color;
  %drawarrow z5--z6 withcolor shading_color;
  %drawarrow z5--z7 withcolor shading_color;
  % sides and diagonal of parallelogram
   save c_h, c_i, c_j;
   c_h:=new_vect; c_i:=new_vect; c_j:=new_vect;
   vect_def(c_h,1,2,0);
   vect_def(c_i,1,0,2);
   vect_def(c_j,1,1,1);
   project_point(9,c_h);
   project_point(10,c_i);
   project_point(11,c_j);
   pickup pencircle scaled line_width_dark;
   drawarrow z5--z9;
   %drawarrow z5--z9;
endfig;






% WARNING! at the moment arrowsimple messes up arrowheads.

beginfig(28) % equiv relation; some row-equiv mats shown double-arrowed
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1in; v:=u; w:=v;

  input arrow
  %input arrow
  z0=(.8w,0v);
  boxit.a0(btex \strut{\small $\displaystyle
                 \begin{mat}
		   1  &0  \\
		   0  &1 
		 \end{mat}$} etex);
  a0.c=z0;
  z1=(0w,.4v);
  boxit.a1(btex {\small $\displaystyle
                 \begin{mat}
		   2  &2  \\
		   4  &3 
		 \end{mat}$} etex);
  a1.c=z1;	       
  z2=(.55w,.9v);
  boxit.a2(btex {\small $\displaystyle
                 \begin{mat}
		   2  &0  \\
		   0  &-1
		 \end{mat}$} etex);
  a2.c=z2;
  z3=(1.35w,.75v);
  boxit.a3(btex {\small $\displaystyle
                 \begin{mat}
		   1  &1  \\
		   0  &-1
		 \end{mat}$} etex);
  a3.c=z3;
  z4=(1.5w,.25v);
  boxit.a4(btex {\small $\displaystyle
                 \begin{mat}
		   2  &2  \\
		   0  &-1
		 \end{mat}$} etex);
  a4.c=z4;
  % draw them w/o enclosing box shown
  drawunboxed(a0,a1,a2,a3,a4);
  % connect with dbl-headed arrows that go from box edge to box edge
  drawdblarrowsimple a0.c..a1.c cutbefore bpath a0 cutafter bpath a1; 
  drawdblarrowsimple a0.c..a2.c cutbefore bpath a0 cutafter bpath a2; 
  drawdblarrowsimple a0.c..a3.c cutbefore bpath a0 cutafter bpath a3; 
  drawdblarrowsimple a0.c..a4.c cutbefore bpath a0 cutafter bpath a4; 
  drawdblarrowsimple a0.c..a2.c cutbefore bpath a0 cutafter bpath a2; 
  drawdblarrowsimple a1.c..a2.c cutbefore bpath a1 cutafter bpath a2; 
  drawdblarrowsimple a1.c..a3.c cutbefore bpath a1 cutafter bpath a3; 
  drawdblarrowsimple a1.c..a4.c cutbefore bpath a1 cutafter bpath a4; 
  drawdblarrowsimple a2.c..a3.c cutbefore bpath a2 cutafter bpath a3; 
  drawdblarrowsimple a2.c..a4.c cutbefore bpath a2 cutafter bpath a4; 
  drawdblarrowsimple a3.c..a4.c cutbefore bpath a3 cutafter bpath a4; 
endfig;




% ================= ppivot next ===============================
beginfig(33) % two lines, almost identical
  numeric u, v, w;
  u:=.2in; w:=u; v:=u;

  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (-1.25w,0v)--(4.25w,0v); yaxis = (0w,-1.25v)--(0w,4.25v);
  pickup pensquare scaled line_width_light;
  draw xaxis; updown_ticks(6,(-1w,0v),(1w,0v));
  draw yaxis; sidetoside_ticks(6,(0w,-1v),(0w,1v));
    
  z0=(-197w,100v); z1=(203w,-100v); %on first line
  z2=(-196.999998w,100v); z3=(202.999998w,-100v); % on second line

  z10 = whatever[z0,z1]; x10=xpart(point 0 of xaxis);
  z11 = whatever[z0,z1]; x11=xpart(point 1 of xaxis);
  z12 = whatever[z2,z3]; x12=xpart(point 0 of xaxis);
  z13 = whatever[z2,z3]; x13=xpart(point 1 of xaxis);

  pickup pencircle scaled line_width_light;
  draw z10--z11;
  draw z12--z13;
  z14 = (1w,1v);
  drawpoint(z14);  label.rt(btex {\small $(1,1)$} etex,z14);
endfig;



beginfig(34) % two lines, meet at good angle
  numeric u, v, w;
  u:=.2in; w:=u; v:=u;

  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (-1.25w,0v)--(4.25w,0v); yaxis = (0w,-1.25v)--(0w,4.25v);
  pickup pensquare scaled line_width_light;
  draw xaxis; updown_ticks(6,(-1w,0v),(1w,0v));
  draw yaxis; sidetoside_ticks(6,(0w,-1v),(0w,1v));

  % make bbox bigger than picture
  pickup pencircle scaled 0pt;
  drawdot((1w,-1.55v)); drawdot((1w,4.55v));
  pickup pensquare scaled line_width_light;
  
  z0=(-197w,100v); z1=(203w,-100v); %on first line x+2y=3
  z2=(201w/3,100v); z3=(-199w/3,-100v); % on second line 3x-2y=1

  z10 = whatever[z0,z1]; x10=xpart(point 0 of xaxis);
  z11 = whatever[z0,z1]; x11=xpart(point 1 of xaxis);
  z12 = whatever[z2,z3]; y12=ypart(point 1 of yaxis);
  z13 = whatever[z2,z3]; y13=ypart(point 0 of yaxis);

  pickup pencircle scaled line_width_light;
  draw z10--z11;
  draw z12--z13;
  z14 = (1w,1v);
  drawpoint(z14);  label.rt(btex {\small $(1,1)$} etex,z14);
endfig;



%==============Topic: Networks next==========

u:=.8cm; v:=u; w:=v;

% resistors have four zigzags; scale from _Elec Meas_ Smith, Wiedenbeck
numeric zigwidth, zigheight;
  zigwidth=.4cm;
  zigheight=.2cm;

def resistor=
  (-1.0zigwidth,0)
          ---(-.875zigwidth,.5zigheight)
          ---(-.625zigwidth,-.5zigheight)
          ---(-.375zigwidth,.5zigheight)
          ---(-.125zigwidth,-.5zigheight)
          ---(.125zigwidth,.5zigheight)
          ---(.375zigwidth,-.5zigheight)
          ---(.625zigwidth,.5zigheight)
          ---(.875zigwidth,-.5zigheight)
          ---(1.0zigwidth,0)
enddef;

% resistor_path  returns a path connecting the points and containing a resistor
%  args: from_pt, to_pt    points
vardef resistor_path(expr from_pt, to_pt)=
  transform t;
  path p_init, p, p_final;
  t=identity rotated (angle(to_pt-from_pt)) shifted (.5[to_pt,from_pt]);
  p=(resistor) transformed t;
  p_init=from_pt--(point 0 of p);
  p_final=(point (arclength p) of p)--to_pt;
  p_init & p & p_final
enddef;

def draw_resistor_path(expr from_pt, to_pt)=
  draw resistor_path(from_pt,to_pt);
enddef;



%picture batt;
%batt:=nullpicture;
numeric battery_longline_length, battery_shortline_length;
battery_longline_length=.5w; battery_shortline_length=.3w;
numeric battery_line_sep;
battery_line_sep=.1cm;


vardef draw_battery_path(expr from_pt, to_pt)=
  transform t;
  path b_init, b[], plate[], b_final;
  t=identity rotated ((angle(to_pt-from_pt)+90)) shifted (.5[to_pt,from_pt]);
  plate0=(-.5battery_longline_length,1.5battery_line_sep)
            --(.5battery_longline_length,1.5battery_line_sep);
  plate1=(-.5battery_shortline_length,.5battery_line_sep)
	    --(.5battery_shortline_length,.5battery_line_sep);
  plate2=(-.5battery_longline_length,-.5battery_line_sep)
            --(.5battery_longline_length,-.5battery_line_sep);
  plate3=(-.5battery_shortline_length,-1.5battery_line_sep)
	    --(.5battery_shortline_length,-1.5battery_line_sep);
  b0=(plate0) transformed t; % long line associated with `from_pt'
  b1=(plate1) transformed t;
  b2=(plate2) transformed t;
  b3=(plate3) transformed t;
  b_init=from_pt--(point .5 of b0);
  b_final=(point .5 of b3)--to_pt;
  draw b_init; draw b0; draw b1; draw b2; draw b3; draw b_final; 
enddef;


numeric bulb_filament_height,  bulb_filament_spacing;
bulb_filament_height=.30v;  bulb_filament_spacing=.24w;
numeric bulb_diameter;
bulb_diameter=3bulb_filament_spacing;

vardef draw_bulb_path(expr from_pt, to_pt)=
  transform t;
  save x, y;
  path filament, b_init, b[], b_final, fil_middle;
  numeric fil_angle; fil_angle=45;
  t=identity shifted (0,-y3) rotated (angle(to_pt-from_pt)) shifted (.5[to_pt,from_pt]);
  z0=(-.5bulb_filament_spacing,0); z1=(.5bulb_filament_spacing,0);
  % find how far the curve connecting z0 to z1 dips down
  fil_middle=z0{dir -fil_angle}..{dir fil_angle}z1;
  y3=y4=ypart (point .5 of fil_middle);
  x3=-bulb_filament_spacing; x4=bulb_filament_spacing; 
  filament=z3
      ..z0{dir fil_angle}
      ..(x0,bulb_filament_height)
      ..{dir -fil_angle}z0
      ..z1{dir fil_angle}
      ..(x1,bulb_filament_height)
      ..{dir -fil_angle}z1
      ..z4;
  b0=filament transformed t; % 
  b_init=from_pt--(point 0 of b0);
  b_final=(point (arclength b0) of b0)--to_pt;
  draw b_init & b0 & b_final; 
  % draw circle also (the 3 is by eye)
  draw fullcircle scaled bulb_diameter shifted (0,.5[y3,bulb_filament_height]) transformed t;
enddef;



numeric circuit_width, circuit_height;
circuit_width=7w; circuit_height=3v;
pair circuit_upper_left, circuit_upper_right,
     circuit_lower_left, circuit_lower_right;
circuit_upper_left=(0w,circuit_height);
circuit_upper_right=(circuit_width,circuit_height);  
circuit_lower_left=(0w,0v);
circuit_lower_right=(circuit_width,0v);  

% Straightforward series circuit
beginfig(35);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $20$ volt \\
                   potential
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  draw_resistor_path(circuit_upper_left,circuit_upper_right);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $2$ ohm \\
                   resistance
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_upper_right]
	        -.5(0,zigheight));
  draw_resistor_path(circuit_upper_right,circuit_lower_right);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r}
                   $5$ ohm \\
                   resistance
	        \end{tabular}} etex,
	      .5[circuit_upper_right,circuit_lower_right]
	        -.5(zigheight,0));
  draw_resistor_path(circuit_lower_right,circuit_lower_left);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}c}
                   $3$ ohm \\
                   resistance
	        \end{tabular}} etex,
	      .5[circuit_lower_right,circuit_lower_left]
	        +.5(0,zigheight));
endfig;

numeric circuit_parbranch_vpercent; % how far down from top to start a 
circuit_parbranch_vpercent=.1;      % parallel branch?
% Simple parallel circuit
beginfig(36);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $20$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  draw circuit_upper_left--circuit_upper_right;
  % top, bot of parallel parts 
  z0=circuit_parbranch_vpercent[circuit_upper_right,circuit_lower_right];
  z1=(1-circuit_parbranch_vpercent)[circuit_upper_right,circuit_lower_right]; 
  draw circuit_upper_right--z0;
  x2=x0-1w;  x3=x0+(x0-x2);  y2=y3=y0; % up lft, up rgt parallel branches
  draw z0--z2; draw z0--z3;
  x4=x2; x5=x3; y4=y5=y1; % low lft, low rgt parallel branches
  draw_resistor_path(z2,z4);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r@{}}
                   $12$ ohm 
	        \end{tabular}} etex,
	      .5[z2,z4]
	        -.5(zigheight,0));
  draw_resistor_path(z3,z5);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l@{}}
                   $8$ ohm 
	        \end{tabular}} etex,
	      .5[z3,z5]
	        +.5(zigheight,0));
  draw z4--z1; draw z5--z1;
  draw z1--circuit_lower_right;
  draw circuit_lower_right--circuit_lower_left;
endfig;



% Simple parallel circuit, with flow shown
beginfig(37);
  pickup pencircle scaled .4pt;
% make part grayed out
  drawoptions(withcolor shading_color);
  draw_battery_path(circuit_upper_left,circuit_lower_left);
  draw circuit_upper_left--circuit_upper_right;
  % top, bot of parallel parts 
  z0=circuit_parbranch_vpercent[circuit_upper_right,circuit_lower_right];
  z1=(1-circuit_parbranch_vpercent)[circuit_upper_right,circuit_lower_right]; 
  draw circuit_upper_right--z0;
  x2=x0-1w;  x3=x0+(x0-x2);  y2=y3=y0; % up lft, up rgt parallel branches
  draw z0--z2; draw z0--z3;
  x4=x2; x5=x3; y4=y5=y1; % low lft, low rgt parallel branches
  draw_resistor_path(z2,z4);
  draw_resistor_path(z3,z5);
  draw z4--z1; draw z5--z1;
  draw z1--circuit_lower_right;
  draw circuit_lower_right--circuit_lower_left;
% kill the gray now; restore the black
  drawoptions(withcolor black);
%  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%              \begin{tabular}[t]{@{}c@{}}
%                  $\longrightarrow$ \\ $i_0$     
%              \end{tabular}} etex,
%             .3[circuit_upper_left,circuit_upper_right]);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l}
	        $\uparrow i_0$ 
	      \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  $i_1 \downarrow$    
              \end{tabular}} etex,
             .5[z2,z4]-.5(zigheight,0));
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}l@{}}
                  $\downarrow i_2$    
              \end{tabular}} etex,
             .5[z3,z5]+.5(zigheight,0));
%  label.top(btex {\small \renewcommand{\arraystretch}{.9}
%              \begin{tabular}[b]{@{}c@{}}
%                  $i_3$ \\ $\longleftarrow$    
%              \end{tabular}} etex,
%             .6[circuit_lower_right,circuit_lower_left]);
endfig;



% Wheatstone bridge circuit
beginfig(38);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $10$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  draw circuit_upper_left--circuit_upper_right;
  % top, bot of parallel parts 
  z0=circuit_parbranch_vpercent[circuit_upper_right,circuit_lower_right];
  z1=(1-circuit_parbranch_vpercent)[circuit_upper_right,circuit_lower_right]; 
  draw circuit_upper_right--z0;
  x2=x0-.5[y0,y1]; x3=x0+.5[y0,y1];
      y2=y3=.5[y0,y1]; % lft, rt corners of diamond 
  draw_resistor_path(z0,z2);
    label.ulft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}r@{}}
                  $5$ % ohm    
              \end{tabular}} etex,
             .5[z0,z2]-(.5*.707)*(zigheight,-zigheight));
  draw_resistor_path(z0,z3);
    label.urt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}l@{}}
                  $2$ % ohm    
              \end{tabular}} etex,
             .5[z0,z3]+(.5*.707)*(zigheight,zigheight));
  draw_resistor_path(z2,z3);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  $50$ % ohm    
              \end{tabular}} etex,
             .5[z2,z3]);
  draw_resistor_path(z2,z1);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}r@{}}
                  $10$ % ohm    
              \end{tabular}} etex,
             .5[z2,z1]-(.5*.707)*(zigheight,zigheight));
  draw_resistor_path(z3,z1);
    label.lrt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}l@{}}
                  $4$ % ohm    
              \end{tabular}} etex,
             .5[z3,z1]+(.5*.707)*(zigheight,-zigheight));
  draw z1--circuit_lower_right;
  draw circuit_lower_right--circuit_lower_left;
endfig;



% Wheatstone bridge circuit, with current shown
beginfig(39);
  pickup pencircle scaled .4pt;
% make part grayed out
  drawoptions(withcolor shading_color);
  draw_battery_path(circuit_upper_left,circuit_lower_left);
  draw circuit_upper_left--circuit_upper_right;
  % top, bot of parallel parts 
  z0=circuit_parbranch_vpercent[circuit_upper_right,circuit_lower_right];
  z1=(1-circuit_parbranch_vpercent)[circuit_upper_right,circuit_lower_right]; 
  draw circuit_upper_right--z0;
  x2=x0-.5[y0,y1]; x3=x0+.5[y0,y1];
      y2=y3=.5[y0,y1]; % lft, rt corners of diamond 
  draw_resistor_path(z0,z2);
  draw_resistor_path(z0,z3);
  draw_resistor_path(z2,z3);
  draw_resistor_path(z2,z1);
  draw_resistor_path(z3,z1);
  draw z1--circuit_lower_right;
  draw circuit_lower_right--circuit_lower_left;
% restore color to black
  drawoptions(withcolor black);
  
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l}
                 $\uparrow i_0$  
	      \end{tabular}} etex,
	    .5[circuit_upper_left,circuit_lower_left]
	      +.5(battery_longline_length,0));
%  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%              \begin{tabular}[t]{@{}c@{}}
%                  $\longrightarrow$ \\ $i_0$     
%              \end{tabular}} etex,
%             .3[circuit_upper_left,circuit_upper_right]);
  label.ulft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  $i_1 \swarrow$    
              \end{tabular}} etex,
             .5[z0,z2]);
  label.urt(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}l@{}}
                  $\searrow i_2$    
              \end{tabular}} etex,
             .5[z0,z3]);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[b]{@{}c@{}}
                  $i_5\rightarrow$     
              \end{tabular}} etex,
             .5[z2,z3]);
  label.llft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  $i_3\searrow$    
              \end{tabular}} etex,
             .5[z2,z1]);
  label.lrt(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}l@{}}
                  $\swarrow i_4$    
              \end{tabular}} etex,
             .5[z3,z1]);
%  label.top(btex {\small \renewcommand{\arraystretch}{.9}
%              \begin{tabular}[b]{@{}c@{}}
%                  $i_6$ \\ $\longleftarrow$    
%              \end{tabular}} etex,
%             .6[circuit_lower_right,circuit_lower_left]);
endfig;


% Circuit homework (1a) straightforward series circuit
beginfig(40);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $9$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  draw_resistor_path(circuit_upper_left,circuit_upper_right);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $3$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_upper_right]
	        -.5(0,zigheight));
  draw_resistor_path(circuit_upper_right,circuit_lower_right);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_upper_right,circuit_lower_right]
	        -.5(zigheight,0));
  draw_resistor_path(circuit_lower_right,circuit_lower_left);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}c}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_lower_right,circuit_lower_left]
	        +.5(0,zigheight));
endfig;


% Circuit homework (1b) series/parallel circuit
beginfig(41);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $9$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  %make the extra wire be .4 of the way out
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],circuit_upper_right);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $3$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_upper_left,circuit_upper_right],circuit_upper_right]
	        -.5(0,zigheight));
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]
	        +.5(zigheight,0));
  draw_resistor_path(circuit_upper_right,circuit_lower_right);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_upper_right,circuit_lower_right]
	        -.5(zigheight,0));
  draw_resistor_path(.4[circuit_lower_left,circuit_lower_right],circuit_lower_right);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}c}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_lower_left,circuit_lower_right],circuit_lower_right]
	        +.5(0,zigheight));
  draw circuit_upper_left--.4[circuit_upper_left,circuit_upper_right];
  draw circuit_lower_left--.4[circuit_lower_left,circuit_lower_right];
endfig;


% Circuit homework (1c) series/parallel circuit
beginfig(42);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $9$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  %make the first extra wire be .4 of the way out
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],circuit_upper_right);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $3$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_upper_left,circuit_upper_right],circuit_upper_right]
	        -.5(0,zigheight));
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $3$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]
	        +.5(zigheight,0));
  draw_resistor_path(circuit_upper_right,circuit_lower_right);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_upper_right,circuit_lower_right]
	        -.5(zigheight,0));
  draw_resistor_path(.4[circuit_lower_left,circuit_lower_right],circuit_lower_right);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}c}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_lower_left,circuit_lower_right],circuit_lower_right]
	        +.5(0,zigheight));
  % make the second extra wire extend past the edge out to 1.6 times
  draw_resistor_path(circuit_upper_right,1.6[circuit_upper_left,circuit_upper_right]);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $3$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_upper_right,1.6[circuit_upper_left,circuit_upper_right]]
	        -.5(0,zigheight));
  draw_resistor_path(1.6[circuit_upper_left,circuit_upper_right],1.6[circuit_lower_left,circuit_lower_right]);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r}
                   $4$ ohm 
	        \end{tabular}} etex,
	      .5[1.6[circuit_upper_left,circuit_upper_right],1.6[circuit_lower_left,circuit_lower_right]]
	        -.5(zigheight,0));
  draw_resistor_path(circuit_lower_right,1.6[circuit_lower_left,circuit_lower_right]);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}c}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_lower_right,1.6[circuit_lower_left,circuit_lower_right]]
	        +.5(0,zigheight));
  % finish off by closing the loop
  draw circuit_upper_left--.4[circuit_upper_left,circuit_upper_right];
  draw circuit_lower_left--.4[circuit_lower_left,circuit_lower_right];
endfig;


% Circuit homework Traffic circle
beginfig(43);
  pickup pencircle scaled .4pt;
  numeric circle_dia;
  circle_dia=2u;
  path traffic_circ;
  traffic_circ=fullcircle scaled circle_dia;
  % next, the three streets; anchored at three points 
  z1=(-4w,0v); z2=(2w,2v); z3=(2w,-2v);
  numeric interstreet; interstreet=.2u;
  z11=(0,.5interstreet) rotated angle(z1) shifted z1;
  z12-z1=-(z11-z1);
  z13=(0,.5interstreet) rotated angle(z1) shifted .75z1;
  z14=(0,-.5interstreet) rotated angle(z1) shifted .75z1;
  z21=(0,.5interstreet) rotated angle(z2) shifted z2;
  z22-z2=-(z21-z2);
  z23=(0,.5interstreet) rotated (angle(z2)+30) shifted .75z2;
  z24=(0,-.5interstreet) rotated (angle(z2)+30) shifted .75z2;
  z31=(0,.5interstreet) rotated angle(z3) shifted z3;
  z32-z3=-(z31-z3);
  z33=(0,.5interstreet) rotated (angle(z3)-30) shifted .75z3;
  z34=(0,-.5interstreet) rotated (angle(z3)-30) shifted .75z3;
  draw traffic_circ;
  numeric streetmeet_delta; streetmeet_delta=40; % angle width of merge zone
  path p[];  % to find time on traffic_circ
  numeric m[]; % time on curve where it meets each lane; to find tangency
  p1=(0,0)--z1;
    p11=p1 rotated streetmeet_delta;
    m11=(ypart (p11 intersectiontimes traffic_circ));
    z15=point m11 of traffic_circ;
    z16=direction m11 of traffic_circ;
    p12=p1 rotated -streetmeet_delta;
    m12=(ypart (p12 intersectiontimes traffic_circ));
    z17=point m12 of traffic_circ;
    z18=direction m12 of traffic_circ;
  p18=z11..z13{right}...{z16}z15;   % path to draw, out of circ; note tangency
  draw p18;   drawarrow subpath (0,1) of p18;
  p19=z12..z14{right}...{-z18}z17;  % path to draw, into circ; note tangency
  draw p19;  drawarrow subpath (0,1) of reverse(p19);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  Main Street     
              \end{tabular}} etex,
              z14);
  p2=(0,0)--z2;
    p21=p2 rotated streetmeet_delta;
    m21=(ypart (p21 intersectiontimes traffic_circ));
    z25=point m21 of traffic_circ;
    z26=direction m21 of traffic_circ;
    p22=p2 rotated -streetmeet_delta;
    m22=(ypart (p22 intersectiontimes traffic_circ));
    z27=point m22 of traffic_circ;
    z28=direction m22 of traffic_circ;
  p28=z21..z23...{z26}z25;
  draw p28; drawarrow subpath (0,1) of p28;
  p29=z22..z24...{-z28}z27;
  draw p29; drawarrow subpath (0,1) of reverse(p29);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  North Avenue   
              \end{tabular}} etex,
              z24);
  p3=(0,0)--z3;
    p31=p3 rotated streetmeet_delta;
    m31=(ypart (p31 intersectiontimes traffic_circ));
    z35=point m31 of traffic_circ;
    z36=direction m31 of traffic_circ;
    p32=p3 rotated -streetmeet_delta;
    m32=(ypart (p32 intersectiontimes traffic_circ));
    z37=point m32 of traffic_circ;
    z38=direction m32 of traffic_circ;
  p38=z31..z33...{z36}z35;
  draw p38; drawarrow subpath (0,1) of p38;
  p39=z32..z34...{-z38}z37;
  draw p39; drawarrow subpath (0,1) of reverse(p39);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  Pier Boulevard   
              \end{tabular}} etex,
              z33);
endfig;


%  Circuit homework (3)
beginfig(44);
  save u;  %scaling factor
  save v;  %vertical scaling factor
  save w;  %horizontal scaling factor

  u:=1cm; v:=u; w:=v;
  z0=(5u,1v);  z1=(0u,v);
  drawarrow z0--z1; % Shelburne
  x2=x0; x3=x1; y2=y3=0v;
  drawarrow z2--z3; % Winooski east
  x4=x2; x5=x3; y4=y5=y2-.2v;
  drawarrow z5--z4; % Winooski west

  x6=x7=.3[x0,x3];  x8=x9=.8[x0,x3]; y6=y4; y8=-.5v; y7=y9=1.5v;
  drawarrow z6--z7; % Jay
  drawarrow z9--z8; % willow

  z10=whatever[z6,z7]=whatever[z0,z1]; % shelburne and jay
  z11=whatever[z9,z8]=whatever[z0,z1]; % shelburne and willow 
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  Shelburne St     
              \end{tabular}} etex,
              .5[z10,z11]);
  z13=whatever[z5,z4]=whatever[z9,z8]; % winooski west  and willow
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}r@{}}
                  Willow     
              \end{tabular}} etex,
              .5[z13,z11]);
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}c@{}}
                  Winooski Ave     
              \end{tabular}} etex,
              .5[z13,z4]);
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  \textit{west}     
              \end{tabular}} etex,
              z3);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}{@{}l@{}}
                  \textit{east}     
              \end{tabular}} etex,
              z4);
  z12=whatever[z5,z4]=whatever[z6,z7]; % winooski west  and jay
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}r@{}}
                  Jay Ln     
              \end{tabular}} etex,
              .5[z12,z10]);
endfig;





% Circuit homework (4) series/parallel circuit, two batteries
beginfig(45);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $1.5$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_left,circuit_lower_left]
	        +.5(battery_longline_length,0));
  %make the first extra wire be .4 of the way out
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],circuit_upper_right);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $5$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_upper_left,circuit_upper_right],circuit_upper_right]
	        -.5(0,zigheight));
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]);
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   $2$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]
	        +.5(zigheight,0));
  draw_battery_path(circuit_lower_right,circuit_upper_right);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r}
                   $3$ volt 
	        \end{tabular}} etex,
	      .5[circuit_upper_right,circuit_lower_right]
	        -.5(battery_longline_length,0));
  draw_resistor_path(.4[circuit_lower_left,circuit_lower_right],circuit_lower_right);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}c}
                   $10$ ohm 
	        \end{tabular}} etex,
	      .5[.4[circuit_lower_left,circuit_lower_right],circuit_lower_right]
	        +.5(0,zigheight));
  % make the second extra wire extend past the edge out to 1.6 times
  draw_resistor_path(circuit_upper_right,1.6[circuit_upper_left,circuit_upper_right]);
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   $3$ ohm 
	        \end{tabular}} etex,
	      .5[circuit_upper_right,1.6[circuit_upper_left,circuit_upper_right]]
	        -.5(0,zigheight));
  draw_resistor_path(1.6[circuit_upper_left,circuit_upper_right],1.6[circuit_lower_left,circuit_lower_right]);
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r}
                   $6$ ohm 
	        \end{tabular}} etex,
	      .5[1.6[circuit_upper_left,circuit_upper_right],1.6[circuit_lower_left,circuit_lower_right]]
	        -.5(zigheight,0));
  draw circuit_lower_right--1.6[circuit_lower_left,circuit_lower_right];
%  draw_resistor_path(circuit_lower_right,1.6[circuit_lower_left,circuit_lower_right]);
%    label.top(btex {\small \renewcommand{\arraystretch}{.9}
%                \begin{tabular}[b]{@{}c}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[circuit_lower_right,1.6[circuit_lower_left,circuit_lower_right]]
%	        +.5(0,zigheight));
  % finish off by closing the loop
  draw circuit_upper_left--.4[circuit_upper_left,circuit_upper_right];
  draw circuit_lower_left--.4[circuit_lower_left,circuit_lower_right];
endfig;








u:=.8cm; v:=u; w:=v;

beginfig(46); % circuit diagram of car's battery and lights
  numeric fullwidth, fullheight;
  fullwidth=11.5w; fullheight=5.5v;

  numeric switch_space, switch_hgt, switch_gap; % dist, hgt between lines
                                                % and dist to switch closer
  switch_hgt=.5battery_longline_length; switch_space=1.618switch_hgt; 
    switch_gap=.5battery_shortline_length;
  % four corners of the circuit
  z2=(0,fullheight);  z3=(fullwidth,fullheight); 
  z0=(0,0);           z1=(fullwidth,0);  
  % make bbox bigger than picture
  pickup pencircle scaled 0pt; drawdot(z2+(0v,0.1w));
 
  %
  pickup pencircle scaled line_width_light;
  draw z2--1.02[z2,z3];  % top line
  draw z0--1.02[z0,z1];  % bottom line
  draw_battery_path(z2,z0); % left-hand wire
    label.urt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   12V \\
	        \end{tabular}} etex,
	      .5[z0,z2]+(0v,.1w));
  z5=.2[z3,z1];
  draw_bulb_path(z3,z5); % right-hand wire
    label.rt(btex {\small\renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   Dome \\ Light
	        \end{tabular}} etex,
	      .5[z3,z5]
	      +.5(bulb_diameter,0));
  % switch on right
  z6=.4[z3,z1]; x7=x8=x6; y7=y6+.5switch_space; y8=y6-.5switch_space;
  draw z5--z7;
  x9=x10=x8+switch_hgt; y9=y7; y10=y8; % ends of switch horiz lines
  draw z7--z9; draw z8--z10;
  y11=y6; x11=x10+switch_gap; % middle of switch closer
  x12=x13=x11; y12=y11-switch_space; y13=y11+switch_space;
  draw z12--z13; % switch closer
  x14=x11+switch_hgt; y14=y11; draw z11--z14;
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l}
                   Door \\ Actuated \\ Switch
	        \end{tabular}} etex,
		z14-(0.1v,0w));
  draw z8--z1; % end of right wire
  %
  numeric split_wires_percent; % how far from top to split for sep bulb wires 
  split_wires_percent=.625;
  % brake wire next
  z20=.12[z2,z3]; x21=x20; y21=y0;   % top, bot pt of wire
    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c}
                   Brake \\  Lights
	        \end{tabular}} etex,
		z21);
  z22=split_wires_percent[z20,z21];
  y23=y24=y22; x23=x22-.8bulb_diameter; x24=x22+.8bulb_diameter;
  draw z22--z23; draw z22--z24;
  y25=y26=y0; x25=x23; x26=x24;
  draw_bulb_path(z23,z25);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   L
	        \end{tabular}} etex,
		.5[z23,z25]
		-.707(.25bulb_diameter,.25bulb_diameter));
  draw_bulb_path(z24,z26);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   R
	        \end{tabular}} etex,
		.5[z24,z26]
		-.707(.25bulb_diameter,.25bulb_diameter));
  z30=.2[z20,z21];
  x31=x32=x30; y31=y30+.5switch_space; y32=y30-.5switch_space;
  draw z20--z31; draw z32--z22;
  x33=x34=x30+switch_hgt; y33=y31; y34=y32; % ends of switch horiz lines
  draw z31--z33; draw z32--z34;
  y35=y30; x35=x33+switch_gap; % middle of switch closer
  x36=x37=x35; y36=y35-switch_space; y37=y35+switch_space;
  draw z36--z37; % switch closer
  x38=x35+switch_hgt; y38=y35; draw z35--z38;
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}l}
                   Brake \\ Actuated \\ Switch
	        \end{tabular}} etex,
		z38-(0.1v,0w));
  % main lights
  path post;
  post=fullcircle scaled 2pt;
  z40=.75[z2,z3]; x41=x40; y41=y0; % top, bot
  z42=.1[z40,z41]; draw z40--z42; % where break into  switch      
  % posts for main light switch
  z43=(0,-.75v);  z44=z43 rotated 30; z45=z43 rotated -30;
  z46=z43 shifted z42; z47=z44 shifted z42; z48=z45 shifted z42;
  drawarrow z42--.95[z42,z47];
  filldraw post shifted z42 withcolor white; draw post shifted z42;
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}l@{}}
                   Light \\ Switch
	        \end{tabular}} etex,
		z42);
  filldraw post shifted z46 withcolor white; draw post shifted z46;
    % for dimmer switch
    x50=x47; y50=y0; z51=.2[z47,z50]; draw z47--z51;
  filldraw post shifted z47 withcolor white; draw post shifted z47;
  filldraw post shifted z48 withcolor white; draw post shifted z48;
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r@{}}
                   Off
	        \end{tabular}} etex,
		z48);
  % dimmer switch
  z49=z43 rotated 40; z491=z43 rotated -40;
  z52=z49 shifted z51; z53=z491 shifted z51;
  drawarrow z51--.95[z51,z52];      
  filldraw post shifted z51 withcolor white; draw post shifted z51;
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[b]{@{}l@{}}
                   Dimmer
	        \end{tabular}} etex,
		z51);
  % wire leading down from Hi post
    x60=x61=x52; y60=y3; y61=y0;   % top, bot pt above, below Hi post
    z62=split_wires_percent[z60,z61];
    draw z52--z62;
  % now draw the Hi post
  filldraw post shifted z52 withcolor white; draw post shifted z52;
    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}l@{}}
                   Hi
	        \end{tabular}} etex,
		z52);
  % wire leading down from Hi post
    x70=x71=x53; y70=y3; y71=y0;   % top, bot pt above, below Lo post
    z72=split_wires_percent[z70,z71];
    draw z53--z72;
  % now draw the Lo post
  filldraw post shifted z53 withcolor white; draw post shifted z53;
    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}{@{}r@{}}
                   Lo
	        \end{tabular}} etex,
		z53);
  % Hi lights
  y63=y64=y62; x63=x62; x64=x62+1.6bulb_diameter;
  draw z62--z63; draw z62--z64;
  y65=y66=y0; x65=x63; x66=x64;
  draw_bulb_path(z63,z65);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   L
	        \end{tabular}} etex,
		.5[z63,z65]
		-.707(.25bulb_diameter,.25bulb_diameter));
  draw_bulb_path(z64,z66);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   R
	        \end{tabular}} etex,
		.5[z64,z66]
		-.707(.25bulb_diameter,.25bulb_diameter));
  % Lo lights
  y73=y74=y72; x73=x72-1.6bulb_diameter; x74=x72;
  draw z72--z73; draw z72--z74;
  y75=y76=y0; x75=x73; x76=x74;
  draw_bulb_path(z73,z75);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   L
	        \end{tabular}} etex,
		.5[z73,z75]
		-.707(.25bulb_diameter,.25bulb_diameter));
  draw_bulb_path(z74,z76);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   R
	        \end{tabular}} etex,
		.5[z74,z76]
		-.707(.25bulb_diameter,.25bulb_diameter));
  % label the headlights
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c@{}}
                   Headlights
	        \end{tabular}} etex,
		.5[z66,z75]);
  % rear lights
  z80=.7[z47,z51];
  x81=.5[x2,x3]; y81=y80; % pt at which wire turns downward
  x82=x83=x81; y82=y2; y83=y0; % top, bot above, below z81
  z92=split_wires_percent[z82,z83]; % go to 90's so final digit is as above
  draw z80--z81--z92; 
  y93=y94=y92; x93=x92-.8bulb_diameter; x94=x92+.8bulb_diameter;
  draw z92--z93; draw z92--z94;
  y95=y96=y0; x95=x93; x96=x94;
  draw_bulb_path(z93,z95);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   L
	        \end{tabular}} etex,
		.5[z93,z95]
		-.707(.25bulb_diameter,.25bulb_diameter));
  draw_bulb_path(z94,z96);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   R
	        \end{tabular}} etex,
		.5[z94,z96]
		-.707(.25bulb_diameter,.25bulb_diameter));
  % label the headlights
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c@{}}
                   Rear \\ Lights
	        \end{tabular}} etex,
		.5[z95,z96]);

  % parking lights
  x100=x46; y100=.3[y46,y51]; draw z46--z100;
    filldraw post shifted z46 withcolor white; draw post shifted z46; % redraw
  x101=.31[x0,x1]; y101=y100;  % pt at which wire turnd down
  x102=x103=x101; y102=y2; y103=y0; % top, bot above, below z101  
  z112=split_wires_percent[z102,z103]; % go to 90's so final digit is as above
  draw z100--z101--z112; 
  y113=y114=y112; x113=x112-.8bulb_diameter; x114=x112+.8bulb_diameter;
  draw z112--z113; draw z112--z114;
  y115=y116=y0; x115=x113; x116=x114;
  draw_bulb_path(z113,z115);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   L
	        \end{tabular}} etex,
		.5[z113,z115]
		-.707(.25bulb_diameter,.25bulb_diameter));
  draw_bulb_path(z114,z116);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}r@{}}
                   R
	        \end{tabular}} etex,
		.5[z114,z116]
		-.707(.25bulb_diameter,.25bulb_diameter));
  % label the headlights
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
                \circuitfont\begin{tabular}[t]{@{}c@{}}
                   Parking \\ Lights
	        \end{tabular}} etex,
		.5[z115,z116]);
endfig;





% Wheatstone bridge circuit; homework question
beginfig(47);
  pickup pencircle scaled .4pt;
  draw_battery_path(circuit_upper_left,circuit_lower_left);
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l}
%                    $10$ volt 
% 	        \end{tabular}} etex,
% 	      .5[circuit_upper_left,circuit_lower_left]
% 	        +.5(battery_longline_length,0));
  draw circuit_upper_left--circuit_upper_right;
  % top, bot of parallel parts 
  z0=circuit_parbranch_vpercent[circuit_upper_right,circuit_lower_right];
  z1=(1-circuit_parbranch_vpercent)[circuit_upper_right,circuit_lower_right]; 
  draw circuit_upper_right--z0;
  x2=x0-.5[y0,y1]; x3=x0+.5[y0,y1];
      y2=y3=.5[y0,y1]; % lft, rt corners of diamond 
  draw_resistor_path(z0,z2);
    label.ulft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}r@{}}
                  $r_1$    
              \end{tabular}} etex,
             .5[z0,z2]-(.5*.707)*(zigheight,-zigheight));
  draw_resistor_path(z0,z3);
    label.urt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}l@{}}
                  $r_3$    
              \end{tabular}} etex,
             .5[z0,z3]+(.5*.707)*(zigheight,zigheight));
  draw_resistor_path(z2,z3);
    label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  $r_g$    
              \end{tabular}} etex,
             .5[z2,z3]);
  draw_resistor_path(z2,z1);
    label.llft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}r@{}}
                  $r_2$    
              \end{tabular}} etex,
             .5[z2,z1]-(.5*.707)*(zigheight,zigheight));
  draw_resistor_path(z3,z1);
    label.lrt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}l@{}}
                  $r_4$
              \end{tabular}} etex,
             .5[z3,z1]+(.5*.707)*(zigheight,-zigheight));
  draw z1--circuit_lower_right;
  draw circuit_lower_right--circuit_lower_left;
endfig;





% Circuit homework (1b) series/parallel circuit -- greyed out.
beginfig(48);
  pickup pencircle scaled .4pt;
% make part grayed out
  drawoptions(withcolor shading_color);
  draw_battery_path(circuit_upper_left,circuit_lower_left);
%    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}l}
%                   $9$ volt 
%	        \end{tabular}} etex,
%	      .5[circuit_upper_left,circuit_lower_left]
%	        +.5(battery_longline_length,0));
  %make the extra wire be .4 of the way out
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],circuit_upper_right);
%    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}[t]{@{}c}
%                   $3$ ohm 
%	        \end{tabular}} etex,
%	      .5[.4[circuit_upper_left,circuit_upper_right],circuit_upper_right]
%	        -.5(0,zigheight));
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]);
%    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}l}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]
%	        +.5(zigheight,0));
  draw_resistor_path(circuit_upper_right,circuit_lower_right);
%    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}r}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[circuit_upper_right,circuit_lower_right]
%	        -.5(zigheight,0));
  draw_resistor_path(.4[circuit_lower_left,circuit_lower_right],circuit_lower_right);
%    label.top(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}[b]{@{}c}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[.4[circuit_lower_left,circuit_lower_right],circuit_lower_right]
%	        +.5(0,zigheight));
  draw circuit_upper_left--.4[circuit_upper_left,circuit_upper_right];
  draw circuit_lower_left--.4[circuit_lower_left,circuit_lower_right];
% make part grayed out
  drawoptions(withcolor black);
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}c@{}}
                  $\longrightarrow$ \\ $i_0$     
              \end{tabular}} etex,
             .08[circuit_upper_left,circuit_upper_right]);
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  $i_1 \downarrow$    
              \end{tabular}} etex,
             .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]-.5(zigheight,0));
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}c@{}}
                  $\longrightarrow$ \\ $i_2$     
              \end{tabular}} etex,
             .75[circuit_upper_left,circuit_upper_right]);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[b]{@{}c@{}}
                   $i_3$ \\ $\longleftarrow$     
              \end{tabular}} etex,
             .15[circuit_lower_left,circuit_lower_right]);
endfig;


% Circuit homework (1c) series/parallel circuit -- greyed out
beginfig(49);
  pickup pencircle scaled .4pt;
% make part grayed out
  drawoptions(withcolor shading_color);
  draw_battery_path(circuit_upper_left,circuit_lower_left);
%    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}l}
%                   $9$ volt 
%	        \end{tabular}} etex,
%	      .5[circuit_upper_left,circuit_lower_left]
%	        +.5(battery_longline_length,0));
  %make the first extra wire be .4 of the way out
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],circuit_upper_right);
%    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}[t]{@{}c}
%                   $3$ ohm 
%	        \end{tabular}} etex,
%	      .5[.4[circuit_upper_left,circuit_upper_right],circuit_upper_right]
%	        -.5(0,zigheight));
  draw_resistor_path(.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]);
%    label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}l}
%                   $3$ ohm 
%	        \end{tabular}} etex,
%	      .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]
%	        +.5(zigheight,0));
  draw_resistor_path(circuit_upper_right,circuit_lower_right);
%    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}r}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[circuit_upper_right,circuit_lower_right]
%	        -.5(zigheight,0));
  draw_resistor_path(.4[circuit_lower_left,circuit_lower_right],circuit_lower_right);
%    label.top(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}[b]{@{}c}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[.4[circuit_lower_left,circuit_lower_right],circuit_lower_right]
%	        +.5(0,zigheight));
  % make the second extra wire extend past the edge out to 1.6 times
  draw_resistor_path(circuit_upper_right,1.6[circuit_upper_left,circuit_upper_right]);
%    label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}[t]{@{}c}
%                   $3$ ohm 
%	        \end{tabular}} etex,
%	      .5[circuit_upper_right,1.6[circuit_upper_left,circuit_upper_right]]
%	        -.5(0,zigheight));
  draw_resistor_path(1.6[circuit_upper_left,circuit_upper_right],1.6[circuit_lower_left,circuit_lower_right]);
%    label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}r}
%                   $4$ ohm 
%	        \end{tabular}} etex,
%	      .5[1.6[circuit_upper_left,circuit_upper_right],1.6[circuit_lower_left,circuit_lower_right]]
%	        -.5(zigheight,0));
  draw_resistor_path(circuit_lower_right,1.6[circuit_lower_left,circuit_lower_right]);
%    label.top(btex {\small \renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}[b]{@{}c}
%                   $2$ ohm 
%	        \end{tabular}} etex,
%	      .5[circuit_lower_right,1.6[circuit_lower_left,circuit_lower_right]]
%	        +.5(0,zigheight));
  % finish off by closing the loop
  draw circuit_upper_left--.4[circuit_upper_left,circuit_upper_right];
  draw circuit_lower_left--.4[circuit_lower_left,circuit_lower_right];
% make part grayed out
  drawoptions(withcolor black);
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}c@{}}
                  $\longrightarrow$ \\ $i_0$     
              \end{tabular}} etex,
             .08[circuit_upper_left,circuit_upper_right]);
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  $i_1 \downarrow$    
              \end{tabular}} etex,
             .5[.4[circuit_upper_left,circuit_upper_right],.4[circuit_lower_left,circuit_lower_right]]-.5(zigheight,0));
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}c@{}}
                  $\longrightarrow$ \\ $i_2$     
              \end{tabular}} etex,
             .7[circuit_upper_left,circuit_upper_right]);
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}c@{}}
                  $\longrightarrow$ \\ $i_3$     
              \end{tabular}} etex,
             1.4[circuit_upper_left,circuit_upper_right]);
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[t]{@{}r@{}}
                  $i_4 \downarrow$    
              \end{tabular}} etex,
             .5[circuit_upper_right,circuit_lower_right]-.5(zigheight,0));
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[b]{@{}c@{}}
                   $i_5$ \\ $\longleftarrow$     
              \end{tabular}} etex,
             .7[circuit_lower_left,circuit_lower_right]);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \begin{tabular}[b]{@{}c@{}}
                   $i_6$ \\ $\longleftarrow$     
              \end{tabular}} etex,
             .15[circuit_lower_left,circuit_lower_right]);
endfig;





% Circuit homework Traffic circle answer
beginfig(50);
  pickup pencircle scaled .4pt;
  drawoptions(withcolor shading_color);
  numeric circle_dia;
  circle_dia=2u;
  path traffic_circ;
  traffic_circ=fullcircle scaled circle_dia;
  % next, the three streets; anchored at three points 
  z1=(-4w,0v); z2=(2w,2v); z3=(2w,-2v);
  numeric interstreet; interstreet=.2u;
  z11=(0,.5interstreet) rotated angle(z1) shifted z1;
  z12-z1=-(z11-z1);
  z13=(0,.5interstreet) rotated angle(z1) shifted .75z1;
  z14=(0,-.5interstreet) rotated angle(z1) shifted .75z1;
  z21=(0,.5interstreet) rotated angle(z2) shifted z2;
  z22-z2=-(z21-z2);
  z23=(0,.5interstreet) rotated (angle(z2)+30) shifted .75z2;
  z24=(0,-.5interstreet) rotated (angle(z2)+30) shifted .75z2;
  z31=(0,.5interstreet) rotated angle(z3) shifted z3;
  z32-z3=-(z31-z3);
  z33=(0,.5interstreet) rotated (angle(z3)-30) shifted .75z3;
  z34=(0,-.5interstreet) rotated (angle(z3)-30) shifted .75z3;
  draw traffic_circ;
  numeric streetmeet_delta; streetmeet_delta=40; % angle width of merge zone
  path p[];  % to find time on traffic_circ
  numeric m[]; % time on curve where it meets each lane; to find tangency
  p1=(0,0)--z1;
    p11=p1 rotated streetmeet_delta;
    m11=(ypart (p11 intersectiontimes traffic_circ));
    z15=point m11 of traffic_circ;
    z16=direction m11 of traffic_circ;
    p12=p1 rotated -streetmeet_delta;
    m12=(ypart (p12 intersectiontimes traffic_circ));
    z17=point m12 of traffic_circ;
    z18=direction m12 of traffic_circ;
  p18=z11..z13{right}...{z16}z15;   % path to draw, out of circ; note tangency
  draw p18;   drawarrow subpath (0,1) of p18;
  p19=z12..z14{right}...{-z18}z17;  % path to draw, into circ; note tangency
  draw p19;  drawarrow subpath (0,1) of reverse(p19);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  Main Street     
              \end{tabular}} etex,
              z14);
  p2=(0,0)--z2;
    p21=p2 rotated streetmeet_delta;
    m21=(ypart (p21 intersectiontimes traffic_circ));
    z25=point m21 of traffic_circ;
    z26=direction m21 of traffic_circ;
    p22=p2 rotated -streetmeet_delta;
    m22=(ypart (p22 intersectiontimes traffic_circ));
    z27=point m22 of traffic_circ;
    z28=direction m22 of traffic_circ;
  p28=z21..z23...{z26}z25;
  draw p28; drawarrow subpath (0,1) of p28;
  p29=z22..z24...{-z28}z27;
  draw p29; drawarrow subpath (0,1) of reverse(p29);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  North Avenue   
              \end{tabular}} etex,
              z24);
  p3=(0,0)--z3;
    p31=p3 rotated streetmeet_delta;
    m31=(ypart (p31 intersectiontimes traffic_circ));
    z35=point m31 of traffic_circ;
    z36=direction m31 of traffic_circ;
    p32=p3 rotated -streetmeet_delta;
    m32=(ypart (p32 intersectiontimes traffic_circ));
    z37=point m32 of traffic_circ;
    z38=direction m32 of traffic_circ;
  p38=z31..z33...{z36}z35;
  draw p38; drawarrow subpath (0,1) of p38;
  p39=z32..z34...{-z38}z37;
  draw p39; drawarrow subpath (0,1) of reverse(p39);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  Pier Boulevard   
              \end{tabular}} etex,
              z33);

  % back to black to put in the variables
  drawoptions(withcolor black);
  label.ulft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}c@{}}
                  $i_1$
              \end{tabular}} etex,
              point .5[m12,m21] of traffic_circ);
  label.llft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}r@{}}
                  $i_2$
              \end{tabular}} etex,
              point .5[m32,m11] of traffic_circ);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  $i_3$
              \end{tabular}} etex,
              point .5[8+m22,m31] of traffic_circ);
endfig;






%  Circuit homework (3) answer
beginfig(51);
  save u;  %scaling factor
  save v;  %vertical scaling factor
  save w;  %horizontal scaling factor
  u:=1cm; v:=u; w:=v;

  drawoptions(withcolor shading_color);
  z0=(5u,1v);  z1=(0u,v);
  drawarrow z0--z1; % Shelburne
  x2=x0; x3=x1; y2=y3=0v;
  drawarrow z2--z3; % Winooski east
  x4=x2; x5=x3; y4=y5=y2-.2v;
  drawarrow z5--z4; % Winooski west

  x6=x7=.3[x0,x3];  x8=x9=.8[x0,x3]; y6=y4; y8=-.5v; y7=y9=1.5v;
  drawarrow z6--z7; % Jay
  drawarrow z9--z8; % willow

  drawoptions(withcolor black);
  label.lft(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}r@{}}
                  $75$     
              \end{tabular}} etex,
              z1); % out of Shelburne
  label.top(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}c@{}}
                  $65$     
              \end{tabular}} etex,
              z9); % into Willow
  label.top(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}c@{}}
                  $55$     
              \end{tabular}} etex,
              z7); % out of Jay
  label.rt(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  $40$     
              \end{tabular}} etex,
              z0); % into Shelburne
  label.rt(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  $50$     
              \end{tabular}} etex,
              z2); % into west Winooski
  label.rt(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  $30$     
              \end{tabular}} etex,
              z4); % out of east Winooski
  label.bot(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}c@{}}
                  $70$     
              \end{tabular}} etex,
              z8); % out of willow
  label.lft(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}r@{}}
                  $80$     
              \end{tabular}} etex,
              z5); % into east Winooski 
  label.lft(btex {\tiny \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}r@{}}
                  $5$     
              \end{tabular}} etex,
              z3); % out of west Winooski



  z10=whatever[z6,z7]=whatever[z0,z1]; % shelburne and jay
  z11=whatever[z9,z8]=whatever[z0,z1]; % shelburne and willow 
%  label.top(btex {\small \renewcommand{\arraystretch}{.9}
%              \circuitfont\begin{tabular}[b]{@{}c@{}}
%                  Shelburne St     
%              \end{tabular}} etex,
%              .5[z10,z11]);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  $i_1$     
              \end{tabular}} etex,
              .5[z10,z11]);
  z13=whatever[z5,z4]=whatever[z9,z8]; % winooski east  and willow
  z14=whatever[z3,z2]=whatever[z8,z9]; % winooski west  and willow
%  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%              \circuitfont\begin{tabular}[t]{@{}r@{}}
%                  Willow     
%              \end{tabular}} etex,
%              .5[z13,z11]);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[t]{@{}l@{}}
                  $i_2$     
              \end{tabular}} etex,
              .5[z14,z11]);
%  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%              \circuitfont\begin{tabular}[t]{@{}c@{}}
%                  Winooski Ave     
%              \end{tabular}} etex,
%              .5[z13,z4]);
%  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%              \begin{tabular}[t]{@{}r@{}}
%                  \textit{west}     
%              \end{tabular}} etex,
%              z3);
%  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%              \begin{tabular}{@{}l@{}}
%                  \textit{east}     
%              \end{tabular}} etex,
%              z4);
  z12=whatever[z3,z2]=whatever[z6,z7]; % winooski west  and jay
%  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%              \circuitfont\begin{tabular}{@{}r@{}}
%                  Jay Ln     
%              \end{tabular}} etex,
%              .5[z12,z10]);
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  $i_3$ 
              \end{tabular}} etex,
              .5[z12,z10]);
  label.top(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  $i_4$     
              \end{tabular}} etex,
              .5[z12,z14]);
  label.bot(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}[b]{@{}c@{}}
                  $i_7$     
              \end{tabular}} etex,
              .5[z13,z6]);
  
  z15=.5[z13,z14]; z16=.5[z6,z12];
  numeric wiggle_offset;  wiggle_offset=.5u;
  x17=x15-wiggle_offset;  x18=x16+wiggle_offset;
  y17=y15-wiggle_offset; y18=y17;
  path wiggle[];
  wiggle15=z15{left}..{left}z17; draw wiggle15;
  label.lft(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}r@{}}
                  $i_5$ 
              \end{tabular}} etex,
              z17);
  wiggle16=z16{right}..{right}z18; draw wiggle16;
  label.rt(btex {\small \renewcommand{\arraystretch}{.9}
              \circuitfont\begin{tabular}{@{}l@{}}
                  $i_6$ 
              \end{tabular}} etex,
              z18);
% for debugging
%  drawoptions(withcolor red);
%  dotlabels.rt(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18);
endfig;




beginfig(52); % hwk for cars battery and lights; only brake lights
  numeric fullwidth, fullheight;
  fullwidth=11.5w; fullheight=5.5v;

  numeric switch_space, switch_hgt, switch_gap; % dist, hgt between lines
                                                % and dist to switch closer
  switch_hgt=.5battery_longline_length; switch_space=1.618switch_hgt; 
    switch_gap=.5battery_shortline_length;
  % four corners of the circuit
  z2=(0,fullheight);  z3=(fullwidth,fullheight); 
  z0=(0,0);           z1=(fullwidth,0);
  %
  pickup pencircle scaled line_width_light;
%  draw z2--1.02[z2,z3];  % top line
%  draw z0--1.02[z0,z1];  % bottom line
  draw_battery_path(z2,z0); % left-hand wire
%     label.urt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l}
%                    12V \\
% 	        \end{tabular}} etex,
% 	      .5[z0,z2]);
%  z5=.2[z3,z1];
%  draw_bulb_path(z3,z5); % right-hand wire
%    label.rt(btex {\small\renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}l}
%                   Dome \\ Light
%	        \end{tabular}} etex,
%	      .5[z3,z5]
%	      +.5(bulb_diameter,0));
  % switch on right
%   z6=.4[z3,z1]; x7=x8=x6; y7=y6+.5switch_space; y8=y6-.5switch_space;
%   draw z5--z7;
%   x9=x10=x8+switch_hgt; y9=y7; y10=y8; % ends of switch horiz lines
%   draw z7--z9; draw z8--z10;
%   y11=y6; x11=x10+switch_gap; % middle of switch closer
%   x12=x13=x11; y12=y11-switch_space; y13=y11+switch_space;
%   draw z12--z13; % switch closer
%   x14=x11+switch_hgt; y14=y11; draw z11--z14;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l}
%                    Door \\ Actuated \\ Switch
% 	        \end{tabular}} etex,
% 		z14);
%   draw z8--z1; % end of right wire
  %
  numeric split_wires_percent; % how far from top to split for sep bulb wires 
  split_wires_percent=.625;
  % brake wire next
  z20=.12[z2,z3]; x21=x20; y21=y0;   % top, bot pt of wire
%     label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c}
%                    Brake \\  Lights
% 	        \end{tabular}} etex,
% 		z21);
  z22=split_wires_percent[z20,z21];
  y23=y24=y22; x23=x22-.8bulb_diameter; x24=x22+.8bulb_diameter;
  draw z22--z23; draw z22--z24;
  y25=y26=y0; x25=x23; x26=x24;
  % interpolated code starts here
  draw z20--z22;
  draw_resistor_path(z23,z25);
  draw_resistor_path(z24,z26);
  draw z20--z2;
  draw z26--z0;
  % interpolated code ends here

%   draw_bulb_path(z23,z25);
%       label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                   \circuitfont\begin{tabular}[t]{@{}l@{}}
%                      2 \\ ohm
%   	        \end{tabular}} etex,
%   		.5[z23,z25]
%   		-.5(zigheight,0));
%   draw_bulb_path(z24,z26);
%       label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                   \circuitfont\begin{tabular}[t]{@{}l@{}}
%                      2 \\ ohm
%   	        \end{tabular}} etex,
%   		.5[z24,z26]
%   		-.5(zigheight,0));
%   z30=.2[z20,z21];
%   x31=x32=x30; y31=y30+.5switch_space; y32=y30-.5switch_space;
%   draw z20--z31; draw z32--z22;
%   x33=x34=x30+switch_hgt; y33=y31; y34=y32; % ends of switch horiz lines
%   draw z31--z33; draw z32--z34;
%   y35=y30; x35=x33+switch_gap; % middle of switch closer
%   x36=x37=x35; y36=y35-switch_space; y37=y35+switch_space;
%   draw z36--z37; % switch closer
%   x38=x35+switch_hgt; y38=y35; draw z35--z38;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[b]{@{}l}
%                    Brake \\ Actuated \\ Switch
% 	        \end{tabular}} etex,
% 		z38);
%  drawoptions(withcolor red);
%  dotlabels.rt(20,21,22,23,24,25,26);
  % main lights
%   path post;
%   post=fullcircle scaled 2pt;
%   z40=.75[z2,z3]; x41=x40; y41=y0; % top, bot
%   z42=.1[z40,z41]; draw z40--z42; % where break into  switch      
%   % posts for main light switch
%   z43=(0,-.75v);  z44=z43 rotated 30; z45=z43 rotated -30;
%   z46=z43 shifted z42; z47=z44 shifted z42; z48=z45 shifted z42;
%   drawarrow z42--.95[z42,z47];
%   filldraw post shifted z42 withcolor white; draw post shifted z42;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[b]{@{}l@{}}
%                    Light \\ Switch
% 	        \end{tabular}} etex,
% 		z42);
%   filldraw post shifted z46 withcolor white; draw post shifted z46;
%     % for dimmer switch
%     x50=x47; y50=y0; z51=.2[z47,z50]; draw z47--z51;
%   filldraw post shifted z47 withcolor white; draw post shifted z47;
%   filldraw post shifted z48 withcolor white; draw post shifted z48;
%     label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}r@{}}
%                    Off
% 	        \end{tabular}} etex,
% 		z48);
%   % dimmer switch
%   z49=z43 rotated 40; z491=z43 rotated -40;
%   z52=z49 shifted z51; z53=z491 shifted z51;
%   drawarrow z51--.95[z51,z52];      
%   filldraw post shifted z51 withcolor white; draw post shifted z51;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[b]{@{}l@{}}
%                    Dimmer
% 	        \end{tabular}} etex,
% 		z51);
%   % wire leading down from Hi post
%     x60=x61=x52; y60=y3; y61=y0;   % top, bot pt above, below Hi post
%     z62=split_wires_percent[z60,z61];
%     draw z52--z62;
%   % now draw the Hi post
%   filldraw post shifted z52 withcolor white; draw post shifted z52;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l@{}}
%                    Hi
% 	        \end{tabular}} etex,
% 		z52);
%   % wire leading down from Hi post
%     x70=x71=x53; y70=y3; y71=y0;   % top, bot pt above, below Lo post
%     z72=split_wires_percent[z70,z71];
%     draw z53--z72;
%   % now draw the Lo post
%   filldraw post shifted z53 withcolor white; draw post shifted z53;
%     label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}r@{}}
%                    Lo
% 	        \end{tabular}} etex,
% 		z53);
%   % Hi lights
%   y63=y64=y62; x63=x62; x64=x62+1.6bulb_diameter;
%   draw z62--z63; draw z62--z64;
%   y65=y66=y0; x65=x63; x66=x64;
%   draw_bulb_path(z63,z65);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z63,z65]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   draw_bulb_path(z64,z66);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z64,z66]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % Lo lights
%   y73=y74=y72; x73=x72-1.6bulb_diameter; x74=x72;
%   draw z72--z73; draw z72--z74;
%   y75=y76=y0; x75=x73; x76=x74;
%   draw_bulb_path(z73,z75);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z73,z75]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   draw_bulb_path(z74,z76);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z74,z76]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % label the headlights
%   label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c@{}}
%                    Headlights
% 	        \end{tabular}} etex,
% 		.5[z66,z75]);
%   % rear lights
%   z80=.7[z47,z51];
%   x81=.5[x2,x3]; y81=y80; % pt at which wire turns downward
%   x82=x83=x81; y82=y2; y83=y0; % top, bot above, below z81
%   z92=split_wires_percent[z82,z83]; % go to 90's so final digit is as above
%   draw z80--z81--z92; 
%   y93=y94=y92; x93=x92-.8bulb_diameter; x94=x92+.8bulb_diameter;
%   draw z92--z93; draw z92--z94;
%   y95=y96=y0; x95=x93; x96=x94;
%   draw_bulb_path(z93,z95);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z93,z95]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   draw_bulb_path(z94,z96);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z94,z96]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % label the headlights
%   label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c@{}}
%                    Rear \\ Lights
% 	        \end{tabular}} etex,
% 		.5[z95,z96]);

%   % parking lights
%   x100=x46; y100=.3[y46,y51]; draw z46--z100;
%     filldraw post shifted z46 withcolor white; draw post shifted z46; % redraw
%   x101=.31[x0,x1]; y101=y100;  % pt at which wire turnd down
%   x102=x103=x101; y102=y2; y103=y0; % top, bot above, below z101  
%   z112=split_wires_percent[z102,z103]; % go to 90's so final digit is as above
%   draw z100--z101--z112; 
%   y113=y114=y112; x113=x112-.8bulb_diameter; x114=x112+.8bulb_diameter;
%   draw z112--z113; draw z112--z114;
%   y115=y116=y0; x115=x113; x116=x114;
%   draw_bulb_path(z113,z115);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z113,z115]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   draw_bulb_path(z114,z116);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z114,z116]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % label the headlights
%   label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c@{}}
%                    Parking \\ Lights
% 	        \end{tabular}} etex,
% 		.5[z115,z116]);
endfig;





beginfig(53); % hwk for cars battery and lights; brake lights, hi-beam, rears
  numeric fullwidth, fullheight;
  fullwidth=11.5w; fullheight=5.5v;

  numeric switch_space, switch_hgt, switch_gap; % dist, hgt between lines
                                                % and dist to switch closer
  switch_hgt=.5battery_longline_length; switch_space=1.618switch_hgt; 
    switch_gap=.5battery_shortline_length;
  % four corners of the circuit
  z2=(0,fullheight);  z3=(fullwidth,fullheight); 
  z0=(0,0);           z1=(fullwidth,0);
  %
  pickup pencircle scaled line_width_light;
%  draw z2--1.02[z2,z3];  % top line
%  draw z0--1.02[z0,z1];  % bottom line
  draw_battery_path(z2,z0); % left-hand wire
%     label.urt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l}
%                    12V \\
% 	        \end{tabular}} etex,
% 	      .5[z0,z2]);
%  z5=.2[z3,z1];
%  draw_bulb_path(z3,z5); % right-hand wire
%    label.rt(btex {\small\renewcommand{\arraystretch}{.9}
%                \circuitfont\begin{tabular}{@{}l}
%                   Dome \\ Light
%	        \end{tabular}} etex,
%	      .5[z3,z5]
%	      +.5(bulb_diameter,0));
  % switch on right
%   z6=.4[z3,z1]; x7=x8=x6; y7=y6+.5switch_space; y8=y6-.5switch_space;
%   draw z5--z7;
%   x9=x10=x8+switch_hgt; y9=y7; y10=y8; % ends of switch horiz lines
%   draw z7--z9; draw z8--z10;
%   y11=y6; x11=x10+switch_gap; % middle of switch closer
%   x12=x13=x11; y12=y11-switch_space; y13=y11+switch_space;
%   draw z12--z13; % switch closer
%   x14=x11+switch_hgt; y14=y11; draw z11--z14;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l}
%                    Door \\ Actuated \\ Switch
% 	        \end{tabular}} etex,
% 		z14);
%   draw z8--z1; % end of right wire
  %
  numeric split_wires_percent; % how far from top to split for sep bulb wires 
  split_wires_percent=.625;
  % brake wire next
  z20=.12[z2,z3]; x21=x20; y21=y0;   % top, bot pt of wire
%     label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c}
%                    Brake \\  Lights
% 	        \end{tabular}} etex,
% 		z21);
  z22=split_wires_percent[z20,z21];
  y23=y24=y22; x23=x22-.8bulb_diameter; x24=x22+.8bulb_diameter;
  draw z22--z23; draw z22--z24;
  y25=y26=y0; x25=x23; x26=x24;
  % interpolated code starts here
  draw z20--z22;
  draw_resistor_path(z23,z25);
  draw_resistor_path(z24,z26);
  draw z20--z2;
  draw z26--z0;
  % interpolated code ends here

%   draw_bulb_path(z23,z25);
%       label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                   \circuitfont\begin{tabular}[t]{@{}l@{}}
%                      2 \\ ohm
%   	        \end{tabular}} etex,
%   		.5[z23,z25]
%   		-.5(zigheight,0));
%   draw_bulb_path(z24,z26);
%       label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                   \circuitfont\begin{tabular}[t]{@{}l@{}}
%                      2 \\ ohm
%   	        \end{tabular}} etex,
%   		.5[z24,z26]
%   		-.5(zigheight,0));
%   z30=.2[z20,z21];
%   x31=x32=x30; y31=y30+.5switch_space; y32=y30-.5switch_space;
%   draw z20--z31; draw z32--z22;
%   x33=x34=x30+switch_hgt; y33=y31; y34=y32; % ends of switch horiz lines
%   draw z31--z33; draw z32--z34;
%   y35=y30; x35=x33+switch_gap; % middle of switch closer
%   x36=x37=x35; y36=y35-switch_space; y37=y35+switch_space;
%   draw z36--z37; % switch closer
%   x38=x35+switch_hgt; y38=y35; draw z35--z38;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[b]{@{}l}
%                    Brake \\ Actuated \\ Switch
% 	        \end{tabular}} etex,
% 		z38);
  % main lights
   path post;
   post=fullcircle scaled 2pt;
   z40=.75[z2,z3]; x41=x40; y41=y0; % top, bot
   z42=.1[z40,z41]; draw z40--z42; % where break into  switch      
   % posts for main light switch
   z43=(0,-.75v);  z44=z43 rotated 30; z45=z43 rotated -30;
   z46=z43 shifted z42; z47=z44 shifted z42; z48=z45 shifted z42;
   drawarrow z42--.95[z42,z47];
   filldraw post shifted z42 withcolor white; draw post shifted z42;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[b]{@{}l@{}}
%                    Light \\ Switch
% 	        \end{tabular}} etex,
% 		z42);
%   filldraw post shifted z46 withcolor white; draw post shifted z46;
     % for dimmer switch
     x50=x47; y50=y0; z51=.2[z47,z50]; draw z47--z51;
   filldraw post shifted z47 withcolor white; draw post shifted z47;
%   filldraw post shifted z48 withcolor white; draw post shifted z48;
%     label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}r@{}}
%                    Off
% 	        \end{tabular}} etex,
% 		z48);
%   % dimmer switch
   z49=z43 rotated 40; z491=z43 rotated -40;
   z52=z49 shifted z51; z53=z491 shifted z51;
   drawarrow z51--.95[z51,z52];      
   filldraw post shifted z51 withcolor white; draw post shifted z51;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[b]{@{}l@{}}
%                    Dimmer
% 	        \end{tabular}} etex,
% 		z51);
   % wire leading down from Hi post
     x60=x61=x52; y60=y3; y61=y0;   % top, bot pt above, below Hi post
     z62=split_wires_percent[z60,z61];
     draw z52--z62;
   % now draw the Hi post
   filldraw post shifted z52 withcolor white; draw post shifted z52;
%     label.rt(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}l@{}}
%                    Hi
% 	        \end{tabular}} etex,
% 		z52);
%   % wire leading down from Lo post
%     x70=x71=x53; y70=y3; y71=y0;   % top, bot pt above, below Lo post
%     z72=split_wires_percent[z70,z71];
%     draw z53--z72;
%   % now draw the Lo post
%   filldraw post shifted z53 withcolor white; draw post shifted z53;
%     label.lft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}{@{}r@{}}
%                    Lo
% 	        \end{tabular}} etex,
% 		z53);
   % Hi lights
   y63=y64=y62; x63=x62; x64=x62+1.6bulb_diameter;
   draw z62--z63; draw z62--z64;
   y65=y66=y0; x65=x63; x66=x64;
   draw_resistor_path(z63,z65);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z63,z65]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
   draw_resistor_path(z64,z66);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z64,z66]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % Lo lights
%   y73=y74=y72; x73=x72-1.6bulb_diameter; x74=x72;
%   draw z72--z73; draw z72--z74;
%   y75=y76=y0; x75=x73; x76=x74;
%   draw_bulb_path(z73,z75);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z73,z75]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   draw_bulb_path(z74,z76);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z74,z76]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % label the headlights
%   label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c@{}}
%                    Headlights
% 	        \end{tabular}} etex,
% 		.5[z66,z75]);
   % rear lights
   z80=.7[z47,z51];
   x81=.5[x2,x3]; y81=y80; % pt at which wire turns downward
   x82=x83=x81; y82=y2; y83=y0; % top, bot above, below z81
   z92=split_wires_percent[z82,z83]; % go to 90's so final digit is as above
   draw z80--z81--z92; 
   y93=y94=y92; x93=x92-.8bulb_diameter; x94=x92+.8bulb_diameter;
   draw z92--z93; draw z92--z94;
   y95=y96=y0; x95=x93; x96=x94;
   draw_resistor_path(z93,z95);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z93,z95]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
   draw_resistor_path(z94,z96);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z94,z96]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % label the headlights
%   label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c@{}}
%                    Rear \\ Lights
% 	        \end{tabular}} etex,
% 		.5[z95,z96]);

%   % parking lights
%   x100=x46; y100=.3[y46,y51]; draw z46--z100;
%     filldraw post shifted z46 withcolor white; draw post shifted z46; % redraw
%   x101=.31[x0,x1]; y101=y100;  % pt at which wire turnd down
%   x102=x103=x101; y102=y2; y103=y0; % top, bot above, below z101  
%   z112=split_wires_percent[z102,z103]; % go to 90's so final digit is as above
%   draw z100--z101--z112; 
%   y113=y114=y112; x113=x112-.8bulb_diameter; x114=x112+.8bulb_diameter;
%   draw z112--z113; draw z112--z114;
%   y115=y116=y0; x115=x113; x116=x114;
%   draw_bulb_path(z113,z115);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    L
% 	        \end{tabular}} etex,
% 		.5[z113,z115]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   draw_bulb_path(z114,z116);
%     label.llft(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}r@{}}
%                    R
% 	        \end{tabular}} etex,
% 		.5[z114,z116]
% 		-.707(.25bulb_diameter,.25bulb_diameter));
%   % label the headlights
%   label.bot(btex {\small \renewcommand{\arraystretch}{.9}
%                 \circuitfont\begin{tabular}[t]{@{}c@{}}
%                    Parking \\ Lights
% 	        \end{tabular}} etex,
% 		.5[z115,z116]);
  %interpolated code
  draw z2--z40;
  draw z0--z66;
%  drawoptions(withcolor red);
%  dotlabels.rt(0,66);
endfig;





beginfig(54); % Rick Cleary's birthday vectorology problem
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=.15in; v:=u; w:=u;
  linecap:=butt;  

  pickup pencircle scaled line_width_light;
  draw (-0.2w,0v)--(13w,0v);
  draw (0w,-0.2v)--(0w,32v);
  path month_tic , day_tic, day_mark;
  month_tic=(0w,0v)--(0w,-.1v);
  day_tic=(0w,0v)--(-.1w,0v);
  day_mark=fullcircle scaled .03in;  % Used to mark each day in the calendar
  % Draw line bisecting angel between (12,1) and (1,31)
  numeric bisecting_angle;
  path bisecting_line;
  bisecting_angle=.5[angle(12w,1v),angle(1w,31v)];
  z0=whatever[(0w,0v),(cosd(bisecting_angle)*w,sind(bisecting_angle)*v)]=whatever[(12w,1v),(12w,31v)];  % where bisecting line and right side of graph intersect
  bisecting_line=(0w,0v)--z0;
  draw bisecting_line dashed evenly scaled 2;
  % Draw RC's Birthday
  drawarrow (0w,0v)--(7w,12v) withcolor .9[white,black];
  % Draw calendar
  for day=1 upto 31:
    draw day_tic shifted (0w,day*v);
    endfor
    label.lft(btex \small $10$ etex,(0w,10v));
    label.lft(btex \small $20$ etex,(0w,20v));
    label.lft(btex \small $30$ etex,(0w,30v));
  draw month_tic shifted (1w,0v);  % Jan
    label.bot(btex \small J etex,(1w,0v));
    for day=1 upto 31:
      draw day_mark shifted (1w,day*v);
      endfor
  draw month_tic shifted (2w,0v);  % Feb
    label.bot(btex \small F etex,(2w,0v));
    for day=1 upto 29:
      draw day_mark shifted (2w,day*v);
      endfor
  draw month_tic shifted (3w,0v);  % Mar
    label.bot(btex \small M etex,(3w,0v));
    for day=1 upto 31:
      draw day_mark shifted (3w,day*v);
      endfor
  draw month_tic shifted (4w,0v);  % Apr
    label.bot(btex \small A etex,(4w,0v));
    for day=1 upto 30:
      draw day_mark shifted (4w,day*v);
      endfor
  draw month_tic shifted (5w,0v);  % May 
    label.bot(btex \small M etex,(5w,0v));
    for day=1 upto 31:
      draw day_mark shifted (5w,day*v);
      endfor
  draw month_tic shifted (6w,0v);  % Jun
    label.bot(btex \small J etex,(6w,0v));
    for day=1 upto 30:
      draw day_mark shifted (6w,day*v);
      endfor
  draw month_tic shifted (7w,0v);  % Jul
    label.bot(btex \small J etex,(7w,0v));
    for day=1 upto 31:
      draw day_mark shifted (7w,day*v);
      endfor
  draw month_tic shifted (8w,0v);  % Aug
    label.bot(btex \small A etex,(8w,0v));
    for day=1 upto 31:
      draw day_mark shifted (8w,day*v);
      endfor
  draw month_tic shifted (9w,0v);  % Sep
    label.bot(btex \small S etex,(9w,0v));
    for day=1 upto 30:
      draw day_mark shifted (9w,day*v);
      endfor
  draw month_tic shifted (10w,0v);  % Oct
    label.bot(btex \small O etex,(10w,0v));
    for day=1 upto 31:
      draw day_mark shifted (10w,day*v);
      endfor
  draw month_tic shifted (11w,0v);  % Nov
    label.bot(btex \small N etex,(11w,0v));
    for day=1 upto 30:
      draw day_mark shifted (11w,day*v);
      endfor
  draw month_tic shifted (12w,0v);  % Dec
    label.bot(btex \small D etex,(12w,0v));
    for day=1 upto 31:
      draw day_mark shifted (12w,day*v);
      endfor
endfig;




end





