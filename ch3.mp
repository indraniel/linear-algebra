% CH3.mp
%  MetaPost input file with chapter three pictures.
verbatimtex
%&latex
\documentclass{book}
\usepackage{bookjh} 
\usepackage{linalgjh}
\begin{document}
etex

input jh
ahangle:=40;

input arrow
input jh3d


beginfig(1) % (2,2,1) and its projection
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 
  
  vect_def(c_a,2,2,1);  vect_def(c_b,2,2,0);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,2,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,2,2.5);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  %pickup pencircle scaled (2*line_width_dark);
  %drawarrow z0--z1 withcolor white;
  pickup pencircle scaled (line_width_light);
  drawarrow z0--z1;
  %pickup pencircle scaled (2*line_width_light);
  %drawarrow z0--z2 withcolor white;
  pickup pencircle scaled (line_width_dark);
  drawarrow z0--z2;
%  pickup pencircle scaled line_width_dark;
%  draw .5[z1,z2]--z2--z4--.5[z4,z3];
  %path aa_path;
  %aa_path = z1{dir (angle(z1-z0)-90)}..{dir (angle(z2-z0)-90)}z2;
  draw_action_arrow(z1--z2);
endfig;


beginfig(2) % (-1,1,2) and its projection
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 

  vect_def(c_a,-1,1,1);  vect_def(c_b,-1,1,0);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,2,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,2,2.5);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  %pickup pencircle scaled (2*line_width_dark);
  %drawarrow z0--z1 withcolor white;
  pickup pencircle scaled (line_width_light);
  drawarrow z0--z1;
  %pickup pencircle scaled (2*line_width_light);
  %drawarrow z0--z2 withcolor white;
  pickup pencircle scaled (line_width_dark);
  drawarrow z0--z2;
%  pickup pencircle scaled line_width_dark;
%  draw .5[z1,z2]--z2--z4--.5[z4,z3];
  draw_action_arrow(z1--z2);
endfig;


beginfig(3) % (1,3,3) and its projection
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d, c_e, c_f,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  c_c:=new_vect;  c_d:=new_vect; 
  c_e:=new_vect;  c_f:=new_vect; 

  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 

  vect_def(c_a,1,3,2);  vect_def(c_b,1,3,0);
  vect_def(c_c,2,2,1);  vect_def(c_d,2,2,0); % from fig 1
  vect_def(c_e,-1,1,1);  vect_def(c_f,-1,1,0); % from fig 2

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,c_e);
  project_point(6,c_f);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,3.5,2.5);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  %pickup pencircle scaled (2*line_width_dark);
  %drawarrow z0--z1 withcolor white;
  pickup pencircle scaled (line_width_light);
  draw z0--z3 withcolor lightgray;
  draw z3--z1 withcolor lightgray;  
  drawarrow z0--z1;
  %pickup pencircle scaled (2*line_width_light);
  %drawarrow z0--z2 withcolor white;
  pickup pencircle scaled (line_width_dark);
  draw z0--z4 withcolor lightgray;
  draw z4--z2 withcolor lightgray;
  drawarrow z0--z2;
%  pickup pencircle scaled line_width_dark;
%  draw .5[z1,z2]--z2--z4--.5[z4,z3];
  draw_action_arrow(z1--z2);
endfig;






beginfig(4) % R^3 and R^2
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save rtwoshift; pair rtwoshift; rtwoshift = (5.5w,0); % how far R2 is shifted
  
  save c_a, c_b, c_c, c_d, c_e, c_f,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  c_c:=new_vect;  c_d:=new_vect; 
  c_e:=new_vect;  c_f:=new_vect; 

  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 

  vect_def(c_a,1,3,2);  vect_def(c_b,1,3,0);
  vect_def(c_c,2,2,1);  vect_def(c_d,2,2,0); % from fig 1
  vect_def(c_e,-1,1,1);  vect_def(c_f,-1,1,0); % from fig 2

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b); % R^2
  project_point(3,c_c);
  project_point(4,c_d); % R^2
  project_point(5,c_e);
  project_point(6,c_f); % R^2

  % draw R^3 axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,3,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,3,2.5);

  % draw R^2 axes, in perspective (pasted from jh3d)
    save xaxis, yaxis;
    xaxis:=new_vect; yaxis:=new_vect;
    vect_mult(xaxis,vect_I,1.5);
    vect_mult(yaxis,vect_J,3);
    project_point(11,vect_null);
    project_point(12,xaxis);
    project_point(13,yaxis);
    draw (z11--z12) shifted rtwoshift;
    draw (z11--z13) shifted rtwoshift;
    free_vect(yaxis);  free_vect(xaxis); 
 
  % vectors in R3
  save many_vecs; path many_vecs; many_vecs = (0,-4pt)--(0,4pt); 
  pickup pencircle scaled line_width_light;
  drawarrow z0--z3 withcolor lightgray;
    draw (many_vecs shifted z3) dashed withdots scaled 0.2;
  drawarrow z0--z5 withcolor lightgray;  
    draw (many_vecs shifted z5) dashed withdots scaled 0.2;
  drawarrow z0--z1 withcolor lightgray;  % main vector
    draw (many_vecs shifted z1) dashed withdots scaled 0.2;

  % vectors in R^2 (shifted)
  z20=z0 shifted rtwoshift;
  z22=z2 shifted rtwoshift;
  z24=z4 shifted rtwoshift;
  z26=z6 shifted rtwoshift;
  pickup pencircle scaled line_width_light;
  drawarrow (z0--z4) shifted rtwoshift;
    label.rt(btex {\scriptsize $\vec{w}_1$} etex,z24);
  drawarrow (z0--z6) shifted rtwoshift;
    label.rt(btex {\scriptsize $\vec{w}_2$} etex,z26);
  drawarrow (z0--z2) shifted rtwoshift; % main vector 
    label.rt(btex {\scriptsize $\vec{w}_1+\vec{w}_2$} etex,z22);

  % The maps
  y21=y1; y23=y3; y25=y5; x21=x23=x25=.95[x0,x20];
  path action_path[];
  action_path1 = z1{right}..z21..{down}(z2 shifted rtwoshift);
  draw_action_arrow(action_path1);
  action_path3 = z3{right}..z23..{down}(z4 shifted rtwoshift);
  draw_action_arrow(action_path3);
  action_path5 = z5{right}..z25..{down}(z6 shifted rtwoshift);
  draw_action_arrow(action_path5);

  %dotlabels.rt(21,23,25);
endfig;



beginfig(5) % bean with mapsto
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v;

  save codshift; pair codshift; codshift = (7w,0); % how far shifted
  draw generic_set(2w,4.25v);
  draw generic_set(2.1w,4.4v) shifted codshift;

  save many_pts; path many_pts; many_pts = (0,-5pt)--(0,5pt); 
  z0 = (1.4w,.8v); z1= (1.5w,.9v);
  z2 = (.8w,2.1v); z3= (1w,2.1v);
  z4 = (1.25w,3.3v); z5= (1.5w,3.1v);
  pickup pencircle scaled line_width_light;
  forsuffixes s = 0, 2, 4: 
    draw (many_pts shifted z[s]) dashed withdots scaled 0.3;
    drawdot (z[s+1] shifted codshift);
    draw_action_arrow((z[s]{(3,1)}..(z[s+1] shifted codshift)));
  endfor
endfig;



beginfig(6) % an `a' vector
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pensquare scaled line_width_light;
  draw (-w,0v)--(3.5w,0v); % x-axis
  draw (0w,-v)--(0w,3.5v); % y-axis
  z0=(0w,2v); z1=(2w,0v);
  pickup pencircle scaled line_width_light;
  z3=whatever[z0,z1]; x3=-.5w;
  z4=whatever[z0,z1]; y4=-.5v;
  draw z3--z4 withcolor lightgray;
    %label.rt(btex \makebox[0pt][l]{\scriptsize $x+y=a$} etex,z4);
  pickup pencircle scaled line_width_dark;
  z5=(.75w,1.25v);
  drawarrow (0,0)--z5;
    label.urt(btex \makebox[0pt][l]{\scriptsize $\vec{v}_1$} etex,z5);
endfig;







beginfig(7) % an `b' vector
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pensquare scaled line_width_light;
  draw (-w,0v)--(3.5w,0v); % x-axis
  draw (0w,-v)--(0w,3.5v); % y-axis
  z0=(0w,3v); z1=(3w,0v);
  pickup pencircle scaled line_width_light;
  z3=whatever[z0,z1]; x3=-.5w;
  z4=whatever[z0,z1]; y4=-.5v;
  draw z3--z4 withcolor lightgray;
    %label.rt(btex \makebox[0pt][l]{\scriptsize $x+y=b$} etex,z4);
  pickup pencircle scaled line_width_dark;
  z5=(2w,1v);
  drawarrow (0,0)--z5;
    label.urt(btex \makebox[0pt][l]{\scriptsize $\vec{v}_2$} etex,z5);
endfig;






beginfig(8) % an `a+b' vector
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pensquare scaled line_width_light;
  draw (-w,0v)--(3.5w,0v); % x-axis
  draw (0w,-v)--(0w,3.5v); % y-axis
  z0=(0w,5v); z1=(5w,0v);
  pickup pencircle scaled line_width_light;
  z3=whatever[z0,z1]; x3=w;
  z4=whatever[z0,z1]; y4=v;
  draw z3--z4 withcolor lightgray;
    %label.rt(btex \makebox[0pt][l]{\scriptsize $x+y=a+b$} etex,z4);
  draw (0,0)--(.75w,1.25v)--(2.75w,2.25v) withcolor lightgray;
  pickup pencircle scaled line_width_dark;
  z5=(2.75w,2.25v);
  drawarrow (0,0)--z5;
    label.urt(btex \makebox[0pt][l]{\scriptsize $\vec{v}_1+\vec{v}_2$} etex,
              z5);
endfig;



beginfig(9) % three planes that are inverse images
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  c_d:=new_vect;  c_e:=new_vect;   c_f:=new_vect;  c_g:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 
  
  vect_def(c_a,2,2,1);  vect_def(c_b,2,0,0);
  vect_def(c_d,0,-1.618,1);  vect_def(c_e,0,1.618,1);
    vect_def(c_f,0,1.618,-1);  vect_def(c_g,0,-1.618,-1);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(10,c_d);
  project_point(11,c_e);
  project_point(12,c_f);
  project_point(13,c_g);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,2,2);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,2,2);

  path planepath[]; pair shift; shift = 0.2*(z2-z0);
  %z10=z0-(1.5w,v); y11=y10; x12=x11=x10+3w; x13=x10; y12=y13=y10+2v; 
  planepath1 = z10--z11--z12--z13--cycle;
  planepath2 = planepath1 shifted shift;
  planepath3 = planepath2 shifted shift;
  
  pickup pencircle scaled line_width_light;
  %fill planepath1 withcolor white;
  draw planepath1;
  fill planepath2 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw planepath2 withcolor white;
  pickup pencircle scaled line_width_light;
  draw planepath2;
  fill planepath3 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw planepath3 withcolor white;
  pickup pencircle scaled line_width_light;
  draw planepath3;
  % finish with the x-axis coming out of the three planes
  draw .5[point 0 of planepath3,point2 of planepath3]--z2;
endfig;




beginfig(10) % bean picture showing nullspace
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v;

  save codshift; pair codshift; codshift = (7w,0); % how far shifted
  draw generic_set(2w,4.25v);
  draw generic_set(2.1w,4.4v) shifted codshift;

  save many_pts; path many_pts; many_pts = (0,-5pt)--(0,5pt); 
  z0 = (1.35w,2.1v); z1= (1w,2.1v);
  pickup pencircle scaled line_width_light;
  draw (many_pts shifted z0) dashed withdots scaled 0.3;
  pickup pencircle scaled line_width_dark;
  drawdot z0;
    label.lft(btex {\small $0_V$} etex,z0);
  drawdot (z1 shifted codshift);
    label.rt(btex {\small $0_W$} etex,(z1 shifted codshift));
  draw_action_arrow((z0{(3,1)}..(z1 shifted codshift)));
endfig;








beginfig(11) % R^3 and R^2
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save rtwoshift; pair rtwoshift; rtwoshift = (5.5w,0); % how far R2 is shifted
  
  save c_a, c_b, c_c,
       origin;
  c_a:=new_vect;  c_b:=new_vect; c_c:=new_vect;

  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 

  vect_def(c_a,1,3,2);  vect_def(c_b,1,3,0);
    vect_def(c_c,1.5,0,0);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a); % a pt in Re^3
  project_point(2,c_b); % the projection to Re^2
  project_point(3,c_c); % R^3's xaxis

  % draw R^3 axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,3,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,3,2.5);
    label.ulft(btex {\scriptsize $\Re^3$} etex,z3);

  % draw R^2 axes, in perspective (pasted from jh3d)
    save xaxis, yaxis;
    xaxis:=new_vect; yaxis:=new_vect;
    vect_mult(xaxis,vect_I,1.5);
    vect_mult(yaxis,vect_J,3);
    project_point(11,vect_null);
    project_point(12,xaxis);
    project_point(13,yaxis);
    draw (z11--z12) shifted rtwoshift;
    draw (z11--z13) shifted rtwoshift;
      label.urt(btex {\scriptsize $\Re^2$} etex,z13 shifted rtwoshift);
    free_vect(yaxis);  free_vect(xaxis); 
 
  % vectors in R3
  save many_vecs; path many_vecs; many_vecs = (0,-1.2v)--(0,1.2v); 
  pickup pencircle scaled line_width_light;
  for i=-3 step 1 until 3:
    drawarrow z0--(z1+i*(0,.20v));
  endfor
  draw (many_vecs shifted (z1+(1pt,0))) dashed withdots scaled 0.25;

  % vectors in R^2 (shifted)
  z20=z0 shifted rtwoshift;
  z22=z2 shifted rtwoshift;
  pickup pencircle scaled line_width_light;
  drawarrow (z0--z2) shifted rtwoshift;  
    label.lrt(btex {\scriptsize $\vec{w}$} etex,z2 shifted rtwoshift);
  
  % The map
  path action_path[];
  action_path1 = z1{right}..{down}(z2 shifted rtwoshift);
  draw_action_arrow(action_path1);
endfig;




beginfig(12) % `a' vectors mapped to a
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  % R^2 first
  pickup pensquare scaled line_width_light;
  path xaxis, yaxis;
    xaxis = (-w,0v)--(3.5w,0v); draw xaxis;
    yaxis = (0w,-v)--(0w,3.5v); draw yaxis;
    label.ulft(btex {\scriptsize $\Re^2$} etex,point 0 of xaxis);
  z0=(0w,2v); z1=(2w,0v);   % line is x+y=2
  pickup pencircle scaled line_width_light;
  z3=whatever[z0,z1]; x3=-.5w;
  z4=whatever[z0,z1]; y4=-.5v;
  draw z3--z4 dashed withdots scaled 0.25;
    %label.rt(btex \makebox[0pt][l]{\scriptsize $x+y=a$} etex,z4);
  z5=(.75w,1.25v)-(.5pt,.5pt);
  pickup pencircle scaled line_width_light;
  for i=-3 step 1 until 3:
    drawarrow (0,0)--(z5+i*(.20w,-.20v));
    drawarrow (0,0)--(z5-i*(.20w,-.20v));
  endfor
  % next R^1
  save roneshift; pair roneshift; roneshift = (5.5w,0); % how far R1 is shifted
  pickup pensquare scaled line_width_light;
  draw (xaxis shifted roneshift);
    label.urt(btex {\scriptsize $\Re^1$} etex,(point infinity of xaxis) shifted roneshift);
  pickup pencircle scaled 2line_width_dark;
  drawdot (z1 shifted roneshift) withcolor white;
  pickup pencircle scaled line_width_light;
  drawdot (z1 shifted roneshift);
    label.bot(btex {\scriptsize $w$} etex,z1 shifted roneshift);
  % The map
  path action_path[];
  action_path1 = z5{right}...{down}(z1 shifted roneshift);
  draw_action_arrow(action_path1);  
endfig;





beginfig(13) % \P_5 space with some parabolas
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.4in; v:=u; w:=v;

  pickup pensquare scaled line_width_light;
  draw (-2.5w,0v)--(2.5w,0v); % x-axis
    updown_ticks(5,(-2w,0),(w,0));
  draw (0w,-1.25v)--(0w,1.25v); % y-axis
    sidetoside_ticks(3,(0,-v),(0,v));
  pickup pencircle scaled line_width_light;
  numeric i, j; pair z_[]; path p; % draw the parabolas; y+1=16x^2 seems nice
  for i=-.375 step .025 until .375:
    z_[i]=(i*w,(16*i*i-1)*v);
  endfor
  p = z_[-.375] for i=-.350 step .025 until .375: .. z_[i] endfor;
  for j=-2 upto 2: 
    draw p shifted (j*w,0v);
  endfor
  label.rt(btex {\scriptsize $p_0$} etex,(0w,-1v));
  label.rt(btex {\scriptsize $p_1$} etex,(1w,-1v));
endfig;




beginfig(14) % dialation map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (10w,0v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(4,(1w,0)+codomainshift,(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(3,(0,v)+codomainshift,(0,v));

  z0=(2w,2v); z1=(2w,1v);
  z2=(3w,3v); z3=(3w,1.5v);
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--z0;
    label.rt(btex {\scriptsize $\vec{u}$} etex,z0);
  drawarrow (0w,0v)--z1;
    label.rt(btex {\scriptsize $\vec{v}$} etex,z1);
  drawarrow ((0w,0v)--z2) shifted codomainshift;
    label.rt(btex {\scriptsize $d_{1.5}(\vec{u})$} etex,
               z2 shifted codomainshift);
  drawarrow ((0w,0v)--z3) shifted codomainshift;
    label.rt(btex {\scriptsize $d_{1.5}(\vec{v})$} etex,
               z3 shifted codomainshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{d_{1.5}}{\longrightarrow}$} etex,z7);
endfig;




beginfig(15) % rotation map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (10w,0v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(4,(1w,0)+codomainshift,(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(3,(0,v)+codomainshift,(0,v));

  z0=(3w,1v); 
  z2=((3*(sqrt 3)*.5-.5)*w,(1.5+(sqrt 3)*.5)*v); 
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--z0;
    label.rt(btex {\scriptsize $\vec{u}$} etex,z0);
  drawarrow ((0w,0v)--z2) shifted codomainshift;
    label.rt(btex {\scriptsize $t_{\pi/6}(\vec{u})$} etex,  % actually \pi/6
               z2 shifted codomainshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{t_{\pi/6}}{\longrightarrow}$} etex,z7);
endfig;



beginfig(16) % flip over a line map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (10w,0v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(4,(1w,0)+codomainshift,(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(3,(0,v)+codomainshift,(0,v));

  z0=(3w,2v); 
  z2=(2w,3v); 
  pickup pencircle scaled line_width_dark;
  z3=(-.5w,-.5v) shifted codomainshift; z4=(3w,3v) shifted codomainshift;
  draw z3--z4 dashed withdots scaled .5; 
  drawarrow (0w,0v)--z0;
    label.rt(btex {\scriptsize $\vec{u}$} etex,z0);
  drawarrow ((0w,0v)--z2) shifted codomainshift;
    picture pa;  % in case the line ell hits this label
    pa = thelabel.rt(btex {\scriptsize $f_{\ell}(\vec{u})$} etex,
                   z2 shifted codomainshift);
    unfill bbox pa; draw pa;

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{f_{\ell}}{\longrightarrow}$} etex,z7);
endfig;




beginfig(17) % equiv relation; all vs's partitioned by iso
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.8[x0,x9]; y14=.7[y10,y9]; drawpoint(z14);
    label.rt(btex {\scriptsize $V$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
    label.rt(btex {\scriptsize $W$} etex,z15);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;




beginfig(18) % equiv relation; all vs's partitioned by iso
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.45[x0,x9]; y14=.5[y10,y9]; 
    label.rt(btex {\scriptsize $\star\;\Re^2$} etex,z14);
  x15=.15[x3,x5]; y15=.6[y6,y3]; 
    label.rt(btex {\scriptsize $\star\;\Re^0$} etex,z15);
  x16=.15[x5,x11]; y16=.35[y9,y5]; 
    label.rt(btex {\scriptsize $\star\;\Re^3$} etex,z16);
  x17=.1[x8,x7]; y17=.5[0,y8]; 
    label.rt(btex {\scriptsize $\star\;\Re^1$} etex,z17);
  %x18=.35[x8,x7]; y18=.5[y4,y8]; 
  %  label.rt(btex {\scriptsize $\star\;\Re^4$} etex,z18);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;





beginfig(19) % bean picture for composition
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  save wshift, xshift; pair wshift, xshift;
    wshift = (4.5w,3.5v); xshift = (9w,0v); % how far shifted
  draw generic_set(1.5w,2.75v);
  draw generic_set(1.5w,2.75v) shifted wshift;
  draw generic_set(1.5w,2.75v) shifted xshift;

  z0 = (.75w,1.375v); % midpoint of bean
  pickup pencircle scaled line_width_light;
  boxit.v(nullpicture); v.c=z0; v.dx=1.6w; v.dy=1.5v;
  boxit.w(nullpicture); w.c=z0 shifted wshift; w.dx=1.6w; w.dy=1.5v;
  boxit.x(nullpicture); x.c=z0 shifted xshift; x.dx=1.6w; x.dy=1.5v;
  label(btex $V$ etex,(v.c+(-.1w,.5v)));
  label(btex $W$ etex,(w.c+(-.1w,.5v)));
  label(btex $X$ etex,(x.c+(-.1w,.5v)));
  
  label.ulft(btex {\small $h$} etex, cutasimple(v,w) v.c--w.c);
  label.urt(btex {\small $g$} etex, cutasimple(w,x) w.c--x.c);
  label.top(btex {\small $g\circ h$} etex, cutasimple(v,x) v.c--x.c);
  %cutasimple(w,x) w.c--x.c;
  %cutasimple(v,x) v.c--x.c;
endfig;





beginfig(20) % commutative diagram associated with prior bean picture
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  save wshift, xshift; pair wshift, xshift;
    wshift = (4.5w,3.5v); xshift = (9w,0v); % how far shifted
  %draw generic_set(1.5w,2.75v);
  %draw generic_set(1.5w,2.75v) shifted wshift;
  %draw generic_set(1.5w,2.75v) shifted xshift;

  z0 = (.75w,1.375v); % midpoint of bean
  pickup pencircle scaled line_width_light;
  circleit.vv(btex $V_\wrt{B}$ etex); vv.c=z0;  vv.dx=vv.dy=1.1u; 
  circleit.ww(btex $W_\wrt{C}$ etex); ww.c=z0 shifted wshift; ww.dx=ww.dy=1.1u; 
  circleit.xx(btex $X_\wrt{D}$ etex); xx.c=z0 shifted xshift; xx.dx=xx.dy=1.1u; 
  drawunboxed(vv,ww,xx);
  
  z1 = cutasimple(vv,ww) vv.c--ww.c;
  z2 = cutasimple(ww,xx) ww.c--xx.c;
  z3 = cutasimple(vv,xx) vv.c--xx.c;
  label.ulft(btex {\small $h$} etex, z1);
    label.lrt(btex {\small $H$} etex, z1);
  label.urt(btex {\small $g$} etex, z2);
    label.llft(btex {\small $G$} etex, z2);
  label.top(btex {\small $g\circ h$} etex, z3);
    label.bot(btex {\small $GH$} etex, z3);
endfig;





beginfig(21) % commutative diagram for inverses
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  save wshift, xshift; pair wshift, xshift;
    wshift = (4.5w,3.5v); xshift = (9w,0v); % how far shifted
  %draw generic_set(1.5w,2.75v);
  %draw generic_set(1.5w,2.75v) shifted wshift;
  %draw generic_set(1.5w,2.75v) shifted xshift;

  z0 = (.75w,1.375v); % midpoint of bean
  pickup pencircle scaled line_width_light;
  %pair vv[], ww[], xx[];
  save vv, ww, xx;
  circleit.vv(btex $V_\wrt{B}$ etex); vv.c=z0;  vv.dx=vv.dy=1.1u; 
  circleit.ww(btex $W_\wrt{C}$ etex); ww.c=z0 shifted wshift; ww.dx=ww.dy=1.1u; 
  circleit.xx(btex $V_\wrt{B}$ etex); xx.c=z0 shifted xshift; xx.dx=xx.dy=1.1u; 
  drawunboxed(vv,ww,xx);
  
  z1 = cutasimple(vv,ww) vv.c--ww.c;
  z2 = cutasimple(ww,xx) ww.c--xx.c;
  z3 = cutasimple(vv,xx) vv.c--xx.c;
  label.ulft(btex {\small $h$} etex, z1);
    label.lrt(btex {\small $H$} etex, z1);
  label.urt(btex {\small $h^{-1}$} etex, z2);
    label.llft(btex {\small $H^{-1}$} etex, z2);
  label.top(btex {\small $\identity$} etex, z3);
    label.bot(btex {\small $I$} etex, z3);
endfig;






beginfig(22) % \pi/6 rotation map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (7w,0v);
  path xaxis, yaxis;
  xaxis = (-1.5w,0v)--(1.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(3,(-1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(3,(-1w,0)+codomainshift,(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(3,(0,v)+codomainshift,(0,v));

  z0=(1w,3v); 
  z1=((-3+(sqrt 3))*0.5*w,(1+(3*(sqrt 3)))*0.5*v);
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--z0;
    label.rt(btex {\scriptsize $\colvec[r]{1 \\ 3}$} etex,z0);
  drawarrow ((0w,0v)--z1) shifted codomainshift;
    z2=(0w,3v);
    label.rt(btex \makebox[0pt][l]{\scriptsize $\colvec[r]{(-3+\sqrt{3})/2 \\
                                        (1+3\sqrt{3})/2}$} etex,
               z2 shifted codomainshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{t_{\pi/6}}{\longrightarrow}$} etex,z7);
endfig;






beginfig(23) % equiv relation; all matrices partitioned by mat-equiv
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.8[x0,x9]; y14=.7[y10,y9]; drawpoint(z14);
    label.rt(btex {\scriptsize $H$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
    label.rt(btex {\scriptsize $\hat{H}$} etex,z15);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;




beginfig(23) % equiv relation; all matrices partitioned by mat-equiv
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.8[x0,x9]; y14=.7[y10,y9]; drawpoint(z14);
    label.rt(btex {\scriptsize $H$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
    label.rt(btex {\scriptsize $\hat{H}$} etex,z15);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;




beginfig(24) % equiv relation; all matrices partitioned by mat-equiv
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw partitionbox;

  x10=.00[x0,x1]; y10=.2[y3,y0]; 
    label.rt(btex {\tiny $\star\;\left(\begin{smallmatrix}
                                         0  &0  \\
					 0 &0
					\end{smallmatrix}\right)$} etex,z10);
  x11=.60[x0,x1]; y11=.25[y3,y0]; 
    label.rt(btex {\tiny $\star\;\left(\begin{smallmatrix}
                                         1  &0  \\
					 0 &0
					\end{smallmatrix}\right)$} etex,z11);
  x12=.20[x0,x1]; y12=.75[y3,y0]; 
    label.rt(btex {\tiny $\star\;\left(\begin{smallmatrix}
                                         1  &0  \\
					 0 &1
					\end{smallmatrix}\right)$} etex,z12);
  
  path p[];

  x20=.4[x0,x1]; y20=y3;
    x21=.39[x0,x1]; y21=.3[y3,y0];
    x22=x0; y22=.45[y3,y0];
  p1=z20{down}...z21...{left}z22; draw p1;
  x30=x1; y30=.45[y1,y2];
    x31=.6[x0,x1]; y31=.5[y1,y2];
  p2=z21...z31...{right}z30; draw p2;
  %dotlabels.rt(20,21,22,30,31);
endfig;


% section 6

beginfig(25) % (2,2,1) and its projection
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 
  
  vect_def(c_a,1,2,2);  vect_def(c_b,1,2,0);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,2.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,2.5,2.5);

  pickup pencircle scaled (line_width_light);
  drawarrow z0--z1;
    label.rt(btex \raisebox{0ex}[0pt][0pt]{\scriptsize $\colvec[r]{1 \\ 2 \\ 2}$} etex,z1);
  pickup pencircle scaled (line_width_dark);
  drawarrow z0--z2;
    %label.lrt(btex {\scriptsize $\colvec[r]{1 \\ 2 \\ 0}$} etex,z2);
  draw_action_arrow((z1+(1pt,0))--(z2+(1pt,0)));
  % shift so y-axis is on TeX's baseline (to line this pic with #26)
  show ypart(llcorner currentpicture);
endfig;



beginfig(26) % (2,2,-1) and its projection
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 
  
  vect_def(c_a,1,2,-1);  vect_def(c_b,1,2,0);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,2.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,2.5,2.5);

  pickup pencircle scaled (line_width_light);
  drawarrow z0--z1;
    label.rt(btex \raisebox{0ex}[0pt][0pt]{\scriptsize $\colvec[r]{1 \\ 2 \\ -1}$} etex,z1);
  pickup pencircle scaled (line_width_dark);
  drawarrow z0--z2;
    %label.lrt(btex {\scriptsize $\colvec[r]{1 \\ 2 \\ 0}$} etex,z2);
  draw_action_arrow((z1+(1pt,0))--(z2+(1pt,0)));
  % shift so y-axes of this and prior one line up; use raisebox in TeX file.
  show ypart(llcorner currentpicture);
endfig;





beginfig(27) % projection onto a line map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  draw yaxis;
  
  z0=(0w,0v); z1=(3w,1v);  
    z2=whatever[z0,z1]; x2=xpart(point 0 of xaxis);
    z3=whatever[z0,z1]; x3=xpart(point 1 of xaxis);
  pickup pencircle scaled line_width_light;
  path ell; ell=z2--z3;  draw ell;
    label.bot(btex {\scriptsize $\ell$} etex,z3);
  pickup pencircle scaled line_width_dark;
  draw z0--1.04z1 withcolor white;
  drawarrow z0--z1;
    label.bot(btex {\scriptsize $\vec{p}$} etex,z1);
endfig;





beginfig(28) % stick figure
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  draw yaxis;
  
  z0=(0,0); z1=(3u,0v);
  z2=z1 rotated 20;  % endpoint of vector projected onto
  z3=whatever[z0,z2]; x3=xpart(point 0 of xaxis); % endpoint of line
  z4=whatever[z0,z2]; x4=xpart(point 1 of xaxis); % other endpoint of line
  pickup pencircle scaled line_width_light;
  draw z3--z4;
  pickup pencircle scaled line_width_dark; % white out a part of line
  save cps;
  boxit.cps(nullpicture); cps.c=z2; cps.dx=cps.dy=1pt;
    draw z0--z2 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z2 cutafter bpath cps;

  z5=z1 rotated 55;
  z6=whatever[z0,z5]; y6=ypart(point 0 of yaxis); % endpoint of line
  z7=whatever[z0,z5]; y7=ypart(point 1 of yaxis); % other endpoint of line
  %pickup pencircle scaled line_width_light;
  %draw z6--z7;

  % find endpoint of vector on z6--z7 that projects to z0--z2 vector 
  z10=whatever[z6,z7]; z10-z2=whatever*(z2-z0) rotated 90; % MFBook ex 9.6 
  save v;
  boxit.v(nullpicture); v.c=z10; v.dx=v.dy=1pt;
  pickup pencircle scaled line_width_dark; % white out a part of line
    draw z0--z10 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z10 cutafter bpath v;

  % draw the dotted line
  save circlepath; path circlepath;
    circlepath=makepath(pencircle scaled (2.1*u)) shifted z2;
  save perppath; path perppath;
    z11=whatever[z10,z2]; y11=ypart(point 1 of yaxis); % end of dotted line
    z12=whatever[z10,z2]; y12=ypart(point 0 of yaxis); % other end
    perppath=z11--z12;
  save inttime; numeric inttime[];
    inttime1=ypart(circlepath intersectiontimes perppath);
    inttime2=xpart(perppath intersectiontimes (z3--z4));
  pickup pencircle scaled line_width_light; % 
  draw (point 0 of perppath)--(point inttime1 of perppath) dashed withdots scaled .5;
  draw (point inttime2 of perppath)--(point 1 of perppath) dashed withdots scaled .5;
    
  pickup pencircle scaled line_width_light; % little person
  drawstickfigure(u) shifted z1 rotated 20;
endfig;





beginfig(29) % projection picture like stick figure's
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  draw yaxis;
  
  z0=(0,0); z1=(3u,0v);
  z2=z1 rotated 20;  % endpoint of vector projected onto
  z3=whatever[z0,z2]; x3=xpart(point 0 of xaxis); % endpoint of line
  z4=whatever[z0,z2]; x4=xpart(point 1 of xaxis); % other endpoint of line
  pickup pencircle scaled line_width_light;
  draw z3--z4;
  pickup pencircle scaled line_width_dark; % white out a part of line
  save cps;
  boxit.cps(nullpicture); cps.c=z2; cps.dx=cps.dy=1pt;
  draw z0--z2 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z2 cutafter bpath cps;
    label.bot(btex {\small $c_{\vec{p}}\,\vec{s}$} etex,z2);

  z5=z1 rotated 55;
  z6=whatever[z0,z5]; y6=ypart(point 0 of yaxis); % endpoint of line
  z7=whatever[z0,z5]; y7=ypart(point 1 of yaxis); % other endpoint of line
  %pickup pencircle scaled line_width_light;
  %draw z6--z7;

  % find endpoint of vector on z6--z7 that projects to z0--z2 vector 
  z10=whatever[z6,z7]; z10-z2=whatever*(z2-z0) rotated 90; % MFBook ex 9.6 
  save v;
  boxit.v(nullpicture); v.c=z10; v.dx=v.dy=1pt;
  pickup pencircle scaled line_width_dark; % white out a part of line
    draw z0--z10 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z10 cutafter bpath v;
    label.ulft(btex {\small $\vec{v}$} etex,.618[z0,z10]);

  % draw the dotted line
  save perppath; path perppath;
    z11=whatever[z10,z2]; y11=ypart(point 1 of yaxis); % end of dotted line
    z12=whatever[z10,z2]; y12=ypart(point 0 of yaxis); % other end
    perppath=z11--z12;
  pickup pencircle scaled line_width_light; % 
  %draw perppath dashed withdots scaled .5;
  pickup pencircle scaled line_width_dark; % 
  drawarrow z2--z10 cutbefore bpath cps cutafter bpath v; 
  label.rt(btex {\small $\vec{v}-c_{\vec{p}}\,\vec{s}$} etex,.618[z2,z10]);
endfig;



beginfig(30)  % projection from (2,3) to line thru (1,2)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(2.5w,0v); yaxis = (0w,-.5v)--(0w,3.75v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  draw yaxis;
    updown_ticks(2,(w,0),(w,0));  sidetoside_ticks(3,(0w,1v),(0w,1v));
  
  z0=(0,0); 
  z2=(8w/5,16v/5);  % endpoint of vector projected from
  z3=whatever[z0,z2]; y3=ypart(point 0 of yaxis); % endpoint of line
  z4=whatever[z0,z2]; y4=ypart(point 1 of yaxis); % other endpoint of line
  pickup pencircle scaled line_width_light;
  draw z3--z4;
  pickup pencircle scaled line_width_dark; % white out a part of line
  save cps; 
  boxit.cps(nullpicture); cps.c=z2; cps.dx=cps.dy=1pt;
    draw .5[z0,z2]--z2 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z2 cutafter bpath cps;

  z5=(2w,3v);
  z6=whatever[z0,z5]; y6=ypart(point 0 of yaxis); % endpoint of line
  z7=whatever[z0,z5]; y7=ypart(point 1 of yaxis); % other endpoint of line
  %pickup pencircle scaled line_width_light;
  %draw z6--z7;

  save v;
  boxit.v(nullpicture); v.c=z5; v.dx=v.dy=1pt;
  pickup pencircle scaled line_width_dark; % white out a part of line
    draw .5[z0,z5]--z5 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z5 cutafter bpath v;

  % draw the dotted line
  save perppath; path perppath;
    z11=whatever[z5,z2]; y11=ypart(point 1 of yaxis); % end of dotted line
    z12=whatever[z5,z2]; y12=xpart(point 1 of xaxis); % other end
    perppath=z11--z12;
  pickup pencircle scaled line_width_light; % 
  draw perppath dashed withdots scaled .5;
endfig;

  


beginfig(31) % rail car being pushed by the wind
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  lpn:=new_vect; vect_def(lpn,0,5,4); 
  point_of_view_abs(lpn,Obs_phi);

  
  % the arrow of the wind
  % remark: needs to be first so I can have the car or wheels
  % cut off some of the wind arrows
  save arrowhead_point, arrowhead_upper, arrowhead_lower,
    arrowbody_ufront, arrowbody_lfront, arrowbody_uback, arrowbody_lback;
  arrowhead_point:=new_vect; arrowhead_upper:=new_vect;
    arrowhead_lower:=new_vect;
  arrowbody_ufront:=new_vect; arrowbody_lfront:=new_vect;
    arrowbody_uback:=new_vect; arrowbody_lback:=new_vect;
  vect_def(arrowhead_point,0,0,0);  vect_def(arrowhead_upper,.1,-.1,.1);
    vect_def(arrowhead_lower,.1,-.1,-.1);
  vect_def(arrowbody_ufront,.1,-.1,.05);
    vect_def(arrowbody_lfront,.1,-.1,-.05);
    vect_def(arrowbody_uback,.65,-.65,.05);
    vect_def(arrowbody_lback,.65,-.65,-.05);
  project_point(30,arrowhead_point);
  project_point(31,arrowhead_upper);
  project_point(32,arrowhead_lower);
  project_point(33,arrowbody_ufront);
  project_point(34,arrowbody_lfront);
  project_point(35,arrowbody_uback);
  project_point(36,arrowbody_lback);
  free_vect(arrowbody_lback);  free_vect(arrowbody_uback);
    free_vect(arrowbody_lfront); free_vect(arrowbody_ufront);
  free_vect(arrowhead_lower); free_vect(arrowhead_upper);
    free_vect(arrowhead_point);
  save wind; path wind; wind = z36---z35---z33--z31--z30--z32--z34---cycle;

  % draw track, with rail ties
  save track_back_start, track_back_end, track_front_start, track_front_end;
    track_back_start:=new_vect; track_back_end:=new_vect;
    track_front_start:=new_vect; track_front_end:=new_vect;
    vect_def(track_back_start,0,0,0); vect_def(track_back_end,0,4,0);
    vect_def(track_front_start,.4,0,0); vect_def(track_front_end,.4,4,0);
  % Now project the 3D points down to z0 ... z3
  project_point(0,track_back_start);
  project_point(1,track_back_end);
  project_point(2,track_front_start);
  project_point(3,track_front_end);
  free_vect(track_front_end);  free_vect(track_front_start);
    free_vect(track_back_end);  free_vect(track_back_start);
  % and draw
  pickup pensquare yscaled line_width_light xscaled 1.25line_width_light;
  draw z0--z1; draw z2--z3;
  save num_ties; numeric num_ties; num_ties=12;
  save tie_spacing; pair tie_spacing; tie_spacing=((x1-x0)/num_ties,0);
  save tie_offset; pair tie_offset; tie_offset=.5*tie_spacing;
  for i=0 step 1 until (num_ties-1):
    draw (1.15[z0,z2]--1.15[z2,z0]) shifted tie_offset shifted (i*tie_spacing);
  endfor
      
  % locate wheels (should be elliptical, but I'm just going to do a circle)
  save wheel_back_left, wheel_back_right, wheel_front_left, wheel_front_right;
    wheel_back_left:=new_vect; wheel_back_right:=new_vect;
    wheel_front_left:=new_vect; wheel_front_right:=new_vect;
    vect_def(wheel_back_left,0,1,0); vect_def(wheel_back_right,0,3,0);
    vect_def(wheel_front_left,.4,1,0); vect_def(wheel_front_right,.4,3,0);
  % Project the 3D points down to z10 ... z13
  project_point(10,wheel_back_left);
  project_point(11,wheel_back_right);
  project_point(12,wheel_front_left);
  project_point(13,wheel_front_right);
  % a helper for the wheel; convert 3D to my u's.
  save wr_a;  wr_a:=new_vect; vect_def(wr_a,0,1,.25); project_point(19,wr_a);
  free_vect(wr_a);
  free_vect(wheel_front_right);  free_vect(wheel_front_left);
    free_vect(wheel_back_right);  free_vect(wheel_back_left);

  % next the car
  save car_back_uleft, car_back_uright, car_back_lright,
    car_front_uleft, car_front_uright, car_front_lleft, car_front_lright;
    car_back_uleft:=new_vect; car_back_uright:=new_vect;
    car_back_lright:=new_vect;
    car_front_uleft:=new_vect; car_front_uright:=new_vect;
    car_front_lleft:=new_vect; car_front_lright:=new_vect;
    vect_def(car_back_uleft,-.1,.6,1.4); vect_def(car_back_uright,-.1,3.4,1.4);
    vect_def(car_back_lright,-.1,3.4,.5);
    vect_def(car_front_uleft,.5,.6,1.4); vect_def(car_front_uright,.5,3.4,1.4);
    vect_def(car_front_lleft,.5,.6,.5); vect_def(car_front_lright,.5,3.4,.5);
  % Project the 3D points down to z10 ... z13
  project_point(20,car_back_uleft);
  project_point(21,car_back_uright);
  project_point(22,car_back_lright);
  project_point(23,car_front_uleft);
  project_point(24,car_front_uright);
  project_point(25,car_front_lleft);
  project_point(26,car_front_lright);
  free_vect(car_front_lright);  free_vect(car_front_lleft);
    free_vect(car_front_uright); free_vect(car_front_uleft);
  free_vect(car_back_lright);
  free_vect(car_back_uright); free_vect(car_back_uleft);

  % Draw some wind vectors, now that I know the extent of the
  % drawing (wind vectors may be obscured later by the car or the wheels)
  save wind_start; pair wind_start[];
  pickup pencircle scaled line_width_light;
  save x_min, x_max, y_min, y_max;
  numeric x_min, x_max, y_min, y_max;
  %x_min=x2; x_max=x1; y_min=y2; y_max=y20+1v; 
  x_min=0w; x_max=5w; y_min=0v; y_max=2.5v; 
  wind_start[1]=(.12[x_min,x_max],.5[y_min,y_max]);
  %wind_start[2]=(.93[x_min,x_max],.4[y_min,y_max]);
  %wind_start[3]=(.6[x_min,x_max],.78[y_min,y_max]);
  pickup pencircle scaled line_width_light;
  for k=1 upto 1:
%    wind_start[k] = (uniformdeviate 4w, uniformdeviate 3v);
    fill (wind shifted wind_start[k]) withcolor shading_color;
    draw wind shifted wind_start[k];
  endfor
  
  % Now draw the wheels
  save wheel_radius; numeric wheel_radius;
  wheel_radius=y19-y10; %   %.25u;
  save wheel; path wheel; wheel=makepath(pencircle scaled (2wheel_radius)) shifted (0,wheel_radius);
  pickup pencircle scaled line_width_light;
  for i = 10, 11, 12, 13:
    fill wheel shifted z[i] withcolor white;
    draw wheel shifted z[i];
  endfor

  % and draw the car
  pickup pensquare scaled line_width_light;
  save car_front, car_top, car_right; path car_front, car_top, car_right;
    car_front=z25--z23--z24--z26--cycle;
    car_top=z23--z20--z21--z24--cycle;
    car_right=z26--z24--z21--z22--cycle;
  fill car_front withcolor white;
  fill car_top withcolor white;
  fill car_right withcolor white;
  draw car_front; draw car_top; draw car_right;

  % more wind (the wind in front of the figure)
  wind_start[4]=(.3[x_min,x_max],.27[y_min,y_max]);
  wind_start[5]=(.38[x_min,x_max],.59[y_min,y_max]);
  wind_start[6]=(.7[x_min,x_max],.48[y_min,y_max]);
  wind_start[7]=(.76[x_min,x_max],.24[y_min,y_max]);
  %wind_start[7]=(.78[x_min,x_max],.7[y_min,y_max]);
  pickup pencircle scaled line_width_light;
  for k=4 upto 7:
    fill (wind shifted wind_start[k]) withcolor shading_color;
    draw wind shifted wind_start[k];
  endfor
endfig;
  

beginfig(32) % decomposition of wind vector from prior picture
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  lpn:=new_vect; vect_def(lpn,0,5,4); 
  point_of_view_abs(lpn,Obs_phi);

  % the arrow of the wind
  % remark: needs to be first so I can have the car or wheels
  % cut off some of the wind arrows
  save arrowhead_point, arrowhead_upper, arrowhead_lower,
    arrowbody_ufront, arrowbody_lfront, arrowbody_uback, arrowbody_lback;
  arrowhead_point:=new_vect; arrowhead_upper:=new_vect;
    arrowhead_lower:=new_vect;
  arrowbody_ufront:=new_vect; arrowbody_lfront:=new_vect;
    arrowbody_uback:=new_vect; arrowbody_lback:=new_vect;
  vect_def(arrowhead_point,0,0,0);  vect_def(arrowhead_upper,.1,-.1,.1);
    vect_def(arrowhead_lower,.1,-.1,-.1);
  vect_def(arrowbody_ufront,.1,-.1,.05);
    vect_def(arrowbody_lfront,.1,-.1,-.05);
    vect_def(arrowbody_uback,.65,-.65,.05);
    vect_def(arrowbody_lback,.65,-.65,-.05);
  project_point(30,arrowhead_point);
  project_point(31,arrowhead_upper);
  project_point(32,arrowhead_lower);
  project_point(33,arrowbody_ufront);
  project_point(34,arrowbody_lfront);
  project_point(35,arrowbody_uback);
  project_point(36,arrowbody_lback);
  free_vect(arrowbody_lback);  free_vect(arrowbody_uback);
    free_vect(arrowbody_lfront); free_vect(arrowbody_ufront);
  free_vect(arrowhead_lower); free_vect(arrowhead_upper);
    free_vect(arrowhead_point);
  z20 = .5[z35,z36];
  save wind; path wind; wind = z36---z35---z33--z31--z30--z32--z34---cycle;

  save arrowhead_offset; arrowhead_offset:=new_vect;
    vect_def(arrowhead_offset,-.25,25,0); project_point(39,arrowhead_offset);
    free_vect(arrowhead_offset);
  
  save x_start, x_end, y_start, y_end; 
  x_start:=new_vect; x_end:=new_vect;
    y_start:=new_vect; y_end:=new_vect;
  vect_def(x_start,.5,0,0); % north-south axis
  vect_def(x_end,-3,0,0);
  vect_def(y_start,0,-.5,0); % east-west axis
  vect_def(y_end,0,3,0);
  project_point(1,x_start);
  project_point(2,x_end);
  project_point(3,y_start);
  project_point(4,y_end);
  free_vect(y_end); free_vect(y_start);    
    free_vect(x_end); free_vect(x_start);
    
  % draw axes
  pickup pensquare scaled line_width_light;
  draw z1--z2; draw z3--z4;
    label.lrt(btex {\scriptsize \textit{east}} etex,z4);
    label.ulft(btex {\scriptsize \textit{north}} etex,z2);
  z0 = whatever[z1,z2] = whatever[z3,z4];  % location of (0,0)
  show z0;
  
  % the east-west arrow projection of the wind
  save ew_arrowhead_point, ew_arrowhead_upper, ew_arrowhead_lower,
    ew_arrowbody_ufront, ew_arrowbody_lfront,
    ew_arrowbody_uback, ew_arrowbody_lback;
  ew_arrowhead_point:=new_vect; ew_arrowhead_upper:=new_vect;
    ew_arrowhead_lower:=new_vect;
  ew_arrowbody_ufront:=new_vect; ew_arrowbody_lfront:=new_vect;
    ew_arrowbody_uback:=new_vect; ew_arrowbody_lback:=new_vect;
  vect_def(ew_arrowhead_point,.65,0,0);
    vect_def(ew_arrowhead_upper,.65,-.1,.1);
    vect_def(ew_arrowhead_lower,.65,-.1,-.1);
  vect_def(ew_arrowbody_ufront,.65,-.1,.05);
    vect_def(ew_arrowbody_lfront,.65,-.1,-.05);
    vect_def(ew_arrowbody_uback,.65,-.65,.05);
    vect_def(ew_arrowbody_lback,.65,-.65,-.05);
  project_point(40,ew_arrowhead_point);
  project_point(41,ew_arrowhead_upper);
  project_point(42,ew_arrowhead_lower);
  project_point(43,ew_arrowbody_ufront);
  project_point(44,ew_arrowbody_lfront);
  project_point(45,ew_arrowbody_uback);
  project_point(46,ew_arrowbody_lback);
  free_vect(ew_arrowbody_lback);  free_vect(ew_arrowbody_uback);
    free_vect(ew_arrowbody_lfront); free_vect(ew_arrowbody_ufront);
  free_vect(ew_arrowhead_lower); free_vect(ew_arrowhead_upper);
    free_vect(ew_arrowhead_point);
  save ew_wind; path ew_wind;
    ew_wind = z46---z45---z43--z41--z40--z42--z44---cycle;

  % the north-south arrow projection of the wind
  save ns_arrowhead_point, ns_arrowhead_upper, ns_arrowhead_lower,
    ns_arrowbody_ufront, ns_arrowbody_lfront,
    ns_arrowbody_uback, ns_arrowbody_lback;
  ns_arrowhead_point:=new_vect; ns_arrowhead_upper:=new_vect;
    ns_arrowhead_lower:=new_vect;
  ns_arrowbody_ufront:=new_vect; ns_arrowbody_lfront:=new_vect;
    ns_arrowbody_uback:=new_vect; ns_arrowbody_lback:=new_vect;
  vect_def(ns_arrowhead_point,0,-.65,0);
    vect_def(ns_arrowhead_upper,.1,-.65,.1);
    vect_def(ns_arrowhead_lower,.1,-.65,-.1);
  vect_def(ns_arrowbody_ufront,.1,-.65,.05);
    vect_def(ns_arrowbody_lfront,.1,-.65,-.05);
    vect_def(ns_arrowbody_uback,.65,-.65,.05);
    vect_def(ns_arrowbody_lback,.65,-.65,-.05);
  project_point(50,ns_arrowhead_point);
  project_point(51,ns_arrowhead_upper);
  project_point(52,ns_arrowhead_lower);
  project_point(53,ns_arrowbody_ufront);
  project_point(54,ns_arrowbody_lfront);
  project_point(55,ns_arrowbody_uback);
  project_point(56,ns_arrowbody_lback);
  free_vect(ns_arrowbody_lback);  free_vect(ns_arrowbody_uback);
    free_vect(ns_arrowbody_lfront); free_vect(ns_arrowbody_ufront);
  free_vect(ns_arrowhead_lower); free_vect(ns_arrowhead_upper);
    free_vect(ns_arrowhead_point);
  save ns_wind; path ns_wind;
    ns_wind = z56---z55---z53--z51--z50--z52--z54---cycle;

  % white out part of axes
  z60 = z40 shifted (z0-z20);
  z61 = z50 shifted (z0-z20);
  z62 = z30 shifted (z0-z20);
  pickup pensquare scaled line_width_dark;
  draw .05[z0,z60]--1.03[z0,z60] withcolor white;  % ew axis
  pickup pensquare scaled 2line_width_dark rotated angle(z2-z1);
  draw .5[z0,z61]--1.02[z0,z61] withcolor white;  % ns axis
  % draw wind arrow
  pickup pencircle scaled line_width_light;
  draw z62--z60 dashed withdots scaled .25; 
  draw z62--z61 dashed withdots scaled .25; 
  fill (ns_wind shifted (z0-z20)) withcolor white;
    draw ns_wind shifted (z0-z20);
  fill (wind shifted (z0-z20)) withcolor lightgray;
    draw wind shifted (z0-z20);
  fill (ew_wind shifted (z0-z20)) withcolor white;
    draw ew_wind shifted (z0-z20);
endfig;




beginfig(33) %  projection of (1,3,2) onto a line in R^3
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d, c_e,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  c_c:=new_vect;  c_d:=new_vect; 
  c_e:=new_vect;                 

  origin:=new_vect; vect_def(origin,0,0,0);
  lpn:=new_vect; vect_def(lpn,0,5,4); 

%  vect_def(c_a,2,2,3);  vect_def(c_b,7/3,7/3,7/3); % pt and projection
%  vect_def(c_c,-.75,-.75,-.75);  vect_def(c_d,3,3,3); % line
%  vect_def(c_e,2.4,2.4,2.4);
  vect_def(c_a,1,3,2);  vect_def(c_b,12/11,36/11,12/11); % pt and projection
  vect_def(c_c,-.25,-.75,-.25);  vect_def(c_d,7/5,21/5,7/5); % line
  %vect_def(c_e,2.4,2.4,2.4);

  % I don't understand what these do.
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  % Now project the 3D points c_a ... c_d down to z1 ... z4
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  %project_point(5,c_e);

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes(1.5,3.5,2.5);

  % line and vector
  pickup pencircle scaled line_width_light;
  draw z3--z4 withcolor lightgray;
    draw (.5[z0,z2])--(1.03[z0,z2]) withcolor white;
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z1 withcolor lightgray;
  drawarrow z0--z2 withcolor lightgray;

  % little man
  pickup pencircle scaled line_width_light;
  drawstickfigure(.5u) rotated angle(z4-z3) shifted (.96[z0,z1]);
  save lasso; path lasso;
  z10=1.18[z2,z1]; % lasso in hand
  z11=.25[z2,z1];
  z12-z2=z2-z13=(.05w,-.02v);
  lasso = z10--z11---z12..z13---z11--z10;
  draw lasso;
endfig;






beginfig(34) % submarine will be able to hit its target?
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-1.5w,0v)--(1.5w,0v); yaxis = (0w,-.5v)--(0w,2.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(3,(-1w,0),(1w,0));
  draw yaxis;  sidetoside_ticks(2,(0,v),(0,v));

  z0=(0w,2v); z1=((-2/3)*w,0v);
  pickup pencircle scaled line_width_light;
  z2 = whatever[z0,z1]; y2=ypart(point 1 of yaxis);
  z3 = whatever[z0,z1]; y3=ypart(point 0 of yaxis);
  draw z2--z3 dashed evenly; 
  label.bot(btex {\scriptsize\textit{east}} etex,point 1 of xaxis);
  label.lft(btex {\scriptsize\textit{north}} etex,point 1 of yaxis);
endfig;






beginfig(35) % projection picture like stick figure's; for Gram-Schmidt
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  draw yaxis;
  
  z0=(0,0); z1=(3u,0v);
  z2=z1 rotated 20;  % endpoint of vector projected onto
  z3=whatever[z0,z2]; x3=xpart(point 0 of xaxis); % endpoint of line
  z4=whatever[z0,z2]; x4=xpart(point 1 of xaxis); % other endpoint of line
  pickup pencircle scaled line_width_light;
  draw z3--z4;
  pickup pencircle scaled line_width_dark; % white out a part of line
  save cps;
  boxit.cps(nullpicture); cps.c=z2; cps.dx=cps.dy=1pt;
  draw z0--z2 withcolor white;
  pickup pencircle scaled line_width_dark; % vector projected to
  drawarrow z0--z2 cutafter bpath cps;
    label.bot(btex \makebox[0ex][l]{\scriptsize $\proj{\vec{p}}{\spanof{\vec{s}}}$} etex,z2);

  z5=z1 rotated 55;
  z6=whatever[z0,z5]; y6=ypart(point 0 of yaxis); % endpoint of line
  z7=whatever[z0,z5]; y7=ypart(point 1 of yaxis); % other endpoint of line

  % find endpoint of vector on z6--z7 that projects to z0--z2 vector 
  z10=whatever[z6,z7]; z10-z2=whatever*(z2-z0) rotated 90; % MFBook ex 9.6 
  save v;
  boxit.v(nullpicture); v.c=z10; v.dx=v.dy=1pt;
  pickup pencircle scaled line_width_dark; % white out a part of line
    draw z0--z10 withcolor white;
  pickup pencircle scaled line_width_light; % vector projected from
  drawarrow z0--z10 cutafter bpath v;
    label.ulft(btex {\scriptsize $\vec{v}$} etex,.618[z0,z10]);

  % draw the dotted line
  save perppath; path perppath;
    z11=whatever[z10,z2]; y11=ypart(point 1 of yaxis); % end of dotted line
    z12=whatever[z10,z2]; y12=ypart(point 0 of yaxis); % other end
    perppath=z11--z12;
  pickup pencircle scaled line_width_light; % 
  %draw perppath dashed withdots scaled .5;
  pickup pencircle scaled line_width_dark; % 
  drawarrow z2--z10 cutbefore bpath cps cutafter bpath v; 
  label.rt(btex {\scriptsize $\vec{v}-\proj{\vec{p}}{\spanof{\vec{s}}}$} etex,.618[z2,z10]);
endfig;






beginfig(36) % non-orthogonal basis for G-S
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,1v),(0,1v));

  z0=(0w,0v);
  z1=(4w,2v);  % endpoint of beta_1
  z2=(1w,3v);  % endpoint of beta_2
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z1; 
    label.lrt(btex {\small $\vec{\beta}_1$} etex,z1);
  drawarrow z0--z2;
    label.lrt(btex {\small $\vec{\beta}_2$} etex,z2);
endfig;







beginfig(37) % non-orthogonal's post G-S ortho basis
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,1v),(0,1v));

  z0=(0w,0v);
  z1=(4w,2v);  % endpoint of beta_1
  z2=(1w,3v);  % endpoint of beta_2
  z3=(2w,1v);
  save b_three, b_two;
  circleit.b_three(nullpicture); b_three.c=z3; b_three.dx=b_three.dy=2pt;
  circleit.b_two(nullpicture); b_two.c=z2; b_two.dx=b_two.dy=2pt;

  pickup pencircle scaled line_width_light;
  z4=whatever[z0,z1]; x4=xpart(point 0 of xaxis);
  draw z0--z4;
  draw z3--z1 cutbefore bpath b_three; % line projected to
    %label.lrt(btex {\small $\spanof{\vec{\beta}_1}$} etex,z1);
  
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z3 cutafter bpath b_three; 
  drawarrow z0--z2 cutafter bpath b_two;
  drawarrow z3--z2 cutbefore bpath b_three cutafter bpath b_two;
    label.rt(btex {\small $\vec{\kappa}_2$} etex,.618[z3,z2]);
endfig;









beginfig(38) %  projection onto a plane in R^3 (non-ortho)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=16pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,5,6); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  save p_lfront, p_lback, p_rfront, p_rback, % four corners of plane
       c_v,  % vector to be projected
       origin;
  p_lfront:=new_vect;  p_lback:=new_vect;
    p_rfront:=new_vect;  p_rback:=new_vect; 
  c_v:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);
  vect_def(p_rfront,3,4,2);  vect_def(p_rback,-2.5,4,2); % plane
    vect_def(p_lfront,3,-2,-1);  vect_def(p_lback,-2.5,-2,-1); % line
  vect_def(c_v,2,2,5);
  project_point(0,origin);
  project_point(1,p_lfront);  project_point(2,p_rfront);
    project_point(3,p_rback);  project_point(4,p_lback);
    project_point(5,c_v);
  free_vect(origin); free_vect(c_v);
    free_vect(p_rback); free_vect(p_rfront);
    free_vect(p_lback); free_vect(p_lfront);
  
  % axes (can't use routine because of interaction with the plane)
  save x_pos, x_neg, y_pos, y_neg, z_pos, z_neg;
  x_pos:=new_vect; x_neg:=new_vect; y_pos:=new_vect; y_neg:=new_vect;
    z_pos:=new_vect; z_neg:=new_vect;
  vect_def(x_pos,3.5,0,0); vect_def(x_neg,-3,0,0);
    vect_def(y_pos,0,4,0); vect_def(y_neg,0,-3,0);
    vect_def(z_pos,0,0,5); vect_def(z_neg,0,0,-2);
  project_point(10,x_pos); project_point(11,x_neg);
    project_point(12,y_pos); project_point(13,y_neg);
    project_point(14,z_pos); project_point(15,z_neg);
  free_vect(z_neg); free_vect(z_pos); free_vect(y_neg); free_vect(y_pos);
    free_vect(x_neg); free_vect(x_pos);
  % the projection
  save proj_vec; proj_vect:=new_vect; vect_def(proj_vect,2,2,1);
  project_point(20,proj_vect); free_vect(proj_vect);
  %
  pickup pensquare scaled line_width_light;
  draw z10--z11; % xaxis
  draw z12--z13; % yaxis
  % z axis is a subspace here
  pickup pensquare scaled line_width_dark;
  draw z14--z15; % zaxis
  % the plane
  save plane; path plane; plane=z1--z2--z3--z4--cycle;
  pickup pencircle scaled line_width_dark;
    draw plane withcolor white;
  fill plane withcolor lightgray;
  pickup pencircle scaled line_width_light;
    draw plane;
  % fill back in parts of axes showing through 
  pickup pensquare scaled line_width_dark;
    draw z0--z13 withcolor white; % yaxis
  pickup pensquare scaled line_width_light;
    draw z0--z13; % yaxis
  % z axis is a subspace here.
  pickup pensquare scaled (1.2*line_width_dark);
    draw z0--z14 withcolor white; % zaxis
  pickup pensquare scaled line_width_dark;
    draw z0--z14; % zaxis
  % xaxis lies in the plane
  pickup pensquare scaled (0.707*line_width_light); % slant lines look dark
    draw z10--z11; % xaxis
  % next the vector
  pickup pencircle scaled (1.1*line_width_dark);
    drawarrow z0--z5 withcolor white;
  pickup pencircle scaled line_width_dark;
    drawarrow z0--z5;
  % and its projection
  drawarrow z0--z20;
  draw z5--z20 dashed withdots scaled .5;
  %
  free_vect(lpn);

  % label the parts
  label.lrt(btex {\small $M$} etex,z3);
  label.lft(btex {\small $N$} etex,z14);
endfig;






beginfig(39) %  projection onto a plane in R^3 (ortho this time)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=16pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,5,6); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  save p_lfront, p_lback, p_rfront, p_rback, % four corners of plane
       c_v,  % vector to be projected
       origin;
  p_lfront:=new_vect;  p_lback:=new_vect;
    p_rfront:=new_vect;  p_rback:=new_vect; 
  c_v:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);
  vect_def(p_rfront,3,4,2);  vect_def(p_rback,-2.5,4,2); % plane
    vect_def(p_lfront,3,-2,-1);  vect_def(p_lback,-2.5,-2,-1); % line
  vect_def(c_v,2,2,5);
  project_point(0,origin);
  project_point(1,p_lfront);  project_point(2,p_rfront);
    project_point(3,p_rback);  project_point(4,p_lback);
    project_point(5,c_v);
  free_vect(origin); free_vect(c_v);
    free_vect(p_rback); free_vect(p_rfront);
    free_vect(p_lback); free_vect(p_lfront);
  
  % axes (can't use routine because of interaction with the plane)
  save x_pos, x_neg, y_pos, y_neg, z_pos, z_neg;
  x_pos:=new_vect; x_neg:=new_vect; y_pos:=new_vect; y_neg:=new_vect;
    z_pos:=new_vect; z_neg:=new_vect;
  vect_def(x_pos,3.5,0,0); vect_def(x_neg,-3,0,0);
    vect_def(y_pos,0,4,0); vect_def(y_neg,0,-3,0);
    vect_def(z_pos,0,0,5); vect_def(z_neg,0,0,-2);
  project_point(10,x_pos); project_point(11,x_neg);
    project_point(12,y_pos); project_point(13,y_neg);
    project_point(14,z_pos); project_point(15,z_neg);
  free_vect(z_neg); free_vect(z_pos); free_vect(y_neg); free_vect(y_pos);
    free_vect(x_neg); free_vect(x_pos);
  % the projection
  save proj_vec; proj_vect:=new_vect; vect_def(proj_vect,2,18/5,9/5);
  project_point(20,proj_vect); free_vect(proj_vect);
  % the subspace N_hat
  save nhat_top, nhat_bot; nhat_top:=new_vect; nhat_bot:=new_vect;
  vect_def(nhat_top,0,-2,4); vect_def(nhat_bot,0,1,-2); 
  project_point(21,nhat_top);
  project_point(22,nhat_bot);
  free_vect(nhat_bot); free_vect(nhat_top);  
  %
  pickup pensquare scaled line_width_light;
  draw z10--z11; % xaxis
  draw z12--z13; % yaxis
  draw z14--z15; % zaxis
  % N_hat
  pickup pencircle scaled line_width_dark;
  draw z21--z22;
  % the plane
  save plane; path plane; plane=z1--z2--z3--z4--cycle;
  pickup pencircle scaled line_width_dark;
    draw plane withcolor white;
  fill plane withcolor lightgray;
  pickup pencircle scaled line_width_light;
    draw plane;
  % fill back in parts of axes showing through 
  pickup pensquare scaled line_width_dark;
    draw z0--z13 withcolor white; % yaxis
    draw z0--z14 withcolor white; % zaxis
  pickup pensquare scaled line_width_light;
    draw z0--z13; % yaxis
    draw z0--z14; % zaxis
  % the subspace N_hat
  pickup pencircle scaled (1.2*line_width_dark);
    draw z0--z21 withcolor white; % N_hat
  pickup pencircle scaled line_width_dark;
    draw z0--z21; % N_hat
  % xaxis lies in the plane
  pickup pensquare scaled (0.707*line_width_light); % slant lines look dark
    draw z10--z11; % xaxis
  % next the vector
  pickup pencircle scaled (1.1*line_width_dark);
    drawarrow z0--z5 withcolor white;
  pickup pencircle scaled line_width_dark;
    drawarrow z0--z5;
  % and its projection
  drawarrow z0--z20;
  draw z5--z20 dashed withdots scaled .5;
  %
  free_vect(lpn);

  % label the parts
  label.lrt(btex {\small $M$} etex,z3);
  label.llft(btex {\small $\hat{N}$} etex,z21);
endfig;









beginfig(40) % orthogonal projection is projection along perp subspace
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path xaxis, yaxis;
  xaxis = (-1.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  %updown_ticks(6,(-1w,0),(1w,0));
  draw yaxis;  %sidetoside_ticks(3,(0,1v),(0,1v));

  z0=(0w,0v);
  z1=(4w,2v);  % endpoint of beta_1
  z2=(1w,3v);  % endpoint of beta_2
  z3=(2w,1v);  % projection of beta_2 into line spanned by beta_1
  save b_three, b_two;
  circleit.b_three(nullpicture); b_three.c=z3; b_three.dx=b_three.dy=2pt;
  circleit.b_two(nullpicture); b_two.c=z2; b_two.dx=b_two.dy=2pt;

  z10=(-w,2v); z11=(.5w,-v);  % pts in line perp to beta_1's line
  z12 = whatever[z10,z11]; x12=xpart(point 0 of xaxis);
  z13 = whatever[z10,z11]; y13=ypart(point 0 of yaxis);
  pickup pencircle scaled line_width_dark;
  draw z12--z13;
  label.llft(btex {\small $N$} etex,z12);
  
  pickup pencircle scaled line_width_dark;
  z4=whatever[z0,z1]; x4=xpart(point 0 of xaxis);
  draw z0--z4;
  draw z3--z1 cutbefore bpath b_three; % line projected to
    label.lrt(btex {\small $M$} etex,z1);
  
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z3 cutafter bpath b_three; 
  drawarrow z0--z2 cutafter bpath b_two;
  draw z3--z2 cutbefore bpath b_three cutafter bpath b_two dashed withdots scaled .5;
    %label.rt(btex {\small $\vec{\kappa}_2$} etex,.618[z3,z2]);
endfig;




beginfig(41) % (1,1,0) not perp to (0,3,2)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  % estalish the observer
  save lpn; lpn:=new_vect; vect_def(lpn,0,5,4); 
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);
  %free_vect(lpn);

  save c_a, c_b, origin;
  c_a:=new_vect;  c_b:=new_vect;  origin:=new_vect;
  vect_def(origin,0,0,0); vect_def(c_a,1,1,0);  vect_def(c_b,0,3,2);
  % Now project the 3D points 
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);
  free_vect(origin); free_vect(c_b); free_vect(c_a);
  
  % dashed lines in plane
  save x_a, y_a, y_b, z_b;
  x_a:=new_vect; y_a:=new_vect; y_b:=new_vect; z_b:=new_vect;
  vect_def(x_a,1,0,0); vect_def(y_a,0,1,0);
  vect_def(y_b,0,3,0); vect_def(z_b,0,0,2);
  project_point(10,x_a); project_point(11,y_a);
  project_point(12,y_b); project_point(13,z_b);
  free_vect(z_b);  free_vect(y_b); free_vect(y_a);  free_vect(x_a);
  pickup pencircle scaled line_width_light;
  draw z1--z10 dashed evenly;
    draw z1--z11 dashed evenly;
  draw z2--z12 dashed evenly;
    draw z2--z13 dashed evenly;
  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(1.5,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(1.5,3.5,2.5,1,3,2);

  % the vectors
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z1;
  drawarrow z0--z2;
endfig;


%=============================Least Squares=============

beginfig(42) % least squares coin flip
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.01in; v:=u; w:=v;

  z0=(0w,0v);
  z1=(100w,0v);
  z2=(0w,70v);

  % the axes
  pickup pensquare scaled line_width_light
  draw z0--z1;  % flips axis (x-axis)
    label.lrt(btex {\small \textit{flips}} etex,z1);
    updown_ticks(9,(10w,0v),(10w,0v));
    label.bot(btex {\scriptsize 30} etex,(30w,0v));
    label.bot(btex {\scriptsize 60} etex,(60w,0v));
    label.bot(btex {\scriptsize 90} etex,(90w,0v));
  draw z0--z2;  % heads axis (y-axis)
    label.ulft(btex {\small \textit{heads}} etex,z2);
    sidetoside_ticks(6,(0w,10v),(0w,10v));
    label.lft(btex {\scriptsize 30} etex,(0w,30v));
    label.lft(btex {\scriptsize 60} etex,(0w,60v));

  % the line
  pickup pencircle scaled line_width_light;
  z3=(100w,0.56428571*100v); % 7110/12600
  draw z0--z3 dashed evenly scaled .707;

  pickup pencircle scaled line_width_dark;
  % the points 
  drawpoint((30w,16v));  drawpoint((60w,34v));  drawpoint((90w,51v));
endfig;



beginfig(43) % least squares coin flip
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.01in; v:=u; w:=v;

  z0=(0w,0v);
  z1=(100w,0v);
  z2=(0w,70v);

  % the axes
  %pickup pensquare scaled line_width_light
  %draw z0--z1;  % flips axis (x-axis)
  %  label.lrt(btex {\small \textit{flips}} etex,z1);
  %  updown_ticks(9,(10w,0v),(10w,0v));
  %  label.bot(btex {\tiny 30} etex,(30w,0v));
  %  label.bot(btex {\tiny 60} etex,(60w,0v));
  %  label.bot(btex {\tiny 90} etex,(90w,0v));
  %draw z0--z2;  % heads axis (y-axis)
  %  label.ulft(btex {\small \textit{heads}} etex,z2);
  %  sidetoside_ticks(6,(0w,10v),(0w,10v));
  %  label.lft(btex {\tiny 30} etex,(0w,30v));
  %  label.lft(btex {\tiny 60} etex,(0w,60v));

  % the line
  pickup pencircle scaled line_width_light;
  z3=(100w,0.56428571*100v); % 7110/12600
  draw z0--z3 dashed evenly scaled .707;

  pickup pencircle scaled line_width_light;
  % the points 
  save exag; numeric exag; exag = 10;
  save carryover; numeric carryover; carryover = 15u;
  z10=(30w,0.56428571*30v);
    x11=x10; y11=y10-exag*(y10-16v);
    x13=x12=x11+carryover; y12=y11; y13=y10;
    draw z10--z13; draw z11--z12;
  z20=(60w,0.56428571*60v);
    x21=x20; y21=y20-exag*(y20-34v);
    x23=x22=x21-carryover; y22=y21; y23=y20;
    draw z20--z23; draw z21--z22;
  z30=(90w,0.56428571*90v);
    x31=x30; y31=y30-exag*(y30-51v);
    x33=x32=x31-carryover; y32=y31; y33=y30;
    draw z30--z33; draw z31--z32;
  drawpoint(z11);  drawpoint(z21);  drawpoint(z31);
endfig;




beginfig(44) % least squares money denom vs life
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.02in; w:=u; v:=4w;

  z0=(0w,0v);
  z1=(105w,0v);
  z2=(0w,8.5v);

  % the axes
  pickup pensquare scaled line_width_light
  draw z0--z1;  % denom axis (x-axis)
    label.lrt(btex {\small \textit{denom}} etex,z1);
    updown_ticks(10,(10w,0v),(10w,0v));
    label.bot(btex {\scriptsize 10} etex,(10w,0v));
    label.bot(btex {\scriptsize 30} etex,(30w,0v));
    label.bot(btex {\scriptsize 50} etex,(50w,0v));
    label.bot(btex {\scriptsize 70} etex,(70w,0v));
    label.bot(btex {\scriptsize 90} etex,(90w,0v));
  draw z0--z2;  % heads axis (y-axis)
    label.ulft(btex {\small \textit{life (yrs)}} etex,z2);
    sidetoside_ticks(8,(0w,1v),(0w,1v));
    label.lft(btex {\scriptsize 4} etex,(0w,4v));
    label.lft(btex {\scriptsize 8} etex,(0w,8v));

  % the line
  pickup pencircle scaled line_width_light;
  z3=(100w,((0.7513/12)*100v)+(14.1582/12)*v); % 
  z4=(0w,(14.1582/12)*v);
  draw z4--z3 dashed evenly scaled .707; % .7[white,black];

  pickup pencircle scaled line_width_dark;
  % the points
  z10=(1w,(22/12)*v);
  z11=(5w,(15.9/12)*v);
  z12=(10w,(18.3/12)*v);
  z13=(20w,(24.3/12)*v);
  z14=(50w,(55.4/12)*v);
  z15=(100w,(88.8/12)*v);
  for k = 10 upto 15:
    drawpoint(z[k]);
  endfor
endfig;





beginfig(45) % least squares men's mile
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.015in; w:=u; v:=w;

  z0=(0w,0v);
  z1=(155w,0v);
  z2=(0w,70v);

  % the axes
  pickup pensquare scaled line_width_light;
  draw (z0+(5w,0v))--z1;  % time axis (x-axis)
    pickup pencircle scaled line_width_light;
    draw (z0+(5w,0v))--z0 dashed withdots scaled .25;
    label.lrt(btex {\small \textit{year}} etex,z1);
    updown_ticks(15,(10w,0v),(10w,0v));
    label.bot(btex {\scriptsize 1870} etex,(20w,0v));
    label.bot(btex {\scriptsize 1890} etex,(40w,0v));
    label.bot(btex {\scriptsize 1910} etex,(60w,0v));
    label.bot(btex {\scriptsize 1930} etex,(80w,0v));
    label.bot(btex {\scriptsize 1950} etex,(100w,0v));
    label.bot(btex {\scriptsize 1970} etex,(120w,0v));
    label.bot(btex {\scriptsize 1990} etex,(140w,0v));
  pickup pensquare scaled line_width_light;
  draw (z0+(0w,5v))--z2;  % world record axis (y-axis)
    pickup pencircle scaled line_width_light;
    draw (z0+(0w,5v))--z0 dashed withdots scaled .25;
    label.ulft(btex {\small \textit{seconds}} etex,z2);
    sidetoside_ticks(6,(0w,10v),(0w,10v));
    label.lft(btex {\scriptsize 220} etex,(0w,10v));
    label.lft(btex {\scriptsize 240} etex,(0w,30v));
    label.lft(btex {\scriptsize 260} etex,(0w,50v));
    
  % the line
  pickup pencircle scaled line_width_light;
  z3=(155w,10.92v); % 
  z4=(10w,61.88v);
  draw z4--z3 dashed evenly scaled .707;

  pickup pencircle scaled line_width_dark;
  % the points
  z10=(20w,58.8v);
  z11=(30w,54.5v);
  z12=(40w,48.4v);
  z13=(50w,45.6v);
  z14=(60w,45.6v);
  z15=(70w,42.6v);
  z16=(80w,40.4v);
  z17=(90w,36.4v);
  z18=(100w,31.4v);
  z19=(110w,24.5v);
  z20=(120w,21.1v);
  z21=(130w,19.0v);
  z22=(140w,16.3v);
  z23=(150w,13.1v);
  for k = 10 upto 23:
    drawpoint(z[k]);
  endfor
endfig;


%=============================Geometry of Linear Maps=================

beginfig(46) % f_1(x)=e^x
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,7.5v); z2=(0w,-2.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
    sidetoside_ticks(10,(0w,-2v),(0w,1v));
    % label.lft(btex {\tiny -5} etex,(0w,-5v));
    label.lft(btex {\tiny 0} etex,(0w,0v));
    label.lft(btex {\tiny 5} etex,(0w,5v));
  draw z12--z11;  % output axis
    sidetoside_ticks(10,codomain_shift+(ticklength,-2v),(0w,1v));
    % label.rt(btex {\tiny -5} etex,(0w,-5v)+codomain_shift);
    label.rt(btex {\tiny 0} etex,(0w,0v)+codomain_shift);
    label.rt(btex {\tiny 5} etex,(0w,5v)+codomain_shift);
    
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,-2v)--((0w,0.13533528v)+codomain_shift)) % e^{-2}
  draw_action_arrow((0w,-1v)--((0w,0.36787944v)+codomain_shift)) % e^{-1}
  draw_action_arrow((0w,0v)--((0w,v)+codomain_shift)) % e^{0} = 1
  draw_action_arrow((0w,1v)--((0w,2.7182818v)+codomain_shift)) % e^{1}
  draw_action_arrow((0w,2v)--((0w,7.3890561v)+codomain_shift)) % e^{2}
endfig;



beginfig(47) % f_2(x)=x^2
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,7.5v); z2=(0w,-2.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
    sidetoside_ticks(10,(0w,-2v),(0w,1v));
    % label.lft(btex {\tiny -5} etex,(0w,-5v));
    label.lft(btex {\tiny 0} etex,(0w,0v));
    label.lft(btex {\tiny 5} etex,(0w,5v));
  draw z12--z11;  % output axis
    sidetoside_ticks(10,codomain_shift+(ticklength,-2v),(0w,1v));
    % label.rt(btex {\tiny -5} etex,(0w,-5v)+codomain_shift);
    label.rt(btex {\tiny 0} etex,(0w,0v)+codomain_shift);
    label.rt(btex {\tiny 5} etex,(0w,5v)+codomain_shift);
    
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,-2v)--((0w,4v)+codomain_shift)) % {-2}^2
  draw_action_arrow((0w,-1v)--((0w,1v)+codomain_shift)) % {-1}^2
  draw_action_arrow((0w,0v)--((0w,0v)+codomain_shift)) % 0^2
  draw_action_arrow((0w,1v)--((0w,1v)+codomain_shift)) % 1^2
  draw_action_arrow((0w,2v)--((0w,4v)+codomain_shift)) % 2^2
endfig;



beginfig(48) % f_3(x)=2x
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,5.5v); z2=(0w,-5.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
    sidetoside_ticks(11,(0w,-5v),(0w,1v));
    label.lft(btex {\tiny -5} etex,(0w,-5v));
    label.lft(btex {\tiny 0} etex,(0w,0v));
    label.lft(btex {\tiny 5} etex,(0w,5v));
  draw z12--z11;  % output axis
    sidetoside_ticks(11,codomain_shift+(ticklength,-5v),(0w,1v));
    label.rt(btex {\tiny -5} etex,(0w,-5v)+codomain_shift);
    label.rt(btex {\tiny 0} etex,(0w,0v)+codomain_shift);
    label.rt(btex {\tiny 5} etex,(0w,5v)+codomain_shift);
    
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,-2v)--((0w,-4v)+codomain_shift)) % 2*(-2)
  draw_action_arrow((0w,-1v)--((0w,-2v)+codomain_shift)) % 2*(-1)
  draw_action_arrow((0w,0v)--((0w,0v)+codomain_shift)) % 2*0
  draw_action_arrow((0w,1v)--((0w,2v)+codomain_shift)) % 2*1
  draw_action_arrow((0w,2v)--((0w,4v)+codomain_shift)) % 2*2
endfig;



beginfig(49) % f_4(x)=-x
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,5.5v); z2=(0w,-5.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
    sidetoside_ticks(11,(0w,-5v),(0w,1v));
    label.lft(btex {\tiny -5} etex,(0w,-5v));
    label.lft(btex {\tiny 0} etex,(0w,0v));
    label.lft(btex {\tiny 5} etex,(0w,5v));
  draw z12--z11;  % output axis
    sidetoside_ticks(11,codomain_shift+(ticklength,-5v),(0w,1v));
    label.rt(btex {\tiny -5} etex,(0w,-5v)+codomain_shift);
    label.rt(btex {\tiny 0} etex,(0w,0v)+codomain_shift);
    label.rt(btex {\tiny 5} etex,(0w,5v)+codomain_shift);
    
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,-2v)--((0w,2v)+codomain_shift)) % -(-2)
  draw_action_arrow((0w,-1v)--((0w,1v)+codomain_shift)) % -(-1)
  draw_action_arrow((0w,0v)--((0w,0v)+codomain_shift)) % -(0)
  draw_action_arrow((0w,1v)--((0w,-1v)+codomain_shift)) % -1
  draw_action_arrow((0w,2v)--((0w,-2v)+codomain_shift)) % -2
endfig;




beginfig(50) % rotation ccw
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(15.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
  draw yaxis; draw yaxis shifted codomain_shift; % output axis

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{x\cos\theta-y\sin\theta \\ x\sin\theta+y\cos\theta}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  pickup pencircle scaled line_width_light;
  z2 = (2w,1v);
  drawarrow z0--z2;
  drawarrow (z0--z2) rotated 30 shifted codomain_shift;
endfig;







beginfig(51) % projection to xz-axis
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save codomain_shift; pair codomain_shift; codomain_shift=(10.5w,0v);

  % estalish the observer
  save lpn; lpn:=new_vect; vect_def(lpn,0,5,4); 
  set_point(Obs,10,5,4);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);

  save c_a, c_b, origin;
  c_a:=new_vect;  c_b:=new_vect;  origin:=new_vect;
  vect_def(origin,0,0,0); vect_def(c_a,1,1,2);  vect_def(c_b,1,0,2);
  % Now project the 3D points 
  project_point(0,origin);
  project_point(1,c_a);
  project_point(2,c_b);
  free_vect(origin); free_vect(c_b); free_vect(c_a);
  
  % dashed lines in plane
  save xz_lfront, xz_lback, xz_uback, xz_ufront;
  xz_lfront:=new_vect; xz_lback:=new_vect;
    xz_uback:=new_vect; xz_ufront:=new_vect;
  vect_def(xz_lfront,2,0,-1); vect_def(xz_lback,-1,0,-1);
  vect_def(xz_uback,-1,0,3); vect_def(xz_ufront,2,0,3);
  project_point(10,xz_lfront); project_point(11,xz_lback);
  project_point(12,xz_uback); project_point(13,xz_ufront);
  free_vect(xz_ufront);  free_vect(xz_uback);
    free_vect(xz_lback);  free_vect(xz_lfront);
  save xz_plane; path xz_plane;
    xz_plane = z10--z11--z12--z13--cycle; 
  pickup pencircle scaled line_width_light;
  draw (xz_plane shifted codomain_shift) dashed evenly withcolor lightgray;

  % the axes (can't use routines, because need shift)
  save xmin, xmax, ymin, ymax, zmin, zmax;
  xmin:=new_vect; xmax:=new_vect;
    ymin:=new_vect; ymax:=new_vect; zmin:=new_vect; zmax:=new_vect;
  vect_def(xmin,-.5,0,0); vect_def(xmax,1.5,0,0);
    vect_def(ymin,0,-.5,0); vect_def(ymax,0,1.5,0);
    vect_def(zmin,0,0,-.5); vect_def(zmax,0,0,2.5);
  project_point(20,xmin);  project_point(21,xmax);
    project_point(22,ymin);  project_point(23,ymax);
    project_point(24,zmin);  project_point(25,zmax);
  free_vect(zmax);  free_vect(zmin);
    free_vect(ymax);  free_vect(ymin);
    free_vect(xmax);  free_vect(xmin);
  save xaxis, yaxis, zaxis; path xaxis, yaxis, zaxis;
  xaxis = z20--z21; yaxis = z22--z23; zaxis = z24--z25;
  pickup pencircle scaled line_width_light;
  draw xaxis; draw yaxis; draw zaxis; 
    draw (xaxis shifted codomain_shift);
    draw (yaxis shifted codomain_shift);
    draw (zaxis shifted codomain_shift); 
    
  % the vectors
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z1;
  drawarrow (z0--z2) shifted codomain_shift;
  
  %z30 = .25*(z10+z11+z12+z13)+.5*codomain_shift;
  z30 = (point .5 of zaxis) shifted (.5*codomain_shift);
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y \\ z} \mapsto \colvec{x \\ 0 \\ z}}$ etex,z30);

  % clean up the observer
  free_vect(lpn);
endfig;






beginfig(52) % tripling the x's
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(3,(1w,0v),(1w,0v));
    updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{3x \\ y}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  pickup pencircle scaled line_width_light;
  z2 = (1w,3v);  drawarrow z0--z2;
  z3 = (3w,3v);  drawarrow (z0--z3) shifted codomain_shift;
endfig;







beginfig(53) % negative doubling the x's
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(15w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -2.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(5,(-2w,0v),(1w,0v));
    updown_ticks(5,(-2w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{-2x \\ y}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  pickup pencircle scaled line_width_light;
  z2 = (1w,3v);  drawarrow z0--z2;
  z3 = (-2w,3v);  drawarrow (z0--z3) shifted codomain_shift;
endfig;







beginfig(54) % negative doubling the x's
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(3,(1w,0v),(1w,0v));
    updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{y \\ x}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  pickup pencircle scaled line_width_light;
  z2 = (1w,3v);  drawarrow z0--z2;
  z3 = (3w,1v);  drawarrow (z0--z3) shifted codomain_shift;

  % the line of reflection
  z4 = (xmin,ymin); z5 = (xmax,ymax);
  draw (z4--z5) shifted codomain_shift dashed evenly scaled .75;
  drawarrow (z0--z2) shifted codomain_shift withcolor lightgray;
  draw (z2--z3) shifted codomain_shift dashed withdots scaled .5;
endfig;






beginfig(55) % skew's action
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(3,(1w,0v),(1w,0v));
    updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw ((0w,ymin)--(0w,5.5v)) shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(5,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{x \\ 2x+y}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  pickup pencircle scaled line_width_light;
  z2 = (1w,2v);  drawarrow z0--z2;
    label.top(btex {\tiny $\vec{u}$} etex,z2);
  z3 = (2w,1v);  drawarrow z0--z3;
    label.rt(btex {\tiny $\vec{v}$} etex,z3);
  z4 = (1w,4v);  drawarrow (z0--z4) shifted codomain_shift;
    label.top(btex {\tiny $h(\vec{u})$} etex,z4+codomain_shift);
  z5 = (2w,5v);  drawarrow (z0--z5) shifted codomain_shift;
    label.rt(btex {\tiny $h(\vec{v})$} etex,z5+codomain_shift);
endfig;









beginfig(56) % skew on unit square
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(3,(1w,0v),(1w,0v));
    updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{x \\ 2x+y}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  save square; path square;
    square = z0--(1w,0v)--(1w,1v)--(0w,1v)--cycle;
  pickup pencircle scaled line_width_dark;
  draw square withcolor white;
  pickup pencircle scaled line_width_light;
  fill square withcolor lightgray; draw square;
  save skewedsquare; path skewedsquare;
  skewedsquare = (z0--(1w,2v)--(1w,3v)--(0w,1v)--cycle) shifted codomain_shift;
  pickup pencircle scaled line_width_dark;
  draw skewedsquare withcolor white;
  pickup pencircle scaled line_width_light;
  fill skewedsquare withcolor lightgray; draw skewedsquare;
endfig;







beginfig(57) % second skew on unit square
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(3,(1w,0v),(1w,0v));
    updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,1v),(0w,1v));
    sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex $\xrightarrow{\scriptsize \colvec{x \\ y} \mapsto \colvec{x+2y \\ y}}$ etex,z1);
  
  % the vectors
  z0 = (0w,0v);
  save square; path square;
    square = z0--(1w,0v)--(1w,1v)--(0w,1v)--cycle;
  pickup pencircle scaled line_width_dark;
  draw square withcolor white;
  pickup pencircle scaled line_width_light;
  fill square withcolor lightgray; draw square;
  save skewedsquare; path skewedsquare;
  skewedsquare = (z0--(1w,0v)--(3w,1v)--(2w,1v)--cycle) shifted codomain_shift;
  pickup pencircle scaled line_width_dark;
  draw skewedsquare withcolor white;
  pickup pencircle scaled line_width_light;
  fill skewedsquare withcolor lightgray; draw skewedsquare;
endfig;






beginfig(58) % y(x)=x^2+x
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,6.5v); z2=(0w,-2.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
    sidetoside_ticks(9,(0w,-2v),(0w,1v));
    label.lft(btex {\tiny 0} etex,(0w,0v));
    label.lft(btex {\tiny 5} etex,(0w,5v));
  draw z12--z11;  % output axis
    sidetoside_ticks(9,codomain_shift+(ticklength,-2v),(0w,1v));
    label.rt(btex {\tiny 0} etex,(0w,0v)+codomain_shift);
    label.rt(btex {\tiny 5} etex,(0w,5v)+codomain_shift);
    
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,-2v)--((0w,2v)+codomain_shift)) % f(-2)=2
  draw_action_arrow((0w,-1v)--((0w,0v)+codomain_shift)) % f(-1)=0
  draw_action_arrow((0w,0v)--((0w,0v)+codomain_shift)) % f(0) = 0
  draw_action_arrow((0w,1v)--((0w,2v)+codomain_shift)) % f(1) = 2
  draw_action_arrow((0w,2v)--((0w,6v)+codomain_shift)) % f(2) = 6
endfig;





beginfig(59) % y(x)=x^2+x near x=1
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,6.5v); z2=(0w,-2.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
  draw z12--z11;  % output axis

  % the interval
  pickup pencircle scaled line_width_dark;
  drawinterval((0w,.8v)--(0w,1.2v));  
    label.lft(btex {\tiny $x=1$} etex,(0w,1v));
  drawinterval(((0w,1.4v)--(0w,2.6v)) shifted codomain_shift);  
    label.rt(btex {\tiny $y=2$} etex,((0w,2v)+codomain_shift));
  
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,1v)--((0w,2v)+codomain_shift)) % f(1) = 2
endfig;





beginfig(60) % composition; chain rule
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,6.5v); z2=(0w,-2.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  z20=z10+codomain_shift; z21=z11+codomain_shift; z22=z12+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
  draw z12--z11;  % output axis
  draw z22--z21;  % output of the output axis

  % the interval
  pickup pencircle scaled line_width_dark;
  drawinterval((0w,.8v)--(0w,1.2v));  
    label.lft(btex {\tiny $x$} etex,(0w,1v));
  drawinterval(((0w,1.6v)--(0w,2.4v)) shifted codomain_shift);  
    label.rt(btex {\tiny \ $f(x)$} etex,((0w,2v)+codomain_shift));
  drawinterval(((0w,3.4v)--(0w,4.6v)) shifted 2codomain_shift);  
    label.rt(btex {\tiny $g(f(x))$} etex,((0w,4v)+2codomain_shift));
  
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,1v)--((0w,2v)+codomain_shift)) % 
  draw_action_arrow(((0w,2v)+codomain_shift)--((0w,4v)+2codomain_shift)) % 
endfig;




%==============erlang.tex; Orthonormal Matrices=====

beginfig(61) % congruent triangles
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=w;

  save cong_shift; pair cong_shift; cong_shift=(10w,0v);
  z0=(0w,0v);  z1=(1w,1.5v); z2=(3w,-.5v);
  z10=z0+cong_shift; z11=z1+cong_shift; z12=z2+cong_shift;

  save p, q; path p, q;
  p = z0--z1--z2--cycle;
  q = p rotated -30 shifted cong_shift;
  % the axes
  pickup pensquare scaled line_width_light;
  draw p;  % triangle on left
    label.llft(btex {\small $P_1$} etex,point 0 of p);
    label.top(btex {\small $P_2$} etex,point 1 of p);
    label.lrt(btex {\small $P_3$} etex,point 2 of p);
  draw q;  % triangle on right
    label.llft(btex {\small $Q_1$} etex,point 0 of q);
    label.top(btex {\small $Q_2$} etex,point 1 of q);
    label.lrt(btex {\small $Q_3$} etex,point 2 of q);
endfig;








beginfig(62) % orthonormal bases; orientation-preserving
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.25in; w:=u; v:=u;

  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -2.5w; xmax = 2.5w; ymin = -1.5v; ymax = 1.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis;  % input axis 
  draw yaxis;  % output axis
  
  % the unit circle
  save unitcircle; path unitcircle;
  unitcircle = fullcircle scaled 2u;
  pickup pencircle scaled  line_width_light;
  draw unitcircle withcolor lightgray;
  % the vectors
  z0 = (1w,0v);
  z1 = z0 rotated 20;
  z2 = z1 rotated 90;
  pickup pencircle scaled line_width_dark;
  drawarrow (0,0)--z1;
    label.urt(btex {\scriptsize $\colvec{a \\ b}$} etex,z1);
  drawarrow (0,0)--z2;
    label.ulft(btex {\scriptsize $\colvec{-b \\ a}$} etex,z2);
endfig;







beginfig(63) % orthonormal bases; orientation-reversing
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.25in; w:=u; v:=u;

  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -2.5w; xmax = 2.5w; ymin = -1.5v; ymax = 1.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis;  % input axis 
  draw yaxis;  % output axis
  
  % the unit circle
  save unitcircle; path unitcircle;
  unitcircle = fullcircle scaled 2u;
  pickup pencircle scaled  line_width_light;
  draw unitcircle withcolor lightgray;
  % the line of reflection
  save angle_of_refl_line; numeric angle_of_refl_line;
  angle_of_refl_line = 10;
  % the vectors
  z0 = (1w,0v);
  z1 = z0 rotated (2*angle_of_refl_line);
  z2 = z1 rotated -90;
  pickup pencircle scaled line_width_dark;
  drawarrow (0,0)--z1;
    label.urt(btex {\scriptsize $\colvec{a \\ b}$} etex,z1);
  drawarrow (0,0)--z2;
    label.lrt(btex {\scriptsize $\colvec{b \\ -a}$} etex,z2);
endfig;








beginfig(64) % orthonormal bases; orientation-reversing, includes refl line
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.25in; w:=u; v:=u;

  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -2.5w; xmax = 2.5w; ymin = -1.5v; ymax = 1.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis;  % input axis 
  draw yaxis;  % output axis
  
  % the unit circle
  save unitcircle; path unitcircle;
  unitcircle = fullcircle scaled 2u;
  pickup pencircle scaled  line_width_light;
  draw unitcircle withcolor lightgray;
  % the line of reflection
  save angle_of_refl_line; numeric angle_of_refl_line;
  angle_of_refl_line = 10;
  z10 = whatever[(0,0),dir(angle_of_refl_line)]; x10=xmin;
  z11 = whatever[(0,0),dir(angle_of_refl_line)]; x11=xmax;
  pickup pencircle scaled line_width_light;
  draw z10--z11 dashed evenly scaled .5;
  % the vectors
  z0 = (1w,0v);
  z1 = z0 rotated (2*angle_of_refl_line);
  z2 = z1 rotated -90;
  pickup pencircle scaled line_width_dark;
  drawarrow (0,0)--z1;
    label.urt(btex {\scriptsize $\colvec{a \\ b}$} etex,z1);
  drawarrow (0,0)--z2;
    label.lrt(btex {\scriptsize $\colvec{b \\ -a}$} etex,z2);
endfig;



beginfig(65) % congruent triangles
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=w;

  save cong_shift; pair cong_shift; cong_shift=(10w,0v);
  z0=(0w,0v);  z1=(1w,1.5v); z2=(3w,-.5v);
  z10=z0+cong_shift; z11=z1+cong_shift; z12=z2+cong_shift;

  save p, q; path p, q;
  p = z0--z1--z2--cycle;
  q = p scaled 1.5 rotated -30 shifted cong_shift;
  % the axes
  pickup pensquare scaled line_width_light;
  draw p;  % triangle on left
    label.llft(btex {\small $P_1$} etex,point 0 of p);
    label.top(btex {\small $P_2$} etex,point 1 of p);
    label.lrt(btex {\small $P_3$} etex,point 2 of p);
  draw q;  % triangle on right
    label.llft(btex {\small $Q_1$} etex,point 0 of q);
    label.top(btex {\small $Q_2$} etex,point 1 of q);
    label.lrt(btex {\small $Q_3$} etex,point 2 of q);
endfig;










beginfig(66) %  projection of a cube in R^3 (1st of 3)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  save t_left, t_back, t_right, t_front, % four corners of top
       b_left, b_bot, b_right; % corners under the top 
  t_left:=new_vect; t_back:=new_vect; t_right:=new_vect; t_front:=new_vect;
    b_left:=new_vect; b_bot:=new_vect; b_right:=new_vect; 
  vect_def(t_left,1,0,1);  vect_def(t_back,0,0,1);
    vect_def(t_right,0,1,1);  vect_def(t_front,1,1,1); 
  vect_def(b_left,1,0,0);  vect_def(b_bot,1,1,0);  vect_def(b_right,0,1,0); 
  project_point(1,t_left);  project_point(2,t_back);
    project_point(3,t_right);  project_point(4,t_front);
    project_point(5,b_left); project_point(6,b_bot); project_point(7,b_right);
  free_vect(b_right); free_vect(b_bot); free_vect(b_left);
    free_vect(t_front); free_vect(t_right);
    free_vect(t_back); free_vect(t_left);
  
  save t, b, f; path t, b, f;
  t = z1--z2--z3--z4--cycle;
  b = z1--z5--z6--z7--z3;
  f = z4--z6;
  pickup pencircle scaled line_width_light;
  draw t; draw b; draw f;

  %
  free_vect(lpn);
endfig;






beginfig(67) %  projection of a cube in R^3 (2st of 3)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=110; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  save t_left, t_back, t_right, t_front, % four corners of top
       b_left, b_bot, b_right; % corners under the top 
  t_left:=new_vect; t_back:=new_vect; t_right:=new_vect; t_front:=new_vect;
    b_left:=new_vect; b_bot:=new_vect; b_right:=new_vect; 
  vect_def(t_left,1,0,1);  vect_def(t_back,0,0,1);
    vect_def(t_right,0,1,1);  vect_def(t_front,1,1,1); 
  vect_def(b_left,1,0,0);  vect_def(b_bot,1,1,0);  vect_def(b_right,0,1,0); 
  project_point(1,t_left);  project_point(2,t_back);
    project_point(3,t_right);  project_point(4,t_front);
    project_point(5,b_left); project_point(6,b_bot); project_point(7,b_right);
  free_vect(b_right); free_vect(b_bot); free_vect(b_left);
    free_vect(t_front); free_vect(t_right);
    free_vect(t_back); free_vect(t_left);
  
  save t, b, f; path t, b, f;
  t = z1--z2--z3--z4--cycle;
  b = z1--z5--z6--z7--z3;
  f = z4--z6;
  pickup pencircle scaled line_width_light;
  draw t; draw b; draw f;

  %
  free_vect(lpn);
endfig;





beginfig(68) %  projection of a cube in R^3 (3rd of 3)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=130; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  save t_left, t_back, t_right, t_front, % four corners of top
       b_left, b_bot, b_right; % corners under the top 
  t_left:=new_vect; t_back:=new_vect; t_right:=new_vect; t_front:=new_vect;
    b_left:=new_vect; b_bot:=new_vect; b_right:=new_vect; 
  vect_def(t_left,1,0,1);  vect_def(t_back,0,0,1);
    vect_def(t_right,0,1,1);  vect_def(t_front,1,1,1); 
  vect_def(b_left,1,0,0);  vect_def(b_bot,1,1,0);  vect_def(b_right,0,1,0); 
  project_point(1,t_left);  project_point(2,t_back);
    project_point(3,t_right);  project_point(4,t_front);
    project_point(5,b_left); project_point(6,b_bot); project_point(7,b_right);
  free_vect(b_right); free_vect(b_bot); free_vect(b_left);
    free_vect(t_front); free_vect(t_right);
    free_vect(t_back); free_vect(t_left);
  
  save t, b, f; path t, b, f;
  t = z1--z2--z3--z4--cycle;
  b = z1--z5--z6--z7--z3;
  f = z4--z6;
  pickup pencircle scaled line_width_light;
  draw t; draw b; draw f;

  %
  free_vect(lpn);
endfig;










beginfig(69) %  projection of a cube in R^3 growing (1st of 3)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  save t_left, t_back, t_right, t_front, % four corners of top
       b_left, b_bot, b_right; % corners under the top 
  t_left:=new_vect; t_back:=new_vect; t_right:=new_vect; t_front:=new_vect;
    b_left:=new_vect; b_bot:=new_vect; b_right:=new_vect; 
  vect_def(t_left,1,0,1);  vect_def(t_back,0,0,1);
    vect_def(t_right,0,1,1);  vect_def(t_front,1,1,1); 
  vect_def(b_left,1,0,0);  vect_def(b_bot,1,1,0);  vect_def(b_right,0,1,0); 
  project_point(1,t_left);  project_point(2,t_back);
    project_point(3,t_right);  project_point(4,t_front);
    project_point(5,b_left); project_point(6,b_bot); project_point(7,b_right);
  free_vect(b_right); free_vect(b_bot); free_vect(b_left);
    free_vect(t_front); free_vect(t_right);
    free_vect(t_back); free_vect(t_left);
  
  save t, b, f; path t, b, f;
  t = z1--z2--z3--z4--cycle;
  b = z1--z5--z6--z7--z3;
  f = z4--z6;
  pickup pencircle scaled line_width_light;
  draw t; draw b; draw f;

  %
  free_vect(lpn);
endfig;









beginfig(70) %  projection of a cube in R^3 growing (2nd of 3)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(lpn,Obs_phi);

  save t_left, t_back, t_right, t_front, % four corners of top
       b_left, b_bot, b_right; % corners under the top 
  t_left:=new_vect; t_back:=new_vect; t_right:=new_vect; t_front:=new_vect;
    b_left:=new_vect; b_bot:=new_vect; b_right:=new_vect; 
  vect_def(t_left,1,0,1);  vect_def(t_back,0,0,1);
    vect_def(t_right,0,1,1);  vect_def(t_front,1,1,1); 
  vect_def(b_left,1,0,0);  vect_def(b_bot,1,1,0);  vect_def(b_right,0,1,0); 
  project_point(1,t_left);  project_point(2,t_back);
    project_point(3,t_right);  project_point(4,t_front);
    project_point(5,b_left); project_point(6,b_bot); project_point(7,b_right);
  free_vect(b_right); free_vect(b_bot); free_vect(b_left);
    free_vect(t_front); free_vect(t_right);
    free_vect(t_back); free_vect(t_left);
  
  save t, b, f; path t, b, f;
  t = z1--z2--z3--z4--cycle;
  b = z1--z5--z6--z7--z3;
  f = z4--z6;
  pickup pencircle scaled line_width_light;
  draw t; draw b; draw f;

  %
  free_vect(lpn);
endfig;









beginfig(71) %  projection of a cube in R^3 growing (3rd of 3)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,5,6);
  Obs_phi:=90; Obs_dist:=6;
  point_of_view_abs(lpn,Obs_phi);

  save t_left, t_back, t_right, t_front, % four corners of top
       b_left, b_bot, b_right; % corners under the top 
  t_left:=new_vect; t_back:=new_vect; t_right:=new_vect; t_front:=new_vect;
    b_left:=new_vect; b_bot:=new_vect; b_right:=new_vect; 
  vect_def(t_left,1,0,1);  vect_def(t_back,0,0,1);
    vect_def(t_right,0,1,1);  vect_def(t_front,1,1,1); 
  vect_def(b_left,1,0,0);  vect_def(b_bot,1,1,0);  vect_def(b_right,0,1,0); 
  project_point(1,t_left);  project_point(2,t_back);
    project_point(3,t_right);  project_point(4,t_front);
    project_point(5,b_left); project_point(6,b_bot); project_point(7,b_right);
  free_vect(b_right); free_vect(b_bot); free_vect(b_left);
    free_vect(t_front); free_vect(t_right);
    free_vect(t_back); free_vect(t_left);
  
  save t, b, f; path t, b, f;
  t = z1--z2--z3--z4--cycle;
  b = z1--z5--z6--z7--z3;
  f = z4--z6;
  pickup pencircle scaled line_width_light;
  draw t; draw b; draw f;

  %
  free_vect(lpn);
endfig;





% ========== answers to map1 ==================

beginfig(72) % reflection about the line \ell
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    %updown_ticks(3,(1w,0v),(1w,0v));
    %updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    %sidetoside_ticks(3,(0w,1v),(0w,1v));
    %sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex {\small $\mapsunder{f_\ell}$} etex,z1);

  save phi, theta; numeric phi, theta;
    phi = 35; theta = 45; % in degrees

  % the line of reflection
  z0 = (0w,0v);
  z2 = (2w,0v) rotated phi; % on the line
    z3 = whatever[z0,z2]; x3 = xmax; % line's endpoints
    z4 = whatever[z0,z2]; x4 = xmin;
  save ell; path ell; ell = z3--z4; 
  pickup pencircle scaled line_width_light;
  draw ell; draw ell shifted codomain_shift;

  % the vectors
  pickup pencircle scaled line_width_dark;
  z10 = (3w,0v);
  z11 = z10 rotated theta;
  save source_vec; path source_vec; source_vec = z0--z11;
  drawarrow source_vec; 
  z20 = z10 rotated (phi-(theta-phi));
  save result_vec; path result_vec; result_vec = z0--z20;
  drawarrow result_vec shifted codomain_shift; 

  % the arcs which mark off the angles
  pickup pencircle scaled line_width_light;
  save circ_rad_one, circ_rad_two; numeric circ_rad_one, circ_rad_two;
    circ_rad_one = 2*2u; circ_rad_two = 2*3.35u;
  save circ_one, circ_two; path circ_one, circ_two;
     circ_one = fullcircle scaled circ_rad_one;
     circ_two = fullcircle scaled circ_rad_two;
  z30 = circ_one intersectiontimes xaxis;
  z31 = circ_one intersectiontimes source_vec;
  draw subpath (x30,x31) of circ_one;
    label.rt(btex {\scriptsize $\theta$} etex,point (.5[x30,x31]) of circ_one);
  z32 = circ_two intersectiontimes xaxis;
  z33 = circ_two intersectiontimes ell;
  draw subpath (x32,x33) of circ_two;
    label.rt(btex {\scriptsize $\phi$} etex,point (.5[x32,x33]) of circ_two);
  z34 = circ_one intersectiontimes result_vec;
  draw (subpath (x30,x34) of circ_one) shifted codomain_shift;
    label.rt(btex {\scriptsize $\phi-(\theta-\phi)$} etex,
       (point (.5[x30,x34]) of circ_one) shifted codomain_shift); 
endfig;


beginfig(73)  % triangle for reflection calculation
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; w:=u; v:=u;

  % locate the triangle's corners and name its sides
  save phi; numeric phi; phi = 35; % might be good if it is same as 72's phi
  z0 = (0w,0v); % lower left 
  z1 = (5w,0v); % lower right
  z2 = whatever[z0,(10w,0v) rotated phi]; x2 = x1;
  save base, alt, hyp;  path base, alt, hyp; 
  base = z0--z1;  alt = z1--z2;  hyp = z0--z2;
  % draw the triangle
  pickup pencircle scaled line_width_light;
  draw base; draw alt; draw hyp;
  label.bot(btex {\scriptsize $x$} etex,point .5 of base);
  label.rt(btex {\scriptsize $kx$} etex,point .618 of alt);
  label.lft(btex {\scriptsize $x\sqrt{1+k^2}$} etex,point .618 of hyp);
  % draw the arc of the angle and label it
  save circ_rad; numeric circ_rad;
    circ_rad = 2*2u;
  save circ; path circ;
     circ = fullcircle scaled circ_rad;
  z10 = circ intersectiontimes base;
  z11 = circ intersectiontimes hyp;
  draw subpath (x10,x11) of circ;
    label.rt(btex {\scriptsize $\theta$} etex,point (.5[x10,x11]) of circ);
endfig;



% ========== answers to map2 ==================

beginfig(74) % three inverse image lines with slope -2
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; w:=u; v:=u;

  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -4.5w; xmax = 4.5w; ymin = -3.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis;  % input axis 
    updown_ticks(9,(-4w,0v),(1w,0v));
  draw yaxis;  % output axis
    sidetoside_ticks(7,(0w,-3v),(0w,1v));

  % lines
  save l_zero, l_one, l_minusthree;  path l_zero, l_one, l_minusthree;
  z0 = (0w,0v);  z1 = (1w,-2v);
  z3 = whatever[z0,z1]; y3=ymin;  z4 = whatever[z0,z1]; y4=ymax;
  l_zero = z3--z4;
  z10 = (0w,1v);  z11 = (1w,-1v);
  z13 = whatever[z10,z11]; y13=ymin;  z14 = whatever[z10,z11]; y14=ymax;
  l_one = z13--z14;
  z20 = (0w,-3v);  z21 = (1w,-5v);
  z23 = whatever[z20,z21]; y23=ymin;  z24 = whatever[z20,z21]; y24=ymax;
  l_minusthree = z23--z24;
  pickup pencircle scaled line_width_light;
  draw l_zero;
  draw l_one;
  draw l_minusthree;
  label.rt(btex {\small $2x+y=1$} etex, point .2 of l_one);
  label.lft(btex {\small $2x+y=-3$} etex, point .2 of l_minusthree);
  save wiggle; path wiggle;
  z30 = (1w,2.5v);
  wiggle = (point .8 of l_zero){right}..{right}z30;
  pickup pencircle yscaled (2*line_width_dark);
    draw subpath (.05,.95) of wiggle withcolor white; 
  pickup pencircle scaled line_width_light;
    draw subpath (.05,.95) of wiggle withcolor lightgray; 
  label.rt(btex {\small $2x+y=0$} etex, z30);
endfig;




% ========== answers to map3 ==================


beginfig(75) % dialation map; like 14 but general
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (10w,0v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis; % updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    %updown_ticks(4,(1w,0)+codomainshift,(1w,0));
  draw yaxis;  %sidetoside_ticks(3,(0,v),(0,v));
    draw yaxis shifted codomainshift;
    %sidetoside_ticks(3,(0,v)+codomainshift,(0,v));

  z0=(2w,2v); z1=(2w,1v);
  z2=(3w,3v); z3=(3w,1.5v);
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--z0;
    label.rt(btex {\scriptsize $\vec{u}$} etex,z0);
  drawarrow (0w,0v)--z1;
    label.rt(btex {\scriptsize $\vec{v}$} etex,z1);
  drawarrow ((0w,0v)--z2) shifted codomainshift;
    label.rt(btex {\scriptsize $d_{s}(\vec{u})$} etex,
               z2 shifted codomainshift);
  drawarrow ((0w,0v)--z3) shifted codomainshift;
    label.rt(btex {\scriptsize $d_{s}(\vec{v})$} etex,
               z3 shifted codomainshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{d_{s}}{\longrightarrow}$} etex,z7);
endfig;



beginfig(76) % reflection about the line \ell; like 72
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.15in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(12.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.5w; xmax = 3.5w; ymin = -.5v; ymax = 3.5v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    %updown_ticks(3,(1w,0v),(1w,0v));
    %updown_ticks(3,(1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    %sidetoside_ticks(3,(0w,1v),(0w,1v));
    %sidetoside_ticks(3,(0w,1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex {\small $\mapsunder{f_\ell}$} etex,z1);

  save phi, theta; numeric phi, theta;
    phi = 35; theta = 45; % in degrees

  % the line of reflection
  z0 = (0w,0v);
  z2 = (2w,0v) rotated phi; % on the line
    z3 = whatever[z0,z2]; x3 = xmax; % line's endpoints
    z4 = whatever[z0,z2]; x4 = xmin;
  save ell; path ell; ell = z3--z4; 
  pickup pencircle scaled line_width_light;
  draw ell; draw ell shifted codomain_shift;

  % the vectors
  pickup pencircle scaled line_width_dark;
  z10 = (3w,0v);
  z11 = z10 rotated theta;
  save source_vec; path source_vec; source_vec = z0--z11;
  drawarrow source_vec;
  drawarrow (source_vec shifted codomain_shift) withcolor lightgray;
  z20 = z10 rotated (phi-(theta-phi));
  save result_vec; path result_vec; result_vec = z0--z20;
  drawarrow result_vec shifted codomain_shift; 
endfig;




beginfig(77) % figure with head on xaxis of Re^3 and feet at origin
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);

  save origin, xaxis, yaxis, zaxis, head;
  origin:=new_vect;
  xaxis:=new_vect; yaxis:=new_vect; zaxis:=new_vect; 
  head:=new_vect;
  vect_def(origin,0,0,0);
  vect_def(xaxis,1,0,0); vect_def(yaxis,0,1,0); vect_def(zaxis,0,0,1); 
  vect_def(head,2,0,0);
  project_point(0,origin);
  project_point(1,xaxis);
  project_point(2,yaxis);
  project_point(3,zaxis);
  project_point(4,head);
  free_vect(head);
  free_vect(zaxis);  free_vect(yaxis);  free_vect(xaxis);  
  free_vect(origin);
  
  % draw axes
  pickup pencircle scaled line_width_light;
  xaxiscolor:=medgray;  yaxiscolor:=medgray; zaxiscolor:=medgray;
  draw_xyz_axes(3,2,2.5);

  % draw the person
  save head_to_feet; numeric head_to_feet; % how tall will person be?
  head_to_feet = (x4-x0)++(y4-y0);
  pickup pencircle scaled line_width_light;
  % draw the person (rotate him from vertical already)
  drawstickfigure(head_to_feet) rotated (-90+angle(z1-z0)) shifted z0;

  % draw the arc with the arrow
  save trans; transform trans; % transformation of circle in yz plane 
  (0,0) transformed trans = (0,0);
  (1,0) transformed trans = z2;
  (0,1) transformed trans = z3;
  save orient_arc; path orient_arc;
  orient_arc = fullcircle scaled 2 transformed trans;
  drawarrow subpath(3.5,.5) of orient_arc;
endfig;





beginfig(78) % figure with head on xaxis of Re^3 and feet at origin; ccw rotate
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);

  save origin, xaxis, yaxis, zaxis, head;
  origin:=new_vect;
  xaxis:=new_vect; yaxis:=new_vect; zaxis:=new_vect; 
  head:=new_vect;
  vect_def(origin,0,0,0);
  vect_def(xaxis,1,0,0); vect_def(yaxis,0,1,0); vect_def(zaxis,0,0,1); 
  vect_def(head,2,0,0);
  project_point(0,origin);
  project_point(1,xaxis);
  project_point(2,yaxis);
  project_point(3,zaxis);
  project_point(4,head);
  free_vect(head);
  free_vect(zaxis);  free_vect(yaxis);  free_vect(xaxis);  
  free_vect(origin);
  
  % draw axes
  pickup pencircle scaled line_width_light;
  xaxiscolor:=medgray;  yaxiscolor:=medgray; zaxiscolor:=medgray;
  draw_xyz_axes(3,2,2.5);

  % draw the person
  save head_to_feet; numeric head_to_feet; % how tall will person be?
  head_to_feet = (x4-x0)++(y4-y0);
  pickup pencircle scaled line_width_light;
  % draw the person (rotate him from vertical already)
  drawstickfigure(head_to_feet) rotated (-90+angle(z1-z0)) shifted z0;

  % draw the arc with the arrow
  save trans; transform trans; % transformation of circle in yz plane 
  (0,0) transformed trans = (0,0);
  (1,0) transformed trans = z2;
  (0,1) transformed trans = z3;
  save orient_arc; path orient_arc;
  orient_arc = fullcircle scaled 2 transformed trans;
  drawarrow subpath(.5,3.5) of orient_arc;
endfig;



beginfig(79) % figure with head on yaxis of Re^3 and feet at origin; ccw rotate
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);

  save origin, xaxis, yaxis, zaxis, head;
  origin:=new_vect;
  xaxis:=new_vect; yaxis:=new_vect; zaxis:=new_vect; 
  head:=new_vect;
  vect_def(origin,0,0,0);
  vect_def(xaxis,1,0,0); vect_def(yaxis,0,1,0); vect_def(zaxis,0,0,1); 
  vect_def(head,0,2,0);
  project_point(0,origin);
  project_point(1,xaxis);
  project_point(2,yaxis);
  project_point(3,zaxis);
  project_point(4,head);
  free_vect(head);
  free_vect(zaxis);  free_vect(yaxis);  free_vect(xaxis);  
  free_vect(origin);
  
  % draw axes
  pickup pencircle scaled line_width_light;
  xaxiscolor:=medgray;  yaxiscolor:=medgray; zaxiscolor:=medgray;
  draw_xyz_axes(3,3,2.5);

  % draw the person
  save head_to_feet; numeric head_to_feet; % how tall will person be?
  head_to_feet = (x4-x0)++(y4-y0);
  pickup pencircle scaled line_width_light;
  % draw the person (rotate him from vertical already)
  drawstickfigure(head_to_feet) rotated (-90+angle(z2-z0)) shifted z0;

  % draw the arc with the arrow
  save trans; transform trans; % transformation of circle in xz plane 
  (0,0) transformed trans = (0,0);
  (1,0) transformed trans = z1;
  (0,1) transformed trans = z3;
  save orient_arc; path orient_arc;
  orient_arc = fullcircle scaled 2 transformed trans;
  drawarrow subpath(4,7.5) of reverse(orient_arc);
endfig;



% ========== answers to map5 ==================

beginfig(81) % reflection about the line with slope \theta
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.45in; w:=u; v:=u;

  save codomain_shift; pair codomain_shift; codomain_shift=(5.5w,0v);
  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -1.15w; xmax = 1.15w; ymin = -1.15v; ymax = 1.15v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis; draw xaxis shifted codomain_shift; % input axis 
    updown_ticks(3,(-1w,0v),(1w,0v));
    updown_ticks(3,(-1w,0v)+codomain_shift,(1w,0v));
  draw yaxis; draw yaxis shifted codomain_shift; % output axis
    sidetoside_ticks(3,(0w,-1v),(0w,1v));
    sidetoside_ticks(3,(0w,-1v)+codomain_shift,(0w,1v));

  x1 = .5[xpart(point .5 of xaxis),
          xpart(point .5 of (xaxis shifted codomain_shift))];
  y1 = .5[ypart(point .5 of yaxis),
          ypart(point .5 of (yaxis shifted codomain_shift))];
  label(btex {\small $\mapsunder{f}$} etex,z1);

  save theta; numeric theta;
    theta =20; % in degrees

  % the line of reflection
  z0 = (0w,0v);
  z2 = (1w,0v) rotated theta; % on the line
    z3 = whatever[z0,z2]; x3 = xmax; % line's endpoints
    z4 = whatever[z0,z2]; x4 = xmin;
  save ell; path ell; ell = z3--z4; 
  pickup pencircle scaled line_width_light;
  draw ell withcolor lightgray;
    draw ell shifted codomain_shift withcolor lightgray;

  % the vectors
  z10 = (cosd(2theta)*w,sind(2theta)*v);
  z11 = (sind(2theta)*w,-cosd(2theta)*v);
  save delta; path delta[];
  delta1 = z0--z10;
  delta2 = z0--z11;
  pickup pencircle scaled line_width_dark;
  drawarrow delta1; drawarrow delta2;
    label.rt(btex {\scriptsize $\vec{\delta}_1=\colvec{\cos(2\theta) \\ \sin(2\theta)}$} etex,
             point infinity of delta1);
    label.rt(btex {\scriptsize $\vec{\delta}_2=\colvec{\sin(2\theta) \\ -\cos(2\theta)}$} etex,
	     point infinity of delta2);
  z20 = (1w,0v);
  z21 = (0w,1v);
  save e; path e[];
  e1 = (z0--z20) shifted codomain_shift;
  e2 = (z0--z21) shifted codomain_shift;
  pickup pencircle scaled line_width_dark;
  drawarrow e1; drawarrow e2;
      label.bot(btex {\scriptsize $\vec{e}_1$} etex,point .8 of e1);
      label.lft(btex {\scriptsize $\vec{e}_2$} etex,point .8 of e2);

endfig;





% ========== answers to map6 ==================

beginfig(82) % sequence that does not repeat
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.45in; w:=u; v:=u;

  % the axes
  save xmin, xmax, ymin, ymax; numeric xmin, xmax, ymin, ymax;
  xmin = -.15w; xmax = 1.15w; ymin = -.15v; ymax = 1.15v; 
  save xaxis, yaxis; path xaxis, yaxis;
  xaxis = (xmin,0v)--(xmax,0v); yaxis = (0w,ymin)--(0w,ymax);
  pickup pensquare scaled line_width_light;
  draw xaxis;  % input axis 
    updown_ticks(1,(1w,0v),(1w,0v));
  draw yaxis;  % output axis
    sidetoside_ticks(1,(0w,1v),(0w,1v));

  % the line 
  z0 = (0w,0v);
  save a, b; pair a, b;  
  a = (1w,0v); b = (1w,1v); 
    z3 = whatever[z0,b]; x3 = xmax; % line's endpoints
    z4 = whatever[z0,b]; x4 = xmin;
  save ell; path ell; ell = z3--z4; 
  pickup pencircle scaled line_width_light;
  draw ell withcolor lightgray;
  drawarrow z0--a; drawarrow z0--b;

  % the path taken
  pickup pencircle scaled line_width_dark;
  draw a--(.5w,.5v)--(.5w,0v)
        --(.25w,.25v)--(.25w,0v)
        --(.125w,.125v)--(.125w,0v);
endfig;





beginfig(83) % projection of (1,2,3) into xy-plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);

  save origin, xaxis, yaxis, zaxis, src, result;
  origin:=new_vect;
  xaxis:=new_vect; yaxis:=new_vect; zaxis:=new_vect; 
  src:=new_vect;  result:=new_vect;
  vect_def(origin,0,0,0);
  vect_def(xaxis,1,0,0); vect_def(yaxis,0,2,0); vect_def(zaxis,0,0,3); 
  vect_def(src,1,2,3);  vect_def(result,1,2,0);
  project_point(0,origin);
  project_point(1,xaxis);
  project_point(2,yaxis);
  project_point(3,zaxis);
  project_point(4,src);
  project_point(5,result);
  free_vect(result); free_vect(src);
  free_vect(zaxis);  free_vect(yaxis);  free_vect(xaxis);  
  free_vect(origin);
  
  % draw axes
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.5,4.5,3.5,2,4,3);

  % the vectors
  pickup pencircle scaled line_width_dark;
  draw z4--z5 withcolor white;
  pickup pencircle scaled line_width_light;
  draw z4--z5 dashed evenly scaled .5;
  draw z1--z5; draw z2--z5;
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z5 withcolor lightgray;
  drawarrow z0--z4;

  free_vect(lpn);
endfig;





beginfig(84) % projection of (1,2,3) into xy-plane, and extra one in xy-plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=40pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);

  save origin, xaxis, yaxis, zaxis, src, result;
  origin:=new_vect;
  xaxis:=new_vect; yaxis:=new_vect; zaxis:=new_vect; 
  src:=new_vect;  result:=new_vect; extra:=new_vect;
  vect_def(origin,0,0,0);
  vect_def(xaxis,1,0,0); vect_def(yaxis,0,2,0); vect_def(zaxis,0,0,3); 
  vect_def(src,1,2,3);  vect_def(result,1,2,0);  vect_def(extra,.5,4,0);
  project_point(0,origin);
  project_point(1,xaxis);
  project_point(2,yaxis);
  project_point(3,zaxis);
  project_point(4,src);
  project_point(5,result);
  project_point(6,extra);
  free_vect(extra); free_vect(result); free_vect(src);
  free_vect(zaxis);  free_vect(yaxis);  free_vect(xaxis);  
  free_vect(origin);
  
  % draw axes
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.5,4.5,3.5,2,4,3);

  % the vectors
  %draw z1--z5; draw z2--z5;
  pickup pencircle scaled line_width_dark;
  drawarrow z0--z5 withcolor lightgray;
  drawarrow z0--z6 withcolor lightgray;
  drawarrow z0--z4;
  %pickup pencircle scaled line_width_dark;
  %draw z4--z5 withcolor white;
  pickup pencircle scaled line_width_light;
  draw z4--z5 dashed evenly scaled .5;
  draw z4--z6 dashed evenly scaled .5;
  draw z5--z6 dashed evenly scaled .5;

  free_vect(lpn);
endfig;






% ========== answers to lstsqs ==================



beginfig(85) % exercise: fairness of a coin
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs1.dat" plot drawn_point;
    setrange(0,0,whatever,whatever);
    frame.llft;
    endgraph;
endfig;


beginfig(86) % exercise: mens mile, full data
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs2.dat" plot drawn_point;
    setrange(1850,210,whatever,whatever);
    frame.llft;
    endgraph;
endfig;




beginfig(87) % exercise: mens 1500 metre, full data
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs3.dat" plot drawn_point;
    setrange(whatever,200,whatever,whatever);
    frame.llft;
    endgraph;
endfig;




beginfig(88) % exercise: women's mile, full data
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs4.dat" plot drawn_point;
    setrange(1900,210,whatever,whatever);
    frame.llft;
    endgraph;
endfig;




beginfig(89) % exercise: mens and women's mile, full data
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs2.dat" dashed evenly;
    gdraw "lstsqs4.dat" dashed evenly scaled .5;
    setrange(1850,210,whatever,whatever);
    frame.llft;
    endgraph;
endfig;




beginfig(90) % exercise: launch temp vs o-ring failure
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs5.dat" plot drawn_point;
    setrange(32,0,whatever,whatever);
    frame.llft;
    endgraph;
endfig;






beginfig(91) % exercise: planet index vs dist from sun
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs6.dat" plot drawn_point;
    setrange(0,0,whatever,whatever);
    frame.llft;
    endgraph;
endfig;





beginfig(92) % exercise: planet index vs log_10 (dist from sun)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs7.dat" plot drawn_point;
    setrange(0,whatever,whatever,whatever);
    frame.llft;
    endgraph;
endfig;




beginfig(93) % exercise: planet index vs log_10 (dist from sun)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs8.dat" plot drawn_point;
    setrange(0,whatever,whatever,whatever);
    frame.llft;
    endgraph;
endfig;



beginfig(94) % exercise: TV hours vs SAT scores
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,.618w);
    gdraw "lstsqs9.dat" plot drawn_point;
    %setrange(whatever,whatever,whatever,whatever);
    frame.llft;
    endgraph;
endfig;





% ========== answers to homogeom ==================




beginfig(95) % skew map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (12w,0v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(4,(1w,0)+codomainshift,(1w,0));
  draw yaxis;  sidetoside_ticks(3,(0,v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(3,(0,v)+codomainshift,(0,v));

  save u_vec, v_vec, h_u, h_v; pair u_vec, v_vec, h_u, h_v;
  u_vec=(1w,2v); v_vec=(2w,1v);
  h_u=(3w,2v); h_v=(3w,1v);
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--u_vec;
    label.rt(btex {\scriptsize $\vec{u}$} etex,u_vec);
  drawarrow (0w,0v)--v_vec;
    label.rt(btex {\scriptsize $\vec{v}$} etex,v_vec);
  drawarrow ((0w,0v)--h_u) shifted codomainshift;
    label.rt(btex {\scriptsize $h(\vec{u})$} etex,
               h_u shifted codomainshift);
  drawarrow ((0w,0v)--h_v) shifted codomainshift;
    label.rt(btex {\scriptsize $h(\vec{v})$} etex,
               h_v shifted codomainshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{\colvec{x \\ y}\mapsto\colvec{x+y \\ y}}{\longrightarrow}$} etex,z7);
endfig;



beginfig(96) % skew map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (12w,0v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-1.5v)--(0w,3.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(4,(1w,0)+codomainshift,(1w,0));
  draw yaxis;  sidetoside_ticks(5,(0,-v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(5,(0,-v)+codomainshift,(0,v));

  save u_vec, v_vec, h_u, h_v; pair u_vec, v_vec, h_u, h_v;
  u_vec=(1w,2v); v_vec=(2w,1v);
  h_u=(1w,1v); h_v=(2w,-1v);
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--u_vec;
    label.rt(btex {\scriptsize $\vec{u}$} etex,u_vec);
  drawarrow (0w,0v)--v_vec;
    label.rt(btex {\scriptsize $\vec{v}$} etex,v_vec);
  drawarrow ((0w,0v)--h_u) shifted codomainshift;
    label.rt(btex {\scriptsize $h(\vec{u})$} etex,
               h_u shifted codomainshift);
  drawarrow ((0w,0v)--h_v) shifted codomainshift;
    label.rt(btex {\scriptsize $h(\vec{v})$} etex,
               h_v shifted codomainshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{\colvec{x \\ y}\mapsto\colvec{x \\ -x+y}}{\longrightarrow}$} etex,z7);
endfig;



beginfig(97) % compound map
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pair codomainshift; codomainshift = (12w,0v);
  pair compoundshift; compoundshift = (12w,-5v);
  pair d_compoundshift; d_compoundshift = (12w,-10v);
  path xaxis, yaxis;
  xaxis = (-.5w,0v)--(4.5w,0v); yaxis = (0w,-1.5v)--(0w,2.5v);  
  pickup pensquare scaled line_width_light;
  draw xaxis;  updown_ticks(4,(1w,0),(1w,0));
    draw xaxis shifted codomainshift;
    updown_ticks(4,(1w,0)+codomainshift,(1w,0));
    draw xaxis shifted compoundshift;
    updown_ticks(4,(1w,0)+compoundshift,(1w,0));
    draw xaxis shifted d_compoundshift;
    updown_ticks(4,(1w,0)+d_compoundshift,(1w,0));
  draw yaxis;  sidetoside_ticks(4,(0,-v),(0,v));
    draw yaxis shifted codomainshift;
    sidetoside_ticks(4,(0,-v)+codomainshift,(0,v));
    draw yaxis shifted compoundshift;
    sidetoside_ticks(4,(0,-v)+compoundshift,(0,v));
    draw yaxis shifted d_compoundshift;
    sidetoside_ticks(4,(0,-v)+d_compoundshift,(0,v));

  z0 = ((sqrt(3)/2)*w,.5v);
  z1 = (((sqrt(3)+1)/2)*w,.5v);
  z2 = ((sqrt(2)*(sqrt(3)+1)/4)*w,(sqrt(2)/2)*v);
  z3 = ((sqrt(2)*(sqrt(3)+1)/4)*w,(sqrt(2)*(1-sqrt(3))/4)*v);
  
  pickup pencircle scaled line_width_dark;
  drawarrow (0w,0v)--z0;
    label.urt(btex {\scriptsize $\colvec[r]{\sqrt{3}/2 \\ 1/2}$} etex,z0);
  drawarrow ((0w,0v)--z1) shifted codomainshift;
    label.urt(btex {\scriptsize $\colvec[r]{(\sqrt{3}+1)/2 \\ 1/2}$} etex,z1 shifted codomainshift);
  drawarrow ((0w,0v)--z2) shifted compoundshift;
    label.urt(btex {\scriptsize $\colvec[r]{\sqrt{2}(\sqrt{3}+1)/2 \\ \sqrt{2}/2}$} etex,
               z2 shifted compoundshift);
  drawarrow ((0w,0v)--z3) shifted d_compoundshift;
    label.lrt(btex {\scriptsize $\colvec[r]{\sqrt{2}(\sqrt{3}+1)/4 \\ \sqrt{2}(1-\sqrt{3})/4}$} etex,
               z3 shifted d_compoundshift);

  z5 = .5[point 1 of xaxis,point 0 of (xaxis shifted codomainshift)];
  z6 = .618[point 0 of yaxis,point 1 of yaxis];
  z7=(x5,y6);
  label(btex {$\overset{\colvec{x \\ y}\mapsto\colvec{x+y \\ y}}{\longrightarrow}$} etex,z7);
  label(btex {$\overset{\colvec{x \\ y}\mapsto\colvec{(\sqrt{2}/2)x \\ \sqrt{2}y}}{\longrightarrow}$} etex,z7 shifted (compoundshift-codomainshift));
  label(btex {$\overset{\colvec{x \\ y}\mapsto\colvec{x \\ -x+y}}{\longrightarrow}$} etex,z7 shifted (d_compoundshift-codomainshift));
endfig;






beginfig(98) % composition; inverse funciton thm; like chain rule
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; w:=u; v:=.175in;

  save codomain_shift; pair codomain_shift; codomain_shift=(3w,0v);
  z0=(0w,0v);  z1=(0w,4.5v); z2=(0w,-1.5v);
  z10=z0+codomain_shift; z11=z1+codomain_shift; z12=z2+codomain_shift;
  z20=z10+codomain_shift; z21=z11+codomain_shift; z22=z12+codomain_shift;
  
  % the axes
  pickup pensquare scaled line_width_light;
  draw z2--z1;  % input axis 
  draw z12--z11;  % output axis
  draw z22--z21;  % output of the output axis

  % the interval
  pickup pencircle scaled line_width_dark;
  drawinterval((0w,.8v)--(0w,1.2v));  
    label.lft(btex {\tiny $x$} etex,(0w,1v));
  drawinterval(((0w,1.6v)--(0w,2.4v)) shifted codomain_shift);  
    label.urt(btex {\tiny $f(x)$} etex,((0w,2v)+codomain_shift));
  drawinterval(((0w,.8v)--(0w,1.2v)) shifted 2codomain_shift);  
    label.rt(btex {\tiny $f^{-1}(f(x))$} etex,((0w,1v)+2codomain_shift));
  
  % the line
  pickup pencircle scaled line_width_light;
  draw_action_arrow((0w,1v)--((0w,2v)+codomain_shift)) % 
  draw_action_arrow(((0w,2v)+codomain_shift)--((0w,1v)+2codomain_shift)) % 
endfig;


%======= Vermont map ==================
%   Map of part of Vermont
beginfig(99);
numeric u;  %scaling factor
numeric v;  %vertical scaling factor
numeric w;  %horizontal scaling factor
path ny, vt, gi, ca, hero, ilm, valcor;
pair burlington, colchester, grandisle, swanton, winooski;
path btow, wtoc, ctog, ctos, gtos;

u = 0.05in;
pickup pencircle scaled .3pt xscaled .5pt rotated 30;

ny = (0u,0u)--(6.3u,0u){dir 80}
      ..(6.4u,1u)..(6.3u,2u)..(5.2u,3u)..(5.1u,4u)..(6u,5u)
      ..(7.1u,6u)..(7.0u,7u)..(6u,8u)..(4.6u,10u)
      ..(4.4u,11u)..(4.6u,12u)..{dir 80}(4.9u,12.9u){dir 135}..(3.8u,12.7u)
        ..(3.6u,13u)..(3.4u,14u)..(3.5u,15u)
      ..(3.4u,16u)..(3.5u,17u)..(3.0u,18u)..(3.5u,19u)..(3.8u,20u)
      ..(3.5u,21u)..(3.3u,22u)..(3.2u,23u)..(3.1u,24u)..(3.2u,25u){left}
        ..(2.9u,25u)
      ..(3.0u,26u)..(3.5u,27u)..(4.5u,27.8u)..(5.0u,27.5u)..(5.6u,27u)
        ..(6.2u,26u)..(6.5u,25u)..(7.2u,24.4u)..(7.7u,25u)..(7.4u,26u)
        ..(7.5u,27u)..(7.2u,28u)..(6u,29u)..(5.5u,30u)
      ..(5.7u,31u)..(5.8u,32u)..(6u,32.5u)..(7u,32.7u){dir -35}
        ..{dir 200}(7.8u,33u){dir 230}..{down}(7.3u,31.7u){dir 65}
        ..(8u,33u)..(8.8u,34u)..(9u,35u)
      ..(8.9u,36u)..(8.2u,37.3u)..(7.8u,36.8u)..(7u,36.9u)..(6.3u,37u)
        ..(6.3u,38u)..(5.7u,39u)..(6.9u,39.8u){dir 110}
      ..(7.2u,40.3u)..(6.9u,41u)..(6.8u,42u)..(8u,43u)..(8u,44u)..(8u,45u)
      ..(8.3u,46u)..(8.1u,47u)..(7.5u,48u)..(7.6u,49u)..(8.5u,50u)
        ..(9u,48.2u)..(10u,49u)..(9.9u,50u)
      ..(9.9u,50.8u){left}..(9.6u,50.7u)..(9.4u,51u)..(9.9u,52u)
        ..(9.9u,53u)..(9.5u,54u)..(10u,55u)
      --(0u,55u)--cycle;
fill ny withcolor .92white;
draw ny;

vt = (30u,0u)--(18.1u,0u)
      ..(18.3u,1u)..(19u,2u)..(18.9u,3u)..(18.2u,4u)..(17.1u,3.9u)
        ..{right}(15.2u,4.1u){up}..(15.2u,5u)
      ..(15u,6u)..(15.3u,7.2u)..(15.1u,8u)..(15u,9u)..(13.5u,10u)
      ..(12.5u,10.7u){dir 10}..(13.1u,10.8u)..(13u,11.1u)..(13.5u,11u)
        ..(13.8u,11.1u){down}..(14u,10.5u)..(14.4u,10.7u)..(14.8u,11.2u)
        ..(15.4u,10.3u)..(17u,10.8u)..(17.5u,11u)..(17.6u,12u)..(17.5u,12.6u)
        ..(18.2u,12.7u){down}..(18.3u,12u)..(18.2u,11u)..(19.5u,11u)
        ..(19u,10.5u)..(19.4u,10u)..(20.9u,11u)..(21.1u,12u)..(21.3u,13u)
        ..(21.5u,13.8u)..(21u,13.7u)..{dir 240}(20u,12.7u)..(19.5u,13u)
        ..(19u,13.2u)..(18.5u,13.1u){up}..(18.6u,14u)..(18.5u,15u)
      ..(18.5u,16u)..(18u,17u)..(17.5u,18u)..(18u,18.6u)..(19.7u,19u)
        ..(19.7u,20u)
      ..(19.7u,21u)..(19.7u,22u)..(19.8u,23u)..(19.8u,24u)..(19.9u,25u)
      ..(20u,26u)..(20u,27u)..(20.2u,28u)..(20.6u,29u)..(21.2u,30u)
      ..(21.8u,31u)..(22.3u,31.3u)..(22.8u,31.1u)..(23.2u,32u)
        ..(24.1u,33u)..(21.8u,32.9u)..(21.7u,34u)..(21.9u,35u)
      ..(22u,35.5u)..(22.4u,35.1u)..(22.8u,36u)..(22u,36.8u)..(21.2u,36.1u)
        ..(21u,36.2u)..(21.4u,38u)..(21.9u,39u)..(21.8u,40u)
      ..(22u,41u)..(22.1u,42u)..(22.2u,43u)..(23u,45u)
      ..(23.1u,46u)..(23.3u,47u)..(22.5u,48u)..(21u,48.5u)..(20.5u,47.8u)
        ..(19.1u,48u)..(18.8u,49u)..(19u,50u)..(19.4u,51u)..(19.8u,52u)
        ..(20u,52.3u)..(21.5u,53u)..(22u,54u)
      ..(23.5u,55u)--(30u,55u)--cycle;
fill vt withcolor .92white;
draw vt;

ca = (11u,55u)..(11u,54u)..(10.8u,53u)..(12u,53.2u)..(12.9u,53u)..(13u,52u)
         ..(13u,51u)..(12.9u,50u)
       ..(12.5u,49u)..(13u,48u)..(12.5u,47u)..(12.5u,46u)..(13.2u,45u)
       ..(13.1u,44u)..(12.9u,43u)..(12.7u,42u)..(13.9u,41u)..(14u,40u)
         ..(14.1u,39.9u)..(14.5u,41u)..(14.8u,42u)..(15u,43u)..(15.1u,44u)
         ..(15.3u,45u)
       ..(15.7u,46u)..(15.4u,47u)..(16.2u,48u)..(16.4u,49u)..(16.2u,50u)
       ..(17u,51u)..(18.8u,52u)..(19.1u,53u)..(19.5u,54u)
       ..(19.6u,55u)--cycle;
fill ca withcolor .92white;
draw ca;


gi = (13.4u,14.9u)..(13.7u,16u)..(14u,16.6u)..(14.3u,16.2u)..(15.1u,16.3u)
       ..(15.2u,17u)..(15.1u,18u)..(15.9u,19u)..(15.8u,20u)
     ..(15u,20.4u)..(15.2u,21u)..(14.8u,22u)..(14.4u,22.2u)..(13.8u,20.3u)
       ..(13u,21u)..(12.5u,20.5u)..(12.5u,21u)..(12.2u,22u)..(13u,22.3u)
       ..(13.8u,23u)..(14.3u,24u)..(14.4u,25u)
     ..(14.7u,26u)..(14.8u,27u)..(15u,27.6u)..(16u,28.2u)..(16.8u,28.5u)
       ..(16.9u,29u)..(16.2u,30u)
     ..(15.5u,31u)..(15.2u,32.1u)..(14.5u,32u)..(14.1u,31u)..(14.2u,30u)
       ..(13.7u,29.8u)..(13.4u,30u)..(13u,30.5u)..(12.5u,30u)..(12u,29.5u)
       ..(11.5u,29.7u)..(11u,29u)..(10.7u,28u)..(10.2u,27u)..(10u,25.5u)
       ..(9.7u,25u)
     ..(10u,24u)..(10u,23u)..(10.2u,22u)..(10u,21u)..(10.5u,20.2u)
       ..(10u,19.5u)
     ..(10.5u,18.5u)..(10u,18.3u)..(10.1u,17.3u)..(11u,17.6u)..(11.9u,17.6u)
       ..(12u,16.5u)..(12.5u,16u)..(12.5u,15u)
     ..cycle;
fill gi withcolor .92white;
draw gi;

hero = (12.3u,30.5u)..(13u,32u)..(12.9u,32.5u)..(13.2u,33u)..(13.6u,32.1u)
         ..(13.8u,32u)..(14.1u,32u)..(14.3u,33u)..(14.3u,34u)..(14.2u,35u)
       ..(14.3u,36u)..(15u,37u)..(15.4u,38u)..(15.9u,39u)..(16.2u,40u)
       ..(16.4u,41u)..(17.2u,42u)..(17u,42.5u)..(17.5u,43u)..(18.4u,43.2u)
         ..(18.5u,44u)..(18.5u,45u)
       ..(18.4u,46u)..(18u,47.2u)..(17.3u,47u)..(16.9u,46u)..(16.5u,45u)
         ..(16u,45u)
       ..(15.6u,44u)..(15.5u,43u)..(15.4u,42u)..(15.7u,41.7u)..(14.9u,41.5u)
         ..(14.8u,41u)..(14.6u,40u)
       ..(15.5u,39.7u)..(15.3u,39u)..(15u,38.3u)..(14u,38.5u)
         ..(13.2u,37.1u){up}
         ..(13.1u,38u)..(13.3u,38.9u)..(12.9u,38u)..(12.3u,37u)..(12.3u,36.8u)
         ..(12.5u,36u)..(12.4u,35u)
       ..(12.1u,34u)..(11.8u,33u)..(11.9u,32u)..(12.2u,32u)..(12.1u,31u)
       ..cycle;
fill hero withcolor .92white;
draw hero;

ilm = (10.3u,38.1u)..(11u,38.9u)..(10.9u,39.2u)..(11.3u,40u)
      ..(11.5u,40.5u)..(11.3u,40.7u)..(12u,42u)..(11.8u,42u)..(12u,43u)
        ..(12.2u,44u)..(12.4u,44.8u)
      ..(12u,45.5u)..(11u,46u)..(10u,45.5u)..(10.1u,45u)
      ..(9.9u,44u)..(9.4u,43u)..(9.1u,41u)..(8.8u,40.2u)
      ..(9.3u,39u){right}..(9.2u,38.5u)..(10u,38.2u)
      ..cycle;
fill ilm withcolor .92white;
draw ilm;

valcor = (5u,16u)..(5.7u,16.3u)..(5.7u,17u)..(6u,17.5u){left}
           ..(5.8u,17.5u)..(6u,18u)..(5.8u,18.1u)..(5.5u,18.5u)
           ..(5u,19u)..(4.6u,18.9u)..(4.5u,18.7u)..(4.3u,18.6u)
           ..(4.5u,18u)..(4.3u,17.9u)..(4.3u,17.7u)..(4u,17.8u)
           ..(4u,17.5u)..(4.4u,17.5u)..(4.4u,17u)..(4.6u,16.1u)
         ..cycle;
fill valcor withcolor .92white;
draw valcor;

pickup pencircle scaled .4pt;
draw (0u,0u)--(30u,0u)--(30u,55u)--(0u,55u)--cycle;
%for i=1 upto10:
%	draw (0u,5*i*u)--(30u,5*i*u);
%endfor
%for j=1 upto 6:
%	draw (5*j*u,0u)--(5*j*u,55u);
%endfor

burlington = (19.9u,3u);
colchester= (24u,10u);
grandisle = (13.8u,27.8u);
swanton = (25.7u,47.2u);
winooski = (21.2u,4.9u);
%draw the roads
pickup pencircle scaled 1.2pt;
btow = burlington..(21u,4u)
        ..winooski; draw btow;
wtoc = winooski..(22.5u,8u)..(23u,10u)
        --colchester; draw wtoc;
ctog = colchester..(23u,12u)..(22.9u,14u)..(20.4u,16u)..(20u,17.5u)
          ..(17u,18u)..(15u,19u)..(14.5u,20u)..(12u,19.9u)..(11.8u,22u)
          ..(12.9u,25u)
        ..grandisle; draw ctog;
ctos = colchester..(25.5u,12u)..(25.4u,15u)..(26.2u,19u)..(26.1u,20u)
          ..(26.4u,22u)..(26.4u,23.5u)..(27.2u,27u)..(26.1u,28u)
          ..(27u,33.5u)..(28.5u,36.1u)..(29u,38.2u)..(27.8u,42.5u)
          ..(28.1u,44.5u)..(27.5u,46u)..(26u,47u)
        ..swanton; draw ctos;
gtos = grandisle..(14.1u,30u)..(14.4u,31.8u)..(13.9u,32u)..(13.6u,32.5u)
          ..(14u,35u)..(14u,37.3u)..(15u,38u)..(15.5u,39u)..(15.7u,40u)
          ..(16.1u,41u)..(15.5u,42u)..(15.5u,43.7u)..(14.8u,44u)
          ..(15u,45.8u)..(14.9u,47u)..(15.2u,50.9u)..(15.8u,52u)
          ..(17u,52.4u)..(18.2u,52.6u)..(20u,52u)..(22u,51.8u)
          ..(23.1u,50u)..(25.8u,48u)
        ..swanton; draw gtos;

%draw the cities ? use drawpoint?
pickup pencircle scaled 2pt;
draw burlington; draw colchester; draw grandisle; draw swanton; draw winooski;
%label everything
boxit.bur(btex \textit{\scriptsize Burlington} etex); bur.n+(0,2pt)=burlington;
  bur.dx=bur.dy=1pt; unfill bpath bur;
  drawunboxed(bur);
boxit.col(btex \textit{\scriptsize Colchester} etex); col.nw-(2pt,0)=colchester;
  col.dx=col.dy=1pt; unfill bpath col;
  drawunboxed(col);
boxit.gi(btex \textit{\scriptsize Grand Isle} etex); gi.e+(2pt,0)=grandisle;
  gi.dx=gi.dy=1pt; unfill bpath gi;
  drawunboxed(gi);
boxit.swa(btex \textit{\scriptsize Swanton} etex); swa.sw-(2pt,2pt)=swanton;
  swa.dx=swa.dy=1pt; unfill bpath swa;
  drawunboxed(swa);
boxit.win(btex \textit{\scriptsize Winooski} etex); win.w+(-2pt,2pt)=winooski;
  win.dx=win.dy=1pt; unfill bpath win;
  drawunboxed(win);
%label.bot(btex \textit{\small Burlington} etex,burlington);
%label.lrt(btex \textit{\small Colchester} etex,colchester);
%label.lft(btex \textit{\small Grand Isle} etex,grandisle);
%label.urt(btex \textit{\small Swanton} etex,swanton);
%label.rt(btex \textit{\small Winooski} etex,winooski);
pickup pencircle scaled 1.2pt;
drawoptions(withcolor white);
draw burlington; draw colchester; draw grandisle; draw swanton; draw winooski;
endfig;



end


