% CH2.mp
%  MetaPost input file with chapter two pictures.
verbatimtex
%&latex
\documentclass{book}
\usepackage{dvidrv} \usepackage{hrefout}
\usepackage{bookjh,linalgjh}
\usepackage{verbatim}
\begin{document}
etex

input jh
ahangle:=40;

input jh3d
beginfig(1) % 2-flat in R3; 2x+y+z=4
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,2.1,-0.1,-0.1);  vect_def(c_b,1.05,-0.1,2);
  vect_def(c_c,0.55,3,-0.1); vect_def(c_d,-0.5,3,2);

  % I don't understand what these do.
  set_point(Obs,10,5,5);
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
  draw_xyz_axes(2.5,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.5,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

  label.lft(btex {\scriptsize \hspace*{1em}
          $P=\set{\colvec{x \\ y \\ z} \suchthat 2x+y+z=4}$} etex,.707[z3,z4]);
endfig;



beginfig(2) % 2-flat in R3; 2x+y+z=4
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

  vect_def(c_a,2.1,-0.1,-0.1);  vect_def(c_b,1.05,-0.1,2);
  vect_def(c_c,0.55,3,-0.1); vect_def(c_d,-0.5,3,2);
  vect_def(c_e,1.5,1.5,1); vect_def(c_f,1,2.5,1);
  vect_def(c_g,1,1.5,2); 

  % I don't understand what these do.
  set_point(Obs,10,5,5);
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
  pickup pencircle scaled line_width_dark;
  draw z1--z2--z4--z3--cycle;

  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.5,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.5,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

  label.lft(btex {\scriptsize \hspace*{1em}
                       $P=\set{\colvec{2 \\ 0 \\ 0}
		               +\colvec{-0.5 \\ 1 \\ 0} y
		               +\colvec{-0.5 \\ 0 \\ 1} z
		               \suchthat y,z\in\Re}$} etex,.707[z3,z4]);
  drawarrow (z5+(.25w,-.1v))--(z6+(.25w,-.1v));
  drawarrow z5--z7;
endfig;



beginfig(3) % 2-flat in R3; 2x+y+z=4, paramatized
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

  vect_def(c_a,2.1,-0.1,-0.1);  vect_def(c_b,1.05,-0.1,2);
  vect_def(c_c,0.55,3,-0.1); vect_def(c_d,-0.5,3,2);
  vect_def(c_e,2,0,0); vect_def(c_f,1.5,1,0);
  vect_def(c_g,1.5,0,1); 

  % I don't understand what these do.
  set_point(Obs,10,5,5);
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
  draw_xyz_axes(2.5,3.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(2.5,3.5,2.5,2,3,2);

%  filldraw z1--z2--z4--z3--cycle withcolor shading_color;
  pickup pencircle scaled (2*line_width_dark);
  draw z2--z4 withcolor white;
  pickup pencircle scaled line_width_dark;
  draw .5[z1,z2]--z2--z4--.5[z4,z3];

  label.lft(btex {\scriptsize \hspace*{1em}
                       $P=\set{\colvec{2 \\ 0 \\ 0}
		               +\colvec{-0.5 \\ 1 \\ 0} y
		               +\colvec{-0.5 \\ 0 \\ 1} z
		               \suchthat y,z\in\Re}$} etex,.707[z3,z4]);
  drawarrow z8--z5 withcolor shading_color;
  drawarrow z5--z6;
  drawarrow z5--z7;
endfig;


beginfig(4) % two vectors in R3, just in space
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
    label.llft(btex {\scriptsize $\vec{v}$} etex,.707[z1,z2]);
  drawarrow z3--z4;
    label.lrt(btex {\scriptsize $\vec{u}$} etex,.707[z3,z4]);
endfig;





beginfig(5) % two vectors in R3, canonical position, in a plane, with a hyp
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
endfig;




beginfig(6)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  save c_a, c_b, c_c, c_d,
       origin;
  c_a:=new_vect;  c_b:=new_vect; 
  c_c:=new_vect;  c_d:=new_vect;   c_e:=new_vect;  c_f:=new_vect; 
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,0,1,0); % first vector
  vect_def(c_b,1,0,0); % second vector 
  vect_def(c_c,0,1,0); % plane boundaries: y=-2, z=0 
  vect_def(c_d,-1,0,0); %   y=-2, z=3 
  vect_def(c_e,0,0,0); %      y=3, z=0
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
  project_point(4,c_a);
  project_point(5,c_b);
  project_point(6,c_c);
  project_point(7,c_d);
  project_point(8,origin);
  pickup pencircle scaled line_width_dark;
  % ????  draw fullcircle scaled (z5++z7) shifted z8;
  path equator;
  equator=z4..z5..z6..z7..cycle;
  pickup pencircle scaled line_width_light;
  draw equator withcolor red;
endfig;




%
%beginfig(7)
%  numeric u;  %scaling factor
%  numeric v;  %vertical scaling factor
%  numeric w;  %horizontal scaling factor
%  u:=.2in; v:=u; w:=v;
%
%  boxit.d(btex\strut{\small Democrat} etex);  
%  boxit.r(btex\strut{\small Republican} etex);  
%  boxit.i(btex\strut{\small Independent} etex);  
%  d.c=(0u,2v);
%  r.c=(1u,0v);
%  i.c=(-1u,0v);
%  draw pic d;
%  draw pic r;
%  draw pic i;
%  
%endfig;



% ================== crystal ==================
def draw_small_atom(expr loc) =
    fill small_atom_sphere shifted loc withcolor white;
    draw small_atom_sphere shifted loc withcolor lightgray;
    draw small_atom_eq shifted loc withcolor lightgray;
enddef;
def draw_small_atoms(text t) =
  for s = t:
    draw_small_atom(z[s]);
  endfor
enddef;

def draw_large_atom(expr loc) =
    fill large_atom_sphere shifted loc withcolor white;
    draw large_atom_sphere shifted loc withcolor lightgray;
    draw large_atom_eq shifted loc withcolor lightgray;
enddef;
def draw_large_atoms(text t) =
  forsuffixes s = t:
    draw_large_atom(z[s]);
  endfor
enddef;


numeric u;  %scaling factor
numeric v;  %vertical scaling factor
numeric w;  %horizontal scaling factor
u:=10pt; v:=u; w:=v;

save large_atom_scale, small_atom_scale;
numeric large_atom_scale, small_atom_scale; 
large_atom_scale = 1.25u;
small_atom_scale = .5; 
save large_atom_sphere, large_atom_eq, small_atom_sphere, small_atom_eq;
path large_atom_sphere, large_atom_eq, small_atom_sphere, small_atom_eq;
large_atom_sphere = fullcircle scaled large_atom_scale;
large_atom_eq = large_atom_sphere yscaled .3; % the .3 is arbitrary
small_atom_sphere = large_atom_sphere scaled small_atom_scale; 
small_atom_eq = large_atom_eq scaled small_atom_scale; 


beginfig(8) % sodium and chloride atoms make a cube
  % some parameters; the observer's position 
  save obs_x, obs_y, obs_z, obs_dist; numeric obs_x, obs_y, obs_z, obs_dist;
  obs_x = 10;  obs_y = 8;  obs_z =6;
  obs_dist = obs_x ++ obs_y ++ obs_z;
  
  % 3D stuff
  drawing_scale:=30pt;
  save lpn, origin; lpn:=new_vect; origin:=new_vect;
  vect_def(lpn,0,0,0);  vect_def(origin,0,0,0); 
  % Locate the observer and describe where he's looking
  set_point(Obs,obs_x,obs_y,obs_z);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);
  project_point(0,origin);

  % now locate atoms on the three faces.
  save front_ul, front_um, front_ur,  % upper left, upper mid, upper right, etc
       front_ml, front_mm, front_mr,
       front_ll, front_lm, front_lr,
       top_bl, top_bm, top_br,
       top_ml, top_mm, top_mr,
       right_um, right_ur,
       right_mm, right_mr,
       right_lm, right_lr;
  front_ul:=new_vect; front_um:=new_vect; front_ur:=new_vect;  
    front_ml:=new_vect; front_mm:=new_vect; front_mr:=new_vect;
    front_ll:=new_vect; front_lm:=new_vect; front_lr:=new_vect;
    top_bl:=new_vect; top_bm:=new_vect; top_br:=new_vect;
    top_ml:=new_vect; top_mm:=new_vect; top_mr:=new_vect;
    right_um:=new_vect; right_ur:=new_vect;
    right_mm:=new_vect; right_mr:=new_vect;
    right_lm:=new_vect; right_lr:=new_vect;
  save cube_size; cube_size=3; % in 3D units
  vect_def(front_ul,1cube_size,0cube_size,1cube_size);
  vect_def(front_um,1cube_size,.5cube_size,1cube_size);
  vect_def(front_ur,1cube_size,1cube_size,1cube_size);
  vect_def(front_ml,1cube_size,0cube_size,.5cube_size);
  vect_def(front_mm,1cube_size,.5cube_size,.5cube_size);
  vect_def(front_mr,1cube_size,1cube_size,.5cube_size);
  vect_def(front_ll,1cube_size,0cube_size,0cube_size);
  vect_def(front_lm,1cube_size,.5cube_size,0cube_size);
  vect_def(front_lr,1cube_size,1cube_size,0cube_size);
  vect_def(top_bl,0cube_size,0cube_size,1cube_size);
  vect_def(top_bm,0cube_size,.5cube_size,1cube_size);
  vect_def(top_br,0cube_size,1cube_size,1cube_size);
  vect_def(top_ml,.5cube_size,0cube_size,1cube_size);
  vect_def(top_mm,.5cube_size,.5cube_size,1cube_size);
  vect_def(top_mr,.5cube_size,1cube_size,1cube_size);
  vect_def(right_um,.5cube_size,1cube_size,1cube_size);
  vect_def(right_ur,0cube_size,1cube_size,1cube_size);
  vect_def(right_mm,.5cube_size,1cube_size,.5cube_size);
  vect_def(right_mr,0cube_size,1cube_size,.5cube_size);
  vect_def(right_lm,.5cube_size,1cube_size,0cube_size);
  vect_def(right_lr,0cube_size,1cube_size,0cube_size);
  project_point(10,front_ul);  
    project_point(11,front_um);  
    project_point(12,front_ur);  
  project_point(13,front_ml);  
    project_point(14,front_mm);  
    project_point(15,front_mr);  
  project_point(16,front_ll);  
    project_point(17,front_lm);  
    project_point(18,front_lr);  
  project_point(20,top_bl);  
   project_point(21,top_bm);  
   project_point(22,top_br);  
  project_point(23,top_ml);  
   project_point(24,top_mm);  
   project_point(25,top_mr);  
  %project_point(30,right_um);  % redundant
   %project_point(31,right_ur);  
  project_point(32,right_mm);  
   project_point(33,right_mr);  
  project_point(34,right_lm);  
   project_point(35,right_lr);
  free_vect(right_lr);  free_vect(right_lm);
    free_vect(right_mr);  free_vect(right_mm);
    free_vect(right_ur);  free_vect(right_um);
  free_vect(top_mr);  free_vect(top_mm);    free_vect(top_ml);
    free_vect(top_br);  free_vect(top_bm);  free_vect(top_bl);
  free_vect(front_lr);  free_vect(front_lm);  free_vect(front_ll);
    free_vect(front_mr);  free_vect(front_mm);  free_vect(front_ml);
    free_vect(front_ur);  free_vect(front_um);  free_vect(front_ul);

  pickup pencircle scaled line_width_light;
  
  % give a skeletal outline of the cube
  draw z10--z12--z18--z16--cycle; % outline front face
  draw z12--z22--z35--z18;  % right face outline
  draw z10--z20--z22;   % top outline

  % draw the atoms using helping proceedures just above
  draw_small_atoms(21);  % back top
  draw_large_atoms(20, 22);
  draw_small_atoms(23, 25);  % mid top
  draw_large_atoms(24);
  draw_small_atoms(33);  % back right
  draw_large_atoms(35);
  draw_small_atoms(34);  % mid right
  draw_large_atoms(32);
  draw_small_atoms(11);  % upper front
  draw_large_atoms(10, 12);
  draw_small_atoms(13, 15);  % mid front
  draw_large_atoms(14);
  draw_small_atoms(17);  % low front
  draw_large_atoms(16, 18);
  
  %
  free_vect(origin);  free_vect(lpn);
endfig;


beginfig(9)  % front faces of salt crystal
  save xscale, yscale; numeric xscale, yscale; % to make the grid
  xscale = 3u; yscale = xscale;
  save num_cols, num_rows; numeric num_cols, num_rows;
  num_cols = 4; num_rows = 3;
  for row_index=0 upto (num_rows-1):
    for col_index=0 upto (num_cols-1):
      z[(num_cols*row_index)+col_index]=(col_index*xscale,row_index*yscale);
    endfor
  endfor
  pickup pencircle scaled line_width_light;
  for row_index=0 upto (num_rows-1):  % skeleton of rows
    draw z[num_cols*row_index]--z[(num_cols*row_index)+(num_cols-1)];
  endfor
  for col_index=0 upto (num_cols-1):  % skeleton of cols
    draw z[col_index]--z[(num_cols*(num_rows-1))+col_index];
  endfor
  for row_index=0 upto (num_rows-1): % large atoms at corners
    for col_index=0 upto (num_cols-1):
      draw_large_atom(z[(num_cols*row_index)+col_index]);
    endfor
  endfor
  for row_index=0 upto (num_rows-2): % large atoms in middle
    for col_index=0 upto (num_cols-2):
      draw_large_atom(.5[z[(num_cols*row_index)+col_index],
	                 z[(num_cols*(row_index+1))+col_index+1]]);
    endfor
  endfor
  for row_index=0 upto (num_rows-1): % small atoms in horiz middle
    for col_index=0 upto (num_cols-2):
      draw_small_atom(.5[z[(num_cols*row_index)+col_index],
	                 z[(num_cols*(row_index))+col_index+1]]);
    endfor
  endfor
  for row_index=0 upto (num_rows-2): % small atoms in vert middle
    for col_index=0 upto (num_cols-1):
      draw_small_atom(.5[z[(num_cols*row_index)+col_index],
	                 z[(num_cols*(row_index+1))+col_index]]);
    endfor
  endfor
endfig;




save graphite_scale; numeric graphite_scale; graphite_scale = 2u;
beginfig(10) % plane of graphite
  save num_cols, num_rows; numeric num_cols, num_rows;
  num_cols = 3; num_rows = 2;

  save atom; pair atom[];
  for i = 0 upto 5: % a basic carbon ring hexagon
    atom[i] = (graphite_scale,0) rotated (i*60);
  endfor
  save graphite_path; path graphite_path;
  graphite_path=atom[0]--atom[1]--atom[2]--atom[3]--atom[4]--atom[5]--cycle;

  pickup pencircle scaled line_width_light;  
  for row_index=0 upto (num_rows-1):  % draw rows in pairs, upper shifted half
    for col_index=0 upto (num_cols-1):
      draw graphite_path 
        shifted (graphite_scale*(3*col_index,sqrt(3)*row_index));
      for i = 0 upto 5:
	draw_small_atom(atom[i] shifted (graphite_scale*(3*col_index,sqrt(3)*row_index)));
      endfor
      draw graphite_path
        shifted (graphite_scale*(1.5+3*col_index,sqrt(3)*(row_index+.5)));
      for i = 0 upto 5:
	draw_small_atom(atom[i] shifted (graphite_scale*(1.5+3*col_index,sqrt(3)*(row_index+.5))));
      endfor
    endfor
  endfor
endfig;



save graphite_unit_cell; path graphite_unit_cell;
graphite_unit_cell = (0,0)--(graphite_scale,0)
                          --(graphite_scale*(1+cosd(240),sind(240)))
                          --(graphite_scale*(cosd(240),sind(240)))
                          --cycle;
beginfig(11) % unit cell
  pickup pencircle scaled line_width_light;
  draw graphite_unit_cell;
  for i=1 upto 3:
    draw_small_atom(point i of graphite_unit_cell);
  endfor
endfig;


beginfig(12) % one graphite hexagon made of three unit cells
  save cell_path; path cell_path[];
  for j=0 upto 2:
    cell_path[j] = graphite_unit_cell rotated (j*120);
  endfor

  pickup pencircle scaled line_width_light;
  fill cell_path[1] withcolor lightgray; 
  fill cell_path[2] withcolor medgray; 
  for j=0 upto 2:
    draw cell_path[j];
    for i=1 upto 3:
      draw_small_atom(point i of cell_path[j]);
    endfor
  endfor
endfig;





beginfig(13) % diamond; carbon atoms on corners of a cube
  % some parameters; the observer's position 
  save obs_x, obs_y, obs_z, obs_dist; numeric obs_x, obs_y, obs_z, obs_dist;
  obs_x = 10;  obs_y = 8;  obs_z =6;
  obs_dist = obs_x ++ obs_y ++ obs_z;
  
  % 3D stuff
  drawing_scale:=30pt;
  save lpn, origin; lpn:=new_vect; origin:=new_vect;
  vect_def(lpn,0,0,0);  vect_def(origin,0,0,0); 
  % Locate the observer and describe where he's looking
  set_point(Obs,obs_x,obs_y,obs_z);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);
  project_point(0,origin);

  % now locate atoms on the three faces.
  save top_fl, top_fr, top_br, top_bl,  % top of cube
       bot_fl, bot_fr, bot_br, bot_bl;
  top_fl:=new_vect; top_fr:=new_vect; top_br:=new_vect; top_bl:=new_vect;  
    bot_fl:=new_vect; bot_fr:=new_vect; bot_br:=new_vect; bot_bl:=new_vect;  
  save cube_size; cube_size=3; % in 3D units
  vect_def(top_fl,1cube_size,0cube_size,1cube_size);
  vect_def(top_fr,1cube_size,1cube_size,1cube_size);
  vect_def(top_br,0cube_size,1cube_size,1cube_size);
  vect_def(top_bl,0cube_size,0cube_size,1cube_size);
  vect_def(bot_fl,1cube_size,0cube_size,0cube_size);
  vect_def(bot_fr,1cube_size,1cube_size,0cube_size);
  vect_def(bot_br,0cube_size,1cube_size,0cube_size);
  vect_def(bot_bl,0cube_size,0cube_size,0cube_size);
  project_point(10,top_fl);  
    project_point(11,top_fr);  
    project_point(12,top_br);  
    project_point(13,top_bl);  
  project_point(20,bot_fl);  
   project_point(21,bot_fr);  
   project_point(22,bot_br);  
   project_point(23,bot_bl);  
  free_vect(bot_bl);  free_vect(bot_br);
    free_vect(bot_fr);  free_vect(bot_fl);
  free_vect(top_bl);  free_vect(top_br);
    free_vect(top_fr);  free_vect(top_fl);

  pickup pencircle scaled line_width_light;
  
  % give a skeletal outline of the cube
  draw z10--z11--z12--z13--cycle; % outline top
  draw z20--z21--z22--z23--cycle;  %  outline bottom
  draw z10--z20;   % front left
  draw z11--z21;   % front right
  draw z12--z22;   % back right
  draw z13--z23;   % back left

  % draw the atoms using helping proceedures just above
  draw_small_atoms(10, 11, 12, 13);  % top
  draw_small_atoms(20, 21, 22, 23);  % bot
  
  %
  free_vect(origin);  free_vect(lpn);
endfig;





beginfig(14) % diamond; carbon atoms on face centers of a cube
  % some parameters; the observer's position 
  save obs_x, obs_y, obs_z, obs_dist; numeric obs_x, obs_y, obs_z, obs_dist;
  obs_x = 10;  obs_y = 8;  obs_z =6;
  obs_dist = obs_x ++ obs_y ++ obs_z;
  
  % 3D stuff
  drawing_scale:=30pt;
  save lpn, origin; lpn:=new_vect; origin:=new_vect;
  vect_def(lpn,0,0,0);  vect_def(origin,0,0,0); 
  % Locate the observer and describe where he's looking
  set_point(Obs,obs_x,obs_y,obs_z);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);
  project_point(0,origin);

  % now locate atoms on the three faces.
  save top_fl, top_fr, top_br, top_bl,  % top of cube
       bot_fl, bot_fr, bot_br, bot_bl;
  top_fl:=new_vect; top_fr:=new_vect; top_br:=new_vect; top_bl:=new_vect;  
    bot_fl:=new_vect; bot_fr:=new_vect; bot_br:=new_vect; bot_bl:=new_vect;  
  save cube_size; cube_size=3; % in 3D units
  vect_def(top_fl,1cube_size,0cube_size,1cube_size);
  vect_def(top_fr,1cube_size,1cube_size,1cube_size);
  vect_def(top_br,0cube_size,1cube_size,1cube_size);
  vect_def(top_bl,0cube_size,0cube_size,1cube_size);
  vect_def(bot_fl,1cube_size,0cube_size,0cube_size);
  vect_def(bot_fr,1cube_size,1cube_size,0cube_size);
  vect_def(bot_br,0cube_size,1cube_size,0cube_size);
  vect_def(bot_bl,0cube_size,0cube_size,0cube_size);
  project_point(10,top_fl);  
    project_point(11,top_fr);  
    project_point(12,top_br);  
    project_point(13,top_bl);  
  project_point(20,bot_fl);  
   project_point(21,bot_fr);  
   project_point(22,bot_br);  
   project_point(23,bot_bl);  
  free_vect(bot_bl);  free_vect(bot_br);
    free_vect(bot_fr);  free_vect(bot_fl);
  free_vect(top_bl);  free_vect(top_br);
    free_vect(top_fr);  free_vect(top_fl);

  % face centers
  save mid_t, mid_b, mid_f, mid_r, mid_l, mid_e; % top, bot, front, right, etc.
  mid_t:=new_vect;  mid_b:=new_vect; mid_f:=new_vect;
    mid_r:=new_vect; mid_l:=new_vect; mid_e:=new_vect;
  vect_def(mid_t,.5cube_size,.5cube_size,1cube_size);
  vect_def(mid_b,.5cube_size,.5cube_size,0cube_size);
  vect_def(mid_f,1cube_size,.5cube_size,.5cube_size);
  vect_def(mid_r,.5cube_size,1cube_size,.5cube_size);
  vect_def(mid_l,.5cube_size,0cube_size,.5cube_size);
  vect_def(mid_e,0cube_size,.5cube_size,.5cube_size);
  project_point(30,mid_t);
  project_point(31,mid_b);
  project_point(32,mid_f);
  project_point(33,mid_r);
  project_point(34,mid_l);
  project_point(35,mid_e);
  free_vect(mid_e);  free_vect(mid_l);  free_vect(mid_r);
    free_vect(mid_f);  free_vect(mid_b);  free_vect(mid_t);

  pickup pencircle scaled line_width_light;
  
  % give a skeletal outline of the cube
  draw z10--z11--z12--z13--cycle; % outline top
  draw z20--z21--z22--z23--cycle;  %  outline bottom
  draw z10--z20;   % front left
  draw z11--z21;   % front right
  draw z12--z22;   % back right
  draw z13--z23;   % back left

  % draw the atoms using helping proceedures just above
  draw_small_atoms(30, 31, 32, 33, 34, 35);  
  draw z11--z21;   % front right (patch up a 3D thing)
  for i=10  upto 13:
    drawpoint(z[i]);
  endfor
  for i=20  upto 23:
    drawpoint(z[i]);
  endfor

  %
  free_vect(origin);  free_vect(lpn);
endfig;





beginfig(15) % diamond; carbon atoms interior to a cube
  % some parameters; the observer's position 
  save obs_x, obs_y, obs_z, obs_dist; numeric obs_x, obs_y, obs_z, obs_dist;
  obs_x = 10;  obs_y = 8;  obs_z =6;
  obs_dist = obs_x ++ obs_y ++ obs_z;
  
  % 3D stuff
  drawing_scale:=30pt;
  save lpn, origin; lpn:=new_vect; origin:=new_vect;
  vect_def(lpn,0,0,0);  vect_def(origin,0,0,0); 
  % Locate the observer and describe where he's looking
  set_point(Obs,obs_x,obs_y,obs_z);
  Obs_phi:=90; Obs_dist:=4;
  point_of_view_abs(lpn,Obs_phi);
  project_point(0,origin);

  % now locate atoms on the three faces.
  save top_fl, top_fr, top_br, top_bl,  % top of cube
       bot_fl, bot_fr, bot_br, bot_bl;
  top_fl:=new_vect; top_fr:=new_vect; top_br:=new_vect; top_bl:=new_vect;  
    bot_fl:=new_vect; bot_fr:=new_vect; bot_br:=new_vect; bot_bl:=new_vect;  
  save cube_size; cube_size=3; % in 3D units
  vect_def(top_fl,1cube_size,0cube_size,1cube_size);
  vect_def(top_fr,1cube_size,1cube_size,1cube_size);
  vect_def(top_br,0cube_size,1cube_size,1cube_size);
  vect_def(top_bl,0cube_size,0cube_size,1cube_size);
  vect_def(bot_fl,1cube_size,0cube_size,0cube_size);
  vect_def(bot_fr,1cube_size,1cube_size,0cube_size);
  vect_def(bot_br,0cube_size,1cube_size,0cube_size);
  vect_def(bot_bl,0cube_size,0cube_size,0cube_size);
  project_point(10,top_fl);  
    project_point(11,top_fr);  
    project_point(12,top_br);  
    project_point(13,top_bl);  
  project_point(20,bot_fl);  
   project_point(21,bot_fr);  
   project_point(22,bot_br);  
   project_point(23,bot_bl);  
  free_vect(bot_bl);  free_vect(bot_br);
    free_vect(bot_fr);  free_vect(bot_fl);
  free_vect(top_bl);  free_vect(top_br);
    free_vect(top_fr);  free_vect(top_fl);

  % face centers
  save mid_t, mid_b, mid_f, mid_r, mid_l, mid_e; % top, bot, front, right, etc.
  mid_t:=new_vect;  mid_b:=new_vect; mid_f:=new_vect;
    mid_r:=new_vect; mid_l:=new_vect; mid_e:=new_vect;
  vect_def(mid_t,.5cube_size,.5cube_size,1cube_size);
  vect_def(mid_b,.5cube_size,.5cube_size,0cube_size);
  vect_def(mid_f,1cube_size,.5cube_size,.5cube_size);
  vect_def(mid_r,.5cube_size,1cube_size,.5cube_size);
  vect_def(mid_l,.5cube_size,0cube_size,.5cube_size);
  vect_def(mid_e,0cube_size,.5cube_size,.5cube_size);
  project_point(30,mid_t);
  project_point(31,mid_b);
  project_point(32,mid_f);
  project_point(33,mid_r);
  project_point(34,mid_l);
  project_point(35,mid_e);
  free_vect(mid_e);  free_vect(mid_l);  free_vect(mid_r);
    free_vect(mid_f);  free_vect(mid_b);  free_vect(mid_t);

  save int_tr, int_tl, int_br, int_bl; % top, bot, left, right.
  int_tr:=new_vect;  int_tl:=new_vect;
    int_br:=new_vect; int_bl:=new_vect;
  vect_def(int_tr,.75cube_size,.75cube_size,.75cube_size);
  vect_def(int_tl,.25cube_size,.25cube_size,.75cube_size);
  vect_def(int_br,.25cube_size,.75cube_size,.25cube_size);
  vect_def(int_bl,.75cube_size,.25cube_size,.25cube_size);
  project_point(40,int_tr);
  project_point(41,int_tl);
  project_point(42,int_br);
  project_point(43,int_bl);
  free_vect(int_bl);  free_vect(int_br);  
    free_vect(int_tl);  free_vect(int_tr); 

  pickup pencircle scaled line_width_light;
  
  % give a skeletal outline of the cube
  draw z10--z11--z12--z13--cycle; % outline top
  draw z20--z21--z22--z23--cycle;  %  outline bottom
  draw z10--z20;   % front left
  draw z11--z21;   % front right
  draw z12--z22;   % back right
  draw z13--z23;   % back left

  % draw the atoms using helping proceedures just above
  draw_small_atoms(40, 41, 42, 43);  
  draw z11--z21;   % front right (patch up a 3D thing)
  draw z10--z11--z12;
  for i=10  upto 13:
    drawpoint(z[i]);
  endfor
  for i=20  upto 23:
    drawpoint(z[i]);
  endfor
  for i=30  upto 35:
    drawpoint(z[i]);
  endfor

  %
  free_vect(origin);  free_vect(lpn);
endfig;



beginfig(16)  % basis vectors made from graphite_unit_cell
  pickup pencircle scaled line_width_light;

  draw graphite_unit_cell shifted -(point 3 of graphite_unit_cell)
    withcolor lightgray;
  for i=1 upto 3:
    draw_small_atom(point i of graphite_unit_cell shifted -(point 3 of graphite_unit_cell));
  endfor

  save beta_one, beta_two; path beta_one, beta_two;
  beta_one = (point 0 of graphite_unit_cell)--(point 1 of graphite_unit_cell); 
  beta_two = ((point 3 of graphite_unit_cell)
              --(point 4 of graphite_unit_cell))
	     shifted -(point 3 of graphite_unit_cell); 
  drawarrow beta_one;
  drawarrow beta_two;
endfig;




beginfig(17)  % 0.16 beta_1+4.42 beta_2 in graphite_unit_cell
  pickup pencircle scaled line_width_light;

  draw graphite_unit_cell shifted -(point 3 of graphite_unit_cell)
    withcolor lightgray;
  for i=1 upto 3:
    draw_small_atom(point i of graphite_unit_cell shifted -(point 3 of graphite_unit_cell));
  endfor

  save beta_one, beta_two; path beta_one, beta_two;
  beta_one = (point 0 of graphite_unit_cell)--(point 1 of graphite_unit_cell); 
  beta_two = ((point 3 of graphite_unit_cell)
              --(point 4 of graphite_unit_cell))
	     shifted -(point 3 of graphite_unit_cell); 
  drawarrow beta_one withcolor lightgray;
  drawarrow beta_two withcolor lightgray;

  save p; path p[];
  p1 = beta_one shifted -(point 0 of beta_one);
  p2 = beta_two shifted -(point 0 of beta_two);
  p3 = (point 0 of p1)--(0.16(point 1 of p1));
  p4 = (point 0 of p2)--(4.42(point 1 of p2));
  p5 = p3 shifted (point 0 of beta_one);
  p6 = p4 shifted (point 0 of beta_two);
  
  draw p5; draw p5 shifted (point 1 of p6);
  draw p6; draw p6 shifted (point 1 of p5);
  z10 = (point 1 of p5) shifted (point 1 of p6);
  drawpoint(z10);
endfig;





beginfig(18)  % 0.16 beta_1+4.42 beta_2 in graphite plane
  save cell_path; path cell_path[]; % one-third of a graphite ring
  for j=0 upto 2:
    cell_path[j] = graphite_unit_cell rotated (j*-120);
  endfor

  save atom; pair atom[]; % rotate it to three positions to make a whole ring
  for j=0 upto 2:
    for i=1 upto 2:
      atom[2*j+i-1] = point i of cell_path[j];
    endfor
  endfor
  save graphite_path; path graphite_path;
  graphite_path=atom[0]--atom[1]--atom[2]--atom[3]--atom[4]--atom[5]--cycle;

  % draw plane of graphite rings
  save num_cols, num_rows; numeric num_cols, num_rows;
  num_cols = 3; num_rows = 2;

  pickup pencircle scaled line_width_light;  
  for row_index=0 upto (num_rows-1):  % draw rows in pairs, upper shifted half
    for col_index=0 upto (num_cols-1):
      draw graphite_path 
        shifted (graphite_scale*(3*col_index,sqrt(3)*row_index));
      for i = 0 upto 5:
	draw_small_atom(atom[i] shifted (graphite_scale*(3*col_index,sqrt(3)*row_index)));
      endfor
      draw graphite_path
        shifted (graphite_scale*(1.5+3*col_index,sqrt(3)*(row_index+.5)));
      for i = 0 upto 5:
	draw_small_atom(atom[i] shifted (graphite_scale*(1.5+3*col_index,sqrt(3)*(row_index+.5))));
      endfor
    endfor
  endfor

  % the basis for the iriginal third of a single ring
  save beta_one, beta_two; path beta_one, beta_two;
  beta_one = (point 3 of cell_path[0])--(point 2 of cell_path[0]); 
  beta_two = (point 3 of cell_path[0])--(point 4 of cell_path[0]);
  %drawarrow beta_one withcolor lightgray;
  %drawarrow beta_two withcolor lightgray;

  % add the parallelogram.
  save p; path p[];
  p1 = beta_one shifted -(point 0 of beta_one); % now starts at the origin
  p2 = beta_two shifted -(point 0 of beta_two);
  p3 = (point 0 of p1)--(0.16(point infinity of p1)); % now 0.16 as long
  p4 = (point 0 of p2)--(4.42(point infinity of p2));
  p5 = p3 shifted (point 0 of beta_one); % now back to start of beta_one
  p6 = p4 shifted (point 0 of beta_two);
  
  draw p5; draw p3 shifted (point infinity of p6);
  draw p6; draw p4 shifted (point infinity of p5);
  z10 = (point 0 of p5)
         shifted (point infinity of p3)
	 shifted (point infinity of p4);
  drawpoint(z10);
endfig;


% ===========Topic: voting next===========================

ahangle:=40;
input arrow
ahsimpleangle := 15;
ahsimplelength := 2.5pt;
ahsimplewidth := 1pt; % if <= 0, is set from prior two

%input jh3d
beginfig(19)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  save d, r, t;
  boxit.d(btex\strut{\small Democrat} etex);  
  boxit.r(btex\strut{\small Republican} etex);  
  boxit.t(btex\strut{\small Third} etex);  

  path basic_circle, arc[];
  basic_circle = fullcircle scaled 4u;
  z0 = (1,0) scaled 2u rotated 90;  % democrat will go here
  z1 = (1,0) scaled 2u rotated 210; % third 
  z2 = (1,0) scaled 2u rotated 330; % republican
  d.c=z0;
  r.c=z2;
  t.c=z1;
  %draw basic_circle;
  %draw (0,0)--2z0;
  pair e[]; path p[];
  e0 = ((0,0)--2z0) intersectiontimes basic_circle;
  e1 = ((0,0)--2z1) intersectiontimes basic_circle;
  e2 = ((0,0)--2z2) intersectiontimes basic_circle; 
    e3 = ((0,0)--2z0) intersectiontimes (basic_circle rotated 180);
  p0 = subpath (ypart(e0),ypart(e1)) of basic_circle;
  p1 = subpath (ypart(e1),ypart(e2)) of basic_circle;
  % the r -> d is different case because it passes through time 0
  % for the circle.
  p2 = subpath (ypart(e2),ypart(e0)+length basic_circle) of basic_circle;

  z3 = cutasimple(d,t) p0;
    label.ulft(btex {\scriptsize 7 voters} etex,z3);
  z4 = cutasimple(t,r) p1;
    label.bot(btex {\scriptsize 1 voter} etex,z4);
  z5 = cutasimple(r,d) p2;
    label.urt(btex {\scriptsize 5 voters} etex,z5);
  draw pic d;
  draw pic r;
  draw pic t;
endfig;




beginfig(20)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;

  boxit.d(btex{\tiny \textit{D}} etex);  
  boxit.r(btex{\tiny \textit{R}} etex);  
  boxit.t(btex{\tiny \textit{T}} etex);  

  path basic_circle, arc[];
  basic_circle = fullcircle scaled 2u;
  z0 = (1,0) scaled u rotated 90;  % democrat will go here
  z1 = (1,0) scaled u rotated 210; % third 
  z2 = (1,0) scaled u rotated 330; % republican
  d.c=z0;
  r.c=z2;
  t.c=z1;
  %draw basic_circle;
  %draw (0,0)--2z0;
  pair e[]; path p[];
  e0 = ((0,0)--2z0) intersectiontimes basic_circle;
  e1 = ((0,0)--2z1) intersectiontimes basic_circle;
  e2 = ((0,0)--2z2) intersectiontimes basic_circle; 
    e3 = ((0,0)--2z0) intersectiontimes (basic_circle rotated 180);
  p0 = subpath (ypart(e0),ypart(e1)) of basic_circle;
  p1 = subpath (ypart(e1),ypart(e2)) of basic_circle;
  % the r -> d is different case because it passes through time 0
  % for the circle.
  p2 = subpath (ypart(e2),ypart(e0)+length basic_circle) of basic_circle;

  z3 = cutasimple(d,t) p0;
  z4 = cutasimple(t,r) p1;
  z5 = cutasimple(r,d) p2;

  draw pic d;
  draw pic r;
  draw pic t;
endfig;


beginfig(21)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.14in; v:=u; w:=v;


  for x=45, 30, 15, 5:
    z[x] = (10, x);
    ahsimpleangle := x;
    drawarrowsimple (0,0)..z[x];
  endfor
endfig;



% ================= Topic: dimen ===========

% arc of a circle, with included angle
beginfig(22) 
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  numeric r; r = 2u; % radius
  
  path p[];
  p1 = fullcircle scaled 2r rotated 90; % rotate for getting p7
  p2 = (0,0)--(r,0);
  p3 = p2 rotated 50;

  pair t[];
  t2 = p1 intersectiontimes p2;
  t3 = p1 intersectiontimes p3;
  % next where the circle p1 intersects a small circle at each end of the arc 
  p4 = halfcircle scaled .5u;
  p5 = p4 rotated 180shifted (point 1 of p2); % (lower half) circ at end of arc
  p6 = p4 shifted (point 1 of p3); % other end 
  t5 = p1 intersectiontimes p5;
  t6 = p1 intersectiontimes p6;
  p7 = subpath (xpart(t5),xpart(t6)) of p1; % path surrounding arc

  % OK, ready to draw
  pickup pencircle scaled line_width_light;
  draw p7 withcolor lightgray;
  draw subpath (xpart(t2),xpart(t3)) of p1; %arc
  draw p2;
  draw p3;

  label.bot(btex {\scriptsize $r$} etex, .45[(point 0 of p2),(point 1 of p2)]);
%  label(btex {\tiny $\theta$} etex, .5[.65[(point 0 of p2),(point 1 of p2)],.65[(point 0 of p3),(point 1 of p3)]]);
  label.urt(btex {\scriptsize arc} etex, point .5[xpart(t2),xpart(t3)] of p1);
endfig;


% pendulum sketch
beginfig(23)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  
  % rectangle on top
  %   z1          z3
  %   z2          z4
  x1=x2; x3=x4; -x1=x3;
  y1=y3=y2+.3v; y2=y4;
  z2=(-1.5w,1.5v);
  fill z1--z2--z4--z3--cycle withcolor shading_color;
  draw z2--z4;
  %pendulum
  -y2=y0; x0=-1w;
  draw z0--(.5[z2,z4]);
  path p[];
  p1 = fullcircle scaled .625u shifted z0;
  fill p1 withcolor shading_color;
  draw p1;
endfig;


% bodies in space held by gravity
beginfig(24)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;

  % radii
  numeric r[];
  r1=.7u; r2=1.5u;
  % points of reference
  % z1 = center of sphere 1
  % z2 = center of sphere 2
  (-4.5w,-1.5v) = z1-(r1,r1) = -z2-(r2,r2);

  % to draw equator
  transform T;
  T = identity yscaled .2 rotated angle(z2-z1); 

  path p[];
  p0 = fullcircle scaled r1;
  p3 = fullcircle scaled r2;

  p9 = z1--z2;
  % draw dotted line connecting them (leave them a little white space)
  pair t[];
  t0 = p9 intersectiontimes ((p0 scaled 1.2) shifted z1);
  t3 = p9 intersectiontimes ((p3 scaled 1.2) shifted z2);
  draw (subpath (xpart(t0),xpart(t3)) of p9) dashed withdots scaled .6;

  p1 = p0 shifted z1;
  fill p1 withcolor shading_color;
  draw subpath (4,8) of ((p0 transformed T) shifted z1); % planet equator
  draw p1;
  p2 = p3 shifted z2;
  fill p2 withcolor shading_color;
  draw subpath (4,8) of ((p3 transformed T) shifted z2); % sun equator
  draw p2;
endfig;

end













end





