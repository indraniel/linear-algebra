% CH4.mp
%  MetaPost input file with chapter four pictures.
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



%========================CRAMER'S RULE=======================

%   Parallelogram picture
beginfig(1);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  pickup pencircle scaled line_width_light; %inside parallegram
  draw z0--z1--(z1+z2)--z2--cycle;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);

  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
    label.lrt(btex {\tiny $x_2\cdot\colvec{2 \\ 1}$}  etex,z4);
  label.lft(btex {\tiny $\colvec{1 \\ 3}$}  etex,z2); 
    label.lft(btex {\tiny $x_1\cdot\colvec{1 \\ 3}$}  etex,z5); 
  label.rt(btex {\tiny $\colvec{6 \\ 8}$} etex,z3);
endfig;



%   Parallelogram picture with shaded box
beginfig(2);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z1--(z1+z2)--z2--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.lft(btex {\tiny $\colvec{1 \\ 3}$}  etex,z2); 
  %label.rt(btex {\tiny $\colvec{6 \\ 8}=x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;



%   Parallelogram picture with shaded box dilated by x
beginfig(3);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z5--(z1+z5)--z1--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.lft(btex {\tiny $x_1\cdot\colvec{1 \\ 3}$}  etex,z5); 
  %label.rt(btex {\tiny $x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;



%   Parallelogram picture with shaded box dilated by x and shifted by y
beginfig(4);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z3--(z3+z1)--z1--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  pickup pencircle scaled line_width_light; % far edge shown inside shaded
  z6=whatever[z4,z3]=whatever[z1,z3+z1];
  draw z6--z3 withcolor medgray;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.ulft(btex {\tiny $\colvec{6 \\ 8}$}  etex,z3); 
  %label.rt(btex {\tiny $x\cdot\colvec{1 \\ 3}+y\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;



%============= TOPIC: projective plane ============================
%
%
beginfig(5) %  introductory central projection
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,4,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,4,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  % where to locate cneter of middle figure, and right-hand figure
  save rt_mid, mid_mid, left_mid;  numeric rt_mid, mid_mid, left_mid; 
    rt_mid = 15;  mid_mid = .7rt_mid;  left_mid = 0;

  % draw the line to be projected to the plane, in the middle
  save l_back, l_front; % two ends of line
  l_back:=new_vect; l_front:=new_vect;
  vect_def(l_back,-2,mid_mid,-.5); vect_def(l_front,3,mid_mid,.25*3);
  project_point(80,l_back); project_point(81,l_front);
  free_vect(l_front); free_vect(l_back);
  save fig_mid; path fig_mid;
  fig_mid = z80--z81;
  pickup pencircle scaled line_width_light;
  draw fig_mid;

  % show the plane on the right in proportion
  save p_ufront, p_lfront, p_lback, p_uback; % four corners of plane
  p_ufront:=new_vect; p_lfront:=new_vect; p_lback:=new_vect; p_uback:=new_vect;
  vect_def(p_ufront,3,rt_mid,2);  vect_def(p_lfront,3,rt_mid,-2);
    vect_def(p_lback,-3,rt_mid,-2);  vect_def(p_uback,-3,rt_mid,2); 
  project_point(91,p_ufront);  project_point(92,p_lfront);
    project_point(93,p_lback);  project_point(94,p_uback);
  free_vect(p_uback); free_vect(p_lback);
    free_vect(p_lfront); free_vect(p_ufront);
  save fig_rt; path fig_rt;
  fig_rt = z91--z92--z93--z94--cycle;
  pickup pencircle scaled line_width_light;
  draw fig_rt;

  % points on line and plane (pts a, b, c)
  save mid_pta, mid_ptb, mid_ptc, rt_pta, rt_ptb, rt_ptc; 
  mid_pta:=new_vect; mid_ptb:=new_vect; mid_ptc:=new_vect;
    rt_pta:=new_vect; rt_ptb:=new_vect; rt_ptc:=new_vect;
  vect_def(mid_pta,0,mid_mid,0); vect_def(mid_ptb,1,mid_mid,.25*1);
    vect_def(mid_ptc,2,mid_mid,.25*2);
  vect_def(rt_pta,0,rt_mid,0); vect_def(rt_ptb,.5,rt_mid,.25*.5);
    vect_def(rt_ptc,1,rt_mid,.25);
  project_point(70,mid_pta); project_point(71,mid_ptb);
    project_point(72,mid_ptc);
  project_point(73,rt_pta); project_point(74,rt_ptb);
    project_point(75,rt_ptc); 
  free_vect(rt_ptc); free_vect(rt_ptb); free_vect(rt_pta);
   free_vect(mid_ptc); free_vect(mid_ptb); free_vect(mid_pta);

  % make line on plane with similar triangles
  save proportion; numeric proportion;
  proportion = length(z73-(0,0))/length(z70-(0,0));
  z76 = proportion[(0,0),z71];
  z77 = proportion[(0,0),z72];
  pickup pencircle scaled line_width_light;
  draw (1.8[z77,z73])--(1.3[z73,z77]);
  draw (0,0)--z73 withcolor lightgray;
    drawpoint(z70); drawpoint(z73);
    label.top(btex {\tiny $A$} etex,z73);
  draw (0,0)--z76 withcolor lightgray;
    drawpoint(z71); drawpoint(z76);
    label.top(btex {\tiny $B$} etex,z76);
  draw (0,0)--z77 withcolor lightgray;
    drawpoint(z72); drawpoint(z77);
    label.top(btex {\tiny $C$} etex,z77);
  
  save stickfig_hgt; numeric stickfig_hgt; stickfig_hgt = 1.5u;
  pickup pencircle scaled line_width_light;
  drawstickfigure(stickfig_hgt) shifted (left_mid,-.9stickfig_hgt);
  %
  free_vect(lpn);
endfig;






beginfig(6) % projection from source to image; by a movie projector
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v; % was .2in
  drawing_scale:=25pt;   % was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,4,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,4,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  % where to locate cneter of middle figure, and right-hand figure
  save rt_mid, mid_mid, left_mid;  numeric rt_mid, mid_mid, left_mid; 
    rt_mid = 15;  mid_mid = .7rt_mid;  left_mid = 0;

  % draw the line to be projected, in the middle
  % in contrast to the prior picture, it now forms part of the Source plane
  save s_ufront, s_lfront, s_lback, s_uback; % four corners of plane
  s_ufront:=new_vect; s_lfront:=new_vect; s_lback:=new_vect; s_uback:=new_vect;
  vect_def(s_ufront,2.5,mid_mid,2);  vect_def(s_lfront,2.5,mid_mid,-2);
    vect_def(s_lback,-2.5,mid_mid,-2);  vect_def(s_uback,-2.5,mid_mid,2); 
  project_point(85,s_ufront);  project_point(86,s_lfront);
    project_point(87,s_lback);  project_point(88,s_uback);
  free_vect(s_uback); free_vect(s_lback);
    free_vect(s_lfront); free_vect(s_ufront);
  save src_plane; path src_plane;
  src_plane = z85--z86--z87--z88--cycle;
  pickup pencircle scaled line_width_light;
  draw src_plane;
  save l_back, l_front; % two ends of line
  l_back:=new_vect; l_front:=new_vect;
  vect_def(l_back,-2,mid_mid,-.5); vect_def(l_front,2,mid_mid,.25*2);
  project_point(80,l_back); project_point(81,l_front);
  free_vect(l_front); free_vect(l_back);
  save fig_mid; path fig_mid;
  fig_mid = z80--z81;
  pickup pencircle scaled line_width_light;
  draw fig_mid;

  % show the plane on the right in proportion
  save p_ufront, p_lfront, p_lback, p_uback; % four corners of plane
  p_ufront:=new_vect; p_lfront:=new_vect; p_lback:=new_vect; p_uback:=new_vect;
  vect_def(p_ufront,3,rt_mid,2);  vect_def(p_lfront,3,rt_mid,-2);
    vect_def(p_lback,-3,rt_mid,-2);  vect_def(p_uback,-3,rt_mid,2); 
  project_point(91,p_ufront);  project_point(92,p_lfront);
    project_point(93,p_lback);  project_point(94,p_uback);
  free_vect(p_uback); free_vect(p_lback);
    free_vect(p_lfront); free_vect(p_ufront);
  save fig_rt; path fig_rt;
  fig_rt = z91--z92--z93--z94--cycle;
  pickup pencircle scaled line_width_light;
  draw fig_rt;

  % points on line and plane (pts a, b, c)
  save mid_pta, mid_ptb, mid_ptc, rt_pta, rt_ptb, rt_ptc; 
  mid_pta:=new_vect; mid_ptb:=new_vect; mid_ptc:=new_vect;
    rt_pta:=new_vect; rt_ptb:=new_vect; rt_ptc:=new_vect;
  vect_def(mid_pta,0,mid_mid,0); vect_def(mid_ptb,1,mid_mid,.25*1);
    vect_def(mid_ptc,2,mid_mid,.25*2);
  vect_def(rt_pta,0,rt_mid,0); vect_def(rt_ptb,.5,rt_mid,.25*.5);
    vect_def(rt_ptc,1,rt_mid,.25);
  project_point(70,mid_pta); project_point(71,mid_ptb);
    project_point(72,mid_ptc);
  project_point(73,rt_pta); project_point(74,rt_ptb);
    project_point(75,rt_ptc); 
  free_vect(rt_ptc); free_vect(rt_ptb); free_vect(rt_pta);
   free_vect(mid_ptc); free_vect(mid_ptb); free_vect(mid_pta);

  % make line on plane with similar triangles
  save proportion; numeric proportion;
  proportion = length(z73-(0,0))/length(z70-(0,0));
  z76 = proportion[(0,0),z71];
  z77 = proportion[(0,0),z72];
  pickup pencircle scaled line_width_light;
  draw (1.8[z77,z73])--(1.3[z73,z77]);
  drawpoint(z70); drawpoint(z73);
  
  % make the movie projector
  save proj_width, proj_hgt; numeric proj_width, proj_hgt;
  proj_width = w; proj_hgt = 1.5v;
  save reel; path reel; reel = fullcircle scaled .85proj_hgt;
  save projector; path projector;
  projector = (.3w,.2v)--(0w,.1v)--(0w,.5proj_hgt)--(-proj_width,.5proj_hgt)
                --(-proj_width,-.5proj_hgt)--(0w,-.5proj_hgt)
		--(0w,-.1v)--(.3w,-.2v);
  pickup pencircle scaled line_width_light;
  draw projector;
  draw reel shifted (-1.2proj_width,.55proj_hgt);
  draw reel shifted (-1.2proj_width,-.55proj_hgt);
  save number_beams; numeric number_beams; number_beams = 7;
  for i = 1 upto number_beams:
    draw ((.5w,0v)--(1.5w+uniformdeviate .35w,0v)) rotated (((i-1)/(number_beams-1))[-25,25]) withcolor lightgray;
  endfor  

  % labels
  x10 = 0w; y92-y10 = 10pt;
  label(btex {\small \textit{projector $P$}} etex,z10);
  x11 = .5[x85,x87]; y11 = y10;
  label(btex {\small \textit{source $S$}} etex,z11);
  x12 = .5[x91,x93]; y12 = y10;
  label(btex {\small \textit{image $I$}} etex,z12);

  %
  free_vect(lpn);
endfig;





beginfig(7) % projection from P->I->S; by an artist
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v; %was .2
  drawing_scale:=25pt;  %was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,4,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,4,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  % where to locate cneter of middle figure, and right-hand figure
  save rt_mid, mid_mid, left_mid;  numeric rt_mid, mid_mid, left_mid; 
    rt_mid = 15;  mid_mid = .7rt_mid;  left_mid = 0;

  % draw the line to be projected, in the middle
  % in contrast to the prior picture, it now forms part of the Source plane
  save s_ufront, s_lfront, s_lback, s_uback; % four corners of plane
  s_ufront:=new_vect; s_lfront:=new_vect; s_lback:=new_vect; s_uback:=new_vect;
  vect_def(s_ufront,2.5,mid_mid,2);  vect_def(s_lfront,2.5,mid_mid,-2);
    vect_def(s_lback,-2.5,mid_mid,-2);  vect_def(s_uback,-2.5,mid_mid,2); 
  project_point(85,s_ufront);  project_point(86,s_lfront);
    project_point(87,s_lback);  project_point(88,s_uback);
  free_vect(s_uback); free_vect(s_lback);
    free_vect(s_lfront); free_vect(s_ufront);
  save src_plane; path src_plane;
  src_plane = z85--z86--z87--z88--cycle;
  pickup pencircle scaled line_width_light;
  draw src_plane;
  save l_back, l_front; % two ends of line
  l_back:=new_vect; l_front:=new_vect;
  vect_def(l_back,-2,mid_mid,-.5); vect_def(l_front,2,mid_mid,.25*2);
  project_point(80,l_back); project_point(81,l_front);
  free_vect(l_front); free_vect(l_back);
  save fig_mid; path fig_mid;
  fig_mid = z80--z81;
  pickup pencircle scaled line_width_light;
  draw fig_mid;

  % show the plane on the right in proportion
  save p_ufront, p_lfront, p_lback, p_uback; % four corners of plane
  p_ufront:=new_vect; p_lfront:=new_vect; p_lback:=new_vect; p_uback:=new_vect;
  vect_def(p_ufront,3,rt_mid,2);  vect_def(p_lfront,3,rt_mid,-2);
    vect_def(p_lback,-3,rt_mid,-2);  vect_def(p_uback,-3,rt_mid,2); 
  project_point(91,p_ufront);  project_point(92,p_lfront);
    project_point(93,p_lback);  project_point(94,p_uback);
  free_vect(p_uback); free_vect(p_lback);
    free_vect(p_lfront); free_vect(p_ufront);
  save fig_rt; path fig_rt;
  fig_rt = z91--z92--z93--z94--cycle;
  pickup pencircle scaled line_width_light;
  draw fig_rt;

  % points on line and plane (pts a, b, c)
  save mid_pta, mid_ptb, mid_ptc, rt_pta, rt_ptb, rt_ptc; 
  mid_pta:=new_vect; mid_ptb:=new_vect; mid_ptc:=new_vect;
    rt_pta:=new_vect; rt_ptb:=new_vect; rt_ptc:=new_vect;
  vect_def(mid_pta,0,mid_mid,0); vect_def(mid_ptb,1,mid_mid,.25*1);
    vect_def(mid_ptc,2,mid_mid,.25*2);
  vect_def(rt_pta,0,rt_mid,0); vect_def(rt_ptb,.5,rt_mid,.25*.5);
    vect_def(rt_ptc,1,rt_mid,.25);
  project_point(70,mid_pta); project_point(71,mid_ptb);
    project_point(72,mid_ptc);
  project_point(73,rt_pta); project_point(74,rt_ptb);
    project_point(75,rt_ptc); 
  free_vect(rt_ptc); free_vect(rt_ptb); free_vect(rt_pta);
   free_vect(mid_ptc); free_vect(mid_ptb); free_vect(mid_pta);

  % make line on plane with similar triangles
  save proportion; numeric proportion;
  proportion = length(z73-(0,0))/length(z70-(0,0));
  z76 = proportion[(0,0),z71];
  z77 = proportion[(0,0),z72];
  pickup pencircle scaled line_width_light;
  draw (1.8[z77,z73])--(1.3[z73,z77]);
  drawpoint(z70); drawpoint(z73);

  % little painter person
  save stickfig_hgt; numeric stickfig_hgt; stickfig_hgt = 1.5u;
  pickup pencircle scaled line_width_light;
  drawstickfigure(stickfig_hgt) shifted (left_mid,-.9stickfig_hgt);
  % beret
  pickup pencircle scaled line_width_light;
  save beret; path beret; beret=fullcircle scaled .2u xscaled 1.65 rotated 20;
  fill beret shifted (-.05w,.06v); draw beret shifted (-.05w,.06v);
  drawpoint((-0.05w-.03w,.06v+.2u-.09v));
  % paintbrush
  pickup pencircle xscaled .9line_width_dark yscaled line_width_light;
  draw (.4w,-.6v)--(.45v,-.25v);
  
  % labels
  x10 = 0w; y92-y10 = 10pt;
  label(btex {\small \textit{painter $P$}} etex,z10);
  x11 = .5[x85,x87]; y11 = y10;
  label(btex {\small \textit{image $I$}} etex,z11);
  x12 = .5[x91,x93]; y12 = y10;
  label(btex {\small \textit{source $S$}} etex,z12);

  %
  free_vect(lpn);
endfig;








beginfig(8) % projection from source to pinhole to image; by eclipse
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v; %was .2in
  drawing_scale:=25pt;  %was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,4,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,15,4,6);
  Obs_phi:=90; Obs_dist:=10;
  point_of_view_abs(lpn,Obs_phi);

  % where to locate cneter of middle figure, and right-hand figure
  save rt_mid, mid_mid, left_mid;  numeric rt_mid, mid_mid, left_mid; 
    rt_mid = 15;  mid_mid = .7rt_mid;  left_mid = 0;

  % draw the line to be projected, in the middle
  % in contrast to the prior picture, it now forms part of the Source plane
  save s_ufront, s_lfront, s_lback, s_uback; % four corners of plane
  s_ufront:=new_vect; s_lfront:=new_vect; s_lback:=new_vect; s_uback:=new_vect;
  vect_def(s_ufront,2.5,mid_mid,2);  vect_def(s_lfront,2.5,mid_mid,-2);
    vect_def(s_lback,-2.5,mid_mid,-2);  vect_def(s_uback,-2.5,mid_mid,2); 
  project_point(85,s_ufront);  project_point(86,s_lfront);
    project_point(87,s_lback);  project_point(88,s_uback);
  free_vect(s_uback); free_vect(s_lback);
    free_vect(s_lfront); free_vect(s_ufront);
  save src_plane; path src_plane;
  src_plane = z85--z86--z87--z88--cycle;
  pickup pencircle scaled line_width_light;
  draw src_plane;
  save l_back, l_front; % two ends of line
  l_back:=new_vect; l_front:=new_vect;
  vect_def(l_back,-2,mid_mid,-.5); vect_def(l_front,2,mid_mid,.25*2);
  project_point(80,l_back); project_point(81,l_front);
  free_vect(l_front); free_vect(l_back);
  save fig_mid; path fig_mid;
  fig_mid = z80--z81;
  pickup pencircle scaled line_width_light;
  %draw fig_mid;

  % show the plane on the right in proportion
  save p_ufront, p_lfront, p_lback, p_uback; % four corners of plane
  p_ufront:=new_vect; p_lfront:=new_vect; p_lback:=new_vect; p_uback:=new_vect;
  vect_def(p_ufront,3,rt_mid,2);  vect_def(p_lfront,3,rt_mid,-2);
    vect_def(p_lback,-3,rt_mid,-2);  vect_def(p_uback,-3,rt_mid,2); 
  project_point(91,p_ufront);  project_point(92,p_lfront);
    project_point(93,p_lback);  project_point(94,p_uback);
  free_vect(p_uback); free_vect(p_lback);
    free_vect(p_lfront); free_vect(p_ufront);
  save fig_rt; path fig_rt;
  fig_rt = z91--z92--z93--z94--cycle;
  pickup pencircle scaled line_width_light;
  draw fig_rt;

  % points on line and plane (pts a, b, c)
  save mid_pta, mid_ptb, mid_ptc, rt_pta, rt_ptb, rt_ptc; 
  mid_pta:=new_vect; mid_ptb:=new_vect; mid_ptc:=new_vect;
    rt_pta:=new_vect; rt_ptb:=new_vect; rt_ptc:=new_vect;
  vect_def(mid_pta,0,mid_mid,0); vect_def(mid_ptb,1,mid_mid,.25*1);
    vect_def(mid_ptc,2,mid_mid,.25*2);
  vect_def(rt_pta,0,rt_mid,0); vect_def(rt_ptb,.5,rt_mid,.25*.5);
    vect_def(rt_ptc,1,rt_mid,.25);
  project_point(70,mid_pta); project_point(71,mid_ptb);
    project_point(72,mid_ptc);
  project_point(73,rt_pta); project_point(74,rt_ptb);
    project_point(75,rt_ptc); 
  free_vect(rt_ptc); free_vect(rt_ptb); free_vect(rt_pta);
   free_vect(mid_ptc); free_vect(mid_ptb); free_vect(mid_pta);

  % make line on plane with similar triangles
  save proportion; numeric proportion;
  proportion = length(z73-(0,0))/length(z70-(0,0));
  z76 = proportion[(0,0),z71];
  z77 = proportion[(0,0),z72];
  pickup pencircle scaled line_width_light;
  %draw (1.8[z77,z73])--(1.3[z73,z77]);
  drawpoint(z70); % drawpoint(z73);

  % sun and moon
  save sunsize; numeric sunsize; sunsize = 1.2u;
  save sun, moon; path sun, moon;
  sun = fullcircle scaled sunsize;
  moon = fullcircle scaled sunsize shifted (.2w,0v);
  draw sun shifted (0,0);
  fill moon withcolor lightgray; draw moon;
  % image
  save sunimagesize; numeric sunimagesize; sunimagesize = .2u;
  save sunimage, moonimage, image; path sunimage, moonimage, image;
  sunimage = fullcircle scaled sunimagesize;
  moonimage = fullcircle scaled sunimagesize shifted (.1w,0v); % reversed
  draw sunimage shifted z73;
  fill moonimage shifted z73 withcolor lightgray; draw moonimage shifted z73;
  
  % labels
  x10 = 0w; y92-y10 = 10pt;
  label(btex {\small \textit{source $S$}} etex,z10);
  x11 = .5[x85,x87]; y11 = y10;
  label(btex {\small \textit{pinhole $P$}} etex,z11);
  x12 = .5[x91,x93]; y12 = y10;
  label(btex {\small \textit{image $I$}} etex,z12);

  %
  free_vect(lpn);
endfig;



%
% In these plane-to-plane projections, I've eliminated perspective
% as confusing.


beginfig(9) % projection with rail tracks on S
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.17in; v:=u; w:=v; % was .2in
  drawing_scale:=25pt;  % was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,8,8,1);
  Obs_phi:=90; Obs_dist:=5;
  point_of_view_abs(lpn,Obs_phi);

  % Source plane at an angle with vertical
  save splane_angle; numeric splane_angle; splane_angle=35;
  save xmin, xmax, ymin, ymax, zmin, zmax;
    numeric xmin, xmax, ymin, ymax, zmin, zmax;
    -xmin=6; xmax=4; -ymin=ymax=1.25;
    zmin=-xmax*sind(splane_angle); zmax=-xmin*sind(splane_angle);  
  save s_lower, s_midb, s_midf, s_upper; % center line of source plane
  s_lower:=new_vect; s_midb:=new_vect; s_midf:=new_vect; s_upper:=new_vect; 
  vect_def(s_lower,xmin,0,zmax);  vect_def(s_midb,0,ymin,0);
    vect_def(s_midf,0,ymax,0); vect_def(s_upper,xmax,0,zmin);   
  project_point(80,s_lower);  project_point(81,s_midb);
    project_point(82,s_midf);  project_point(83,s_upper);
  free_vect(s_upper); free_vect(s_midf);
    free_vect(s_midb); free_vect(s_lower);
  z84-z80=z80-z85; z81-z84=z82-z85; % lower end
  z86-z83=z83-z87; z86-z81=z87-z82; % upper end
  save splane_lower, splane_upper; path splane_lower, splane_upper;
  splane_lower = z81--z84--z85--z82; 
  splane_upper = z81--z86--z87--z82; 
  z88=.5[z81,z82];
  % Image plane yz-plane
  save i_upper, i_lower; % center line of image plane
  i_upper:=new_vect; i_lower:=new_vect;
  vect_def(i_upper,0,0,zmax);  vect_def(i_lower,0,0,zmin);
  project_point(90,i_upper);  project_point(91,i_lower);
  free_vect(i_lower); free_vect(i_upper);
  z94-z91=z91-z95; z81-z94=z82-z95; % upper end
  z92-z90=z90-z93; z92-z81=z93-z82; % lower end
  save iplane_lower, iplane_upper; path iplane_lower, iplane_upper;
  iplane_upper = z81--z92--z93--z82; 
  iplane_lower = z81--z94--z95--z82; 
  % projection point
  save proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    numeric proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    proj_pt_x=2; proj_pt_zslant=proj_pt_x*sind(splane_angle);
    proj_pt_zstart=1.5; proj_pt_z=proj_pt_zstart-proj_pt_zslant;
  save proj_point; proj_point:=new_vect;
    vect_def(proj_point,proj_pt_x,0,proj_pt_z); project_point(40,proj_point);
    free_vect(proj_point);
  x41=x40; z41=whatever[z80,z83]; % intersect with S plane below P pt 
  x42=x40; y42=y90-(y88-y41); % top of vert line through P
  x43=x40; y43=y91-(y88-y41); % bot of vert line through P
  x44=x80;         % left of slant line through P
  x45=x88;         % intersect slant line and I plane; vanishing point
  x46=x83;         % right of slant line through P
  z40-z44=z41-z80;
    z45=whatever[z40,z44];
  z46-z45=z83-z88;
    %z45=whatever[z46,z44];
  % The in-plane lines
  save line_space; numeric line_space; line_space=.3;
  z50=line_space[z80,z84]; z51=line_space[z80,z85];
  z52=line_space[z83,z86]; z53=line_space[z83,z87];
  z54=.05[z50,z52]; z55=.95[z50,z52]; % rear (i.e., leftward) of the tracks
  z56=.05[z51,z53]; z57=.95[z51,z53]; % front of the rail tracks
  
  % draw the planes and lines
  pickup pencircle scaled line_width_light;
  fill iplane_lower--cycle withcolor white; draw iplane_lower;
    draw z41--z43 withcolor shading_color; % bot of vert line thru P
    fill splane_lower--cycle withcolor white; draw splane_lower; 
    fill splane_upper--cycle withcolor white; draw splane_upper;
    draw z54--z55; % rail track
    draw z56--z57 dashed evenly scaled .75; % other
    draw z42--z41 withcolor shading_color; % top of vert line thru P
    draw z44--z45 withcolor shading_color; % right of slant line
    fill iplane_upper--cycle withcolor white; draw iplane_upper; 
    draw z45--z46 withcolor shading_color; % left of slant line
    drawpoint(z40); 
  
  % labels
  label.rt(btex {\small $S$} etex,z85);
  label.rt(btex {\small $I$} etex,z95);
  label.ulft(btex {\small $P$} etex,z40);

  %
  free_vect(lpn);
endfig;




beginfig(10) % projection with rail tracks on P->S->I
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.17in; v:=u; w:=v; % was .2in
  drawing_scale:=25pt;  % was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,8,8,1);
  Obs_phi:=90; Obs_dist:=5;
  point_of_view_abs(lpn,Obs_phi);

  % Source plane at an angle with vertical
  save splane_angle; numeric splane_angle; splane_angle=35;
  save xmin, xmax, ymin, ymax, zmin, zmax;
    numeric xmin, xmax, ymin, ymax, zmin, zmax;
    -xmin=6; xmax=4; -ymin=ymax=1.25;
    zmin=-xmax*sind(splane_angle); zmax=-xmin*sind(splane_angle);  
  save s_lower, s_midb, s_midf, s_upper; % center line of source plane
  s_lower:=new_vect; s_midb:=new_vect; s_midf:=new_vect; s_upper:=new_vect; 
  vect_def(s_lower,xmin,0,zmax);  vect_def(s_midb,0,ymin,0);
    vect_def(s_midf,0,ymax,0); vect_def(s_upper,xmax,0,zmin);   
  project_point(80,s_lower);  project_point(81,s_midb);
    project_point(82,s_midf);  project_point(83,s_upper);
  free_vect(s_upper); free_vect(s_midf);
    free_vect(s_midb); free_vect(s_lower);
  z84-z80=z80-z85; z81-z84=z82-z85; % lower end
  z86-z83=z83-z87; z86-z81=z87-z82; % upper end
  save splane_lower, splane_upper; path splane_lower, splane_upper;
  splane_lower = z81--z84--z85--z82; 
  splane_upper = z81--z86--z87--z82; 
  z88=.5[z81,z82];
  % Image plane yz-plane
  save i_upper, i_lower; % center line of image plane
  i_upper:=new_vect; i_lower:=new_vect;
  vect_def(i_upper,0,0,zmax);  vect_def(i_lower,0,0,zmin);
  project_point(90,i_upper);  project_point(91,i_lower);
  free_vect(i_lower); free_vect(i_upper);
  z94-z91=z91-z95; z81-z94=z82-z95; % upper end
  z92-z90=z90-z93; z92-z81=z93-z82; % lower end
  save iplane_lower, iplane_upper; path iplane_lower, iplane_upper;
  iplane_upper = z81--z92--z93--z82; 
  iplane_lower = z81--z94--z95--z82; 
  % projection point
  save proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    numeric proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    proj_pt_x=2; proj_pt_zslant=proj_pt_x*sind(splane_angle);
    proj_pt_zstart=1.5; proj_pt_z=proj_pt_zstart-proj_pt_zslant;
  save proj_point; proj_point:=new_vect;
    vect_def(proj_point,proj_pt_x,0,proj_pt_z); project_point(40,proj_point);
    free_vect(proj_point);
  x41=x40; z41=whatever[z80,z83]; % intersect with S plane below P pt 
  x42=x40; y42=y90-(y88-y41); % top of vert line through P
  x43=x40; y43=y91-(y88-y41); % bot of vert line through P
  x44=x80;         % left of slant line through P
  x45=x88;         % intersect slant line and I plane; vanishing point
  x46=x83;         % right of slant line through P
  z40-z44=z41-z80;
    z45=whatever[z40,z44];
  z46-z45=z83-z88;
    %z45=whatever[z46,z44];
  % The in-plane lines
  save line_space; numeric line_space; line_space=.3;
  z50=line_space[z80,z84]; z51=line_space[z80,z85];
  z52=line_space[z83,z86]; z53=line_space[z83,z87];
  z54=.05[z50,z52]; z55=.95[z50,z52]; % rear (i.e., leftward) of the tracks
  z56=.05[z51,z53]; z57=.95[z51,z53]; % front of the rail tracks

  % these lines need to end next to intersection of vert line thru P
  z20=whatever[z81,z84]; % line from z20 to z21 is cutoff line for tracks
  z21=whatever[z82,z85];
  z21-z20=z85-z84; z41=whatever[z21,z20];
  z22=whatever[z20,z21]=whatever[z54,z55]; % cutoff for solid track
  z23=whatever[z20,z21]=whatever[z56,z57]; % cutoff for dashed track 
  
  % the lines for this picture lie below S
  z10=whatever[z81,z82]=whatever[z54,z55]; % intersect solid track and I plane
    z11=whatever[z45,z10]=whatever[z94,z95]; % crosses bottom of I plane
  z12=whatever[z81,z82]=whatever[z56,z57]; % intersect dashed track and I plane
    z13=whatever[z45,z12]=whatever[z94,z95]; % crosses bottom of I plane
  
  % draw the planes and lines
  pickup pencircle scaled line_width_light;
  fill iplane_lower--cycle withcolor white; draw iplane_lower;
    draw z41--z43 withcolor shading_color; % bot of vert line thru P
    draw z10--z11; % projection of solid track
    draw z12--z13 dashed evenly scaled .75; % projection of dashed track
    fill splane_lower--cycle withcolor white; draw splane_lower; 
    fill splane_upper--cycle withcolor white; draw splane_upper;
    draw z10--z22; % rail track
    draw z12--z23 dashed evenly scaled .75; % other
    draw z42--z41 withcolor shading_color; % top of vert line thru P
    draw z44--z45 withcolor shading_color; % right of slant line
    fill iplane_upper--cycle withcolor white; draw iplane_upper; 
    draw z45--z46 withcolor shading_color; % left of slant line
    drawpoint(z40); 
  
  % labels
  label.rt(btex {\small $S$} etex,z85);
  label.rt(btex {\small $I$} etex,z95);
  label.ulft(btex {\small $P$} etex,z40);

  %
  free_vect(lpn);
endfig;






beginfig(11) % projection with rail tracks S->I->P
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.17in; v:=u; w:=v; % was .2in
  drawing_scale:=25pt;  % was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,8,8,1);
  Obs_phi:=90; Obs_dist:=5;
  point_of_view_abs(lpn,Obs_phi);

  % Source plane at an angle with vertical
  save splane_angle; numeric splane_angle; splane_angle=35;
  save xmin, xmax, ymin, ymax, zmin, zmax;
    numeric xmin, xmax, ymin, ymax, zmin, zmax;
    -xmin=6; xmax=4; -ymin=ymax=1.25;
    zmin=-xmax*sind(splane_angle); zmax=-xmin*sind(splane_angle);  
  save s_lower, s_midb, s_midf, s_upper; % center line of source plane
  s_lower:=new_vect; s_midb:=new_vect; s_midf:=new_vect; s_upper:=new_vect; 
  vect_def(s_lower,xmin,0,zmax);  vect_def(s_midb,0,ymin,0);
    vect_def(s_midf,0,ymax,0); vect_def(s_upper,xmax,0,zmin);   
  project_point(80,s_lower);  project_point(81,s_midb);
    project_point(82,s_midf);  project_point(83,s_upper);
  free_vect(s_upper); free_vect(s_midf);
    free_vect(s_midb); free_vect(s_lower);
  z84-z80=z80-z85; z81-z84=z82-z85; % lower end
  z86-z83=z83-z87; z86-z81=z87-z82; % upper end
  save splane_lower, splane_upper; path splane_lower, splane_upper;
  splane_lower = z81--z84--z85--z82; 
  splane_upper = z81--z86--z87--z82; 
  z88=.5[z81,z82];
  % Image plane yz-plane
  save i_upper, i_lower; % center line of image plane
  i_upper:=new_vect; i_lower:=new_vect;
  vect_def(i_upper,0,0,zmax);  vect_def(i_lower,0,0,zmin);
  project_point(90,i_upper);  project_point(91,i_lower);
  free_vect(i_lower); free_vect(i_upper);
  z94-z91=z91-z95; z81-z94=z82-z95; % upper end
  z92-z90=z90-z93; z92-z81=z93-z82; % lower end
  save iplane_lower, iplane_upper; path iplane_lower, iplane_upper;
  iplane_upper = z81--z92--z93--z82; 
  iplane_lower = z81--z94--z95--z82; 
  % projection point
  save proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    numeric proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    proj_pt_x=2; proj_pt_zslant=proj_pt_x*sind(splane_angle);
    proj_pt_zstart=1.5; proj_pt_z=proj_pt_zstart-proj_pt_zslant;
  save proj_point; proj_point:=new_vect;
    vect_def(proj_point,proj_pt_x,0,proj_pt_z); project_point(40,proj_point);
    free_vect(proj_point);
  x41=x40; z41=whatever[z80,z83]; % intersect with S plane below P pt 
  x42=x40; y42=y90-(y88-y41); % top of vert line through P
  x43=x40; y43=y91-(y88-y41); % bot of vert line through P
  x44=x80;         % left of slant line through P
  x45=x88;         % intersect slant line and I plane; vanishing point
  x46=x83;         % right of slant line through P
  z40-z44=z41-z80;
    z45=whatever[z40,z44];
  z46-z45=z83-z88;
    %z45=whatever[z46,z44];
  % The in-plane lines
  save line_space; numeric line_space; line_space=.3;
  z50=line_space[z80,z84]; z51=line_space[z80,z85];
  z52=line_space[z83,z86]; z53=line_space[z83,z87];
  z54=.05[z50,z52]; z55=.95[z50,z52]; % rear (i.e., leftward) of the tracks
  z56=.05[z51,z53]; z57=.95[z51,z53]; % front of the rail tracks


  % the lines for this picture lie above S and below the vanishing point
  z10=whatever[z81,z82]=whatever[z54,z55]; % intersect solid track and I plane
  z12=whatever[z81,z82]=whatever[z56,z57]; % intersect dashed track and I plane
  
  % draw the planes and lines
  pickup pencircle scaled line_width_light;
  fill iplane_lower--cycle withcolor white; draw iplane_lower;
    draw z41--z43 withcolor shading_color; % bot of vert line thru P
    fill splane_lower--cycle withcolor white; draw splane_lower; 
    fill splane_upper--cycle withcolor white; draw splane_upper;
    draw z54--z10; % rail track
    draw z56--z12 dashed evenly scaled .75; % other
    draw z42--z41 withcolor shading_color; % top of vert line thru P
    draw z44--z45 withcolor shading_color; % right of slant line
    fill iplane_upper--cycle withcolor white; draw iplane_upper; 
    draw z10--z45; % image of solid track
    draw z12--z45 dashed evenly scaled .75; % image of dashed track
    draw z45--z46 withcolor shading_color; % left of slant line
    drawpoint(z40); 
  
  % labels
  label.rt(btex {\small $S$} etex,z85);
  label.rt(btex {\small $I$} etex,z95);
  label.ulft(btex {\small $P$} etex,z40);

  %
  free_vect(lpn);
endfig;







beginfig(12) % projection with rail tracks on S
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v; % was .2in
  drawing_scale:=25pt;  % was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,8,8,1);
  Obs_phi:=90; Obs_dist:=5;
  point_of_view_abs(lpn,Obs_phi);

  % Source plane at an angle with vertical
  save splane_angle; numeric splane_angle; splane_angle=35;
  save xmin, xmax, ymin, ymax, zmin, zmax;
    numeric xmin, xmax, ymin, ymax, zmin, zmax;
    -xmin=6; xmax=4; -ymin=ymax=1.25;
    zmin=-xmax*sind(splane_angle); zmax=-xmin*sind(splane_angle);  
  save s_lower, s_midb, s_midf, s_upper; % center line of source plane
  s_lower:=new_vect; s_midb:=new_vect; s_midf:=new_vect; s_upper:=new_vect; 
  vect_def(s_lower,xmin,0,zmax);  vect_def(s_midb,0,ymin,0);
    vect_def(s_midf,0,ymax,0); vect_def(s_upper,xmax,0,zmin);   
  project_point(80,s_lower);  project_point(81,s_midb);
    project_point(82,s_midf);  project_point(83,s_upper);
  free_vect(s_upper); free_vect(s_midf);
    free_vect(s_midb); free_vect(s_lower);
  z84-z80=z80-z85; z81-z84=z82-z85; % lower end
  z86-z83=z83-z87; z86-z81=z87-z82; % upper end
  save splane_lower, splane_upper; path splane_lower, splane_upper;
  splane_lower = z81--z84--z85--z82; 
  splane_upper = z81--z86--z87--z82; 
  z88=.5[z81,z82];
  % Image plane yz-plane
  save i_upper, i_lower; % center line of image plane
  i_upper:=new_vect; i_lower:=new_vect;
  vect_def(i_upper,0,0,zmax);  vect_def(i_lower,0,0,zmin);
  project_point(90,i_upper);  project_point(91,i_lower);
  free_vect(i_lower); free_vect(i_upper);
  z94-z91=z91-z95; z81-z94=z82-z95; % upper end
  z92-z90=z90-z93; z92-z81=z93-z82; % lower end
  save iplane_lower, iplane_upper; path iplane_lower, iplane_upper;
  iplane_upper = z81--z92--z93--z82; 
  iplane_lower = z81--z94--z95--z82; 
  % projection point
  save proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    numeric proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    proj_pt_x=2; proj_pt_zslant=proj_pt_x*sind(splane_angle);
    proj_pt_zstart=1.5; proj_pt_z=proj_pt_zstart-proj_pt_zslant;
  save proj_point; proj_point:=new_vect;
    vect_def(proj_point,proj_pt_x,0,proj_pt_z); project_point(40,proj_point);
    free_vect(proj_point);
  x41=x40; z41=whatever[z80,z83]; % intersect with S plane below P pt 
  x42=x40; y42=y90-(y88-y41); % top of vert line through P
  x43=x40; y43=y91-(y88-y41); % bot of vert line through P
  x44=x80;         % left of slant line through P
  x45=x88;         % intersect slant line and I plane; vanishing point
  x46=x83;         % right of slant line through P
  z40-z44=z41-z80;
    z45=whatever[z40,z44];
  z46-z45=z83-z88;
    %z45=whatever[z46,z44];
  % The in-plane lines
  save line_space; numeric line_space; line_space=.3;
  z50=line_space[z80,z84]; z51=line_space[z80,z85];
  z52=line_space[z83,z86]; z53=line_space[z83,z87];
  z54=.05[z50,z52]; z55=.95[z50,z52]; % rear (i.e., leftward) of the tracks
  z56=.05[z51,z53]; z57=.95[z51,z53]; % front of the rail tracks
  
  % these tracks need to end next to intersection of vert line thru P
  z20=whatever[z81,z84]; % line from z20 to z21 is cutoff line for tracks
  z21=whatever[z82,z85];
  z21-z20=z85-z84; z41=whatever[z21,z20];
  z22=whatever[z20,z21]=whatever[z54,z55]; % cutoff for solid track
  z23=whatever[z20,z21]=whatever[z56,z57]; % cutoff for dashed track 
  
  % the lines for this picture lie below S
  z10=whatever[z81,z82]=whatever[z54,z55]; % intersect solid track and I plane
    z11=whatever[z45,z10]=whatever[z92,z93]; % crosses top of I plane
  z12=whatever[z81,z82]=whatever[z56,z57]; % intersect dashed track and I plane
    z13=whatever[z45,z12]=whatever[z92,z93]; % crosses top of I plane

  % draw the planes and lines
  pickup pencircle scaled line_width_light;
  fill iplane_lower--cycle withcolor white; draw iplane_lower;
    draw z41--z43 withcolor shading_color; % bot of vert line thru P
    fill splane_lower--cycle withcolor white; draw splane_lower; 
    fill splane_upper--cycle withcolor white; draw splane_upper;
    draw z55--z22; % rail track
    draw z57--z23 dashed evenly scaled .75; % other
    draw z42--z41 withcolor shading_color; % top of vert line thru P
    draw z44--z45 withcolor shading_color; % right of slant line
    fill iplane_upper--cycle withcolor white; draw iplane_upper; 
    draw z45--z11; % image of solid track
    draw z45--z13 dashed evenly scaled .75; % image of dashed track
    draw z45--z46 withcolor shading_color; % left of slant line
    drawpoint(z40); 
  
  % labels
  label.rt(btex {\small $S$} etex,z85);
  label.rt(btex {\small $I$} etex,z95);
  label.ulft(btex {\small $P$} etex,z40);

  %
  free_vect(lpn);
endfig;







beginfig(13) % projection, like with rail tracks, on S, showing infinities
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.18in; v:=u; w:=v; % was .2in
  drawing_scale:=25pt;  % was 30pt
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 

  % Locate the observer and describe where he's looking
  set_point(Obs,8,8,1);
  Obs_phi:=90; Obs_dist:=5;
  point_of_view_abs(lpn,Obs_phi);

  % Source plane at an angle with vertical
  save splane_angle; numeric splane_angle; splane_angle=35;
  save xmin, xmax, ymin, ymax, zmin, zmax;
    numeric xmin, xmax, ymin, ymax, zmin, zmax;
    -xmin=6; xmax=4; -ymin=ymax=1.25;
    zmin=-xmax*sind(splane_angle); zmax=-xmin*sind(splane_angle);  
  save s_lower, s_midb, s_midf, s_upper; % center line of source plane
  s_lower:=new_vect; s_midb:=new_vect; s_midf:=new_vect; s_upper:=new_vect; 
  vect_def(s_lower,xmin,0,zmax);  vect_def(s_midb,0,ymin,0);
    vect_def(s_midf,0,ymax,0); vect_def(s_upper,xmax,0,zmin);   
  project_point(80,s_lower);  project_point(81,s_midb);
    project_point(82,s_midf);  project_point(83,s_upper);
  free_vect(s_upper); free_vect(s_midf);
    free_vect(s_midb); free_vect(s_lower);
  z84-z80=z80-z85; z81-z84=z82-z85; % lower end
  z86-z83=z83-z87; z86-z81=z87-z82; % upper end
  save splane_lower, splane_upper; path splane_lower, splane_upper;
  splane_lower = z81--z84--z85--z82; 
  splane_upper = z81--z86--z87--z82; 
  z88=.5[z81,z82];
  % Image plane yz-plane
  save i_upper, i_lower; % center line of image plane
  i_upper:=new_vect; i_lower:=new_vect;
  vect_def(i_upper,0,0,zmax);  vect_def(i_lower,0,0,zmin);
  project_point(90,i_upper);  project_point(91,i_lower);
  free_vect(i_lower); free_vect(i_upper);
  z94-z91=z91-z95; z81-z94=z82-z95; % upper end
  z92-z90=z90-z93; z92-z81=z93-z82; % lower end
  save iplane_lower, iplane_upper; path iplane_lower, iplane_upper;
  iplane_upper = z81--z92--z93--z82; 
  iplane_lower = z81--z94--z95--z82; 
  % projection point
  save proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    numeric proj_pt_x, proj_pt_z, proj_pt_zstart, proj_pt_zslant;
    proj_pt_x=2; proj_pt_zslant=proj_pt_x*sind(splane_angle);
    proj_pt_zstart=1.5; proj_pt_z=proj_pt_zstart-proj_pt_zslant;
  save proj_point; proj_point:=new_vect;
    vect_def(proj_point,proj_pt_x,0,proj_pt_z); project_point(40,proj_point);
    free_vect(proj_point);
  x41=x40; z41=whatever[z80,z83]; % intersect with S plane below P pt 
  x42=x40; y42=y90-(y88-y41); % top of vert line through P
  x43=x40; y43=y91-(y88-y41); % bot of vert line through P
  x44=x80;         % left of slant line through P
  x45=x88;         % intersect slant line and I plane; vanishing point
  x46=x83;         % right of slant line through P
  z40-z44=z41-z80;
    z45=whatever[z40,z44];
  z46-z45=z83-z88;
    %z45=whatever[z46,z44];
  % The in-plane lines
  save line_space; numeric line_space; line_space=.3;
  z50=line_space[z80,z84]; z51=line_space[z80,z85];
  z52=line_space[z83,z86]; z53=line_space[z83,z87];
  z54=.05[z50,z52]; z55=.95[z50,z52]; % rear (i.e., leftward) of the tracks
  z56=.05[z51,z53]; z57=.95[z51,z53]; % front of the rail tracks
  
  % these tracks need to end next to intersection of vert line thru P
  z20=whatever[z81,z84]; % line from z20 to z21 is cutoff line for tracks
  z21=whatever[z82,z85];
  z21-z20=z85-z84; z41=whatever[z21,z20];
  z22=whatever[z20,z21]=whatever[z54,z55]; % cutoff for solid track
  z23=whatever[z20,z21]=whatever[z56,z57]; % cutoff for dashed track 
  
  % the lines for this picture lie below S
  z10=whatever[z81,z82]=whatever[z54,z55]; % intersect solid track and I plane
    z11=whatever[z45,z10]=whatever[z92,z93]; % crosses top of I plane
  z12=whatever[z81,z82]=whatever[z56,z57]; % intersect dashed track and I plane
    z13=whatever[z45,z12]=whatever[z92,z93]; % crosses top of I plane

  % draw the planes and lines
  pickup pencircle scaled line_width_light;
  fill iplane_lower--cycle withcolor white; draw iplane_lower;
    draw z41--z43 withcolor shading_color; % bot of vert line thru P
    fill splane_lower--cycle withcolor white; draw splane_lower; 
    fill splane_upper--cycle withcolor white; draw splane_upper;
    %draw z55--z22; % rail track
    %draw z57--z23 dashed evenly scaled .75; % other
    draw z42--z41 withcolor shading_color; % top of vert line thru P
    draw z44--z45 withcolor shading_color; % right of slant line
    fill iplane_upper--cycle withcolor white; draw iplane_upper; 
    draw z45--z46 withcolor shading_color; % left of slant line
    drawpoint(z40); 
  pickup pencircle scaled line_width_dark;
  drawdot(z22); drawdot(z23); % sent to infinity
  drawdot(z45); % vanishing point
    
  % labels
  label.rt(btex {\small $S$} etex,z85);
  label.rt(btex {\small $I$} etex,z95);
  label.ulft(btex {\small $P$} etex,z40);

  %
  free_vect(lpn);
endfig;








beginfig(14) % projective plane like a dome
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  % some parameters; the observer's position 
  save obs_x, obs_y, obs_z; numeric obs_x, obs_y, obs_z;
  obs_x = 8;  obs_y = 2;  obs_z = 1;

  % 3D stuff
  drawing_scale:=30pt;
  save lpn; lpn:=new_vect; vect_def(lpn,0,0,0); 
  % Locate the observer and describe where he's looking
  set_point(Obs,obs_x,obs_y,obs_z);
  Obs_phi:=90; Obs_dist:=3;
  point_of_view_abs(lpn,Obs_phi);

  % The dome is a half circle on top of an ellipse.
  % Use 3D package to get radius of circle and axes of ellipse
  save dome_rad; numeric dome_rad; dome_rad = 5.05;
    save dome_scalar; numeric dome_scalar; dome_scalar=dome_rad/(obs_x++obs_y);
  save dome_basef, dome_baser, dome_top, origin;  % front, right, top of dome
  dome_basef:=new_vect; dome_baser:=new_vect;
    dome_top:=new_vect;  origin:=new_vect;
  vect_def(dome_basef,obs_x*dome_scalar,obs_y*dome_scalar,0);
    vect_def(dome_baser,-obs_y*dome_scalar,obs_x*dome_scalar,0);
    vect_def(dome_top,0,0,dome_rad);
    vect_def(origin,0,0,0);
  project_point(90,dome_basef); project_point(91,dome_baser);
    project_point(92,dome_top); project_point(93,origin);
  free_vect(origin); free_vect(dome_top);  free_vect(dome_baser);
    free_vect(dome_basef);
  save dome_base; path dome_base; 
    dome_base = fullcircle yscaled (2*(x90++y90)) xscaled (2*(x91++y91));
  save dome_roof; path dome_roof; 
    dome_roof = halfcircle scaled (2*(x91++y91));
  pickup pencircle scaled line_width_light;
  draw dome_base; draw dome_roof;
  
  % draw axes (with a white border)
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes(2.5,2.5,2.5);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=shading_color;  yaxiscolor:=shading_color; zaxiscolor:=shading_color;
  draw_xyz_axes(2.5,2.5,2.5);

  % line seen edge-on by projector person
  save ell_scalar; numeric ell_scalar; ell_scalar = dome_rad/(1++2++3);
  save ell; ell:=new_vect;
  vect_def(ell,1*ell_scalar,2*ell_scalar,3*ell_scalar);
  project_point(1,ell);
  free_vect(ell);
  save ell_line; path ell_line; ell_line = 1.2[z1,z93]--z1; 
  pickup pencircle scaled 1.5pt; % line_width_dark;
  draw ell_line withcolor white;
  pickup pencircle scaled line_width_light;
  draw ell_line;
  label.rt(btex \makebox[0em][l]{\small
           $\ell=\set{k\cdot\colvec{1 \\ 2 \\ 3} \suchthat k\in\Re}$} etex,z1);
  
  % stick figure
  save person_hgt; numeric person_hgt; person_hgt = .5u;
  pickup pencircle scaled line_width_light;
  drawstickfigure(person_hgt) shifted (x93,y93-.95person_hgt);
  
  %
  free_vect(lpn);
endfig;




beginfig(15);  % antipodal points are one point in projective plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;  % was 10pt

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, equator; path sphere, equator;
    sphere = fullcircle scaled (2*sphere_rad);
    equator = sphere yscaled .4;
  pickup pencircle scaled line_width_light;
  draw equator withcolor shading_color;
  draw sphere;

  save proj_line; path proj_line;
    proj_line = sphere yscaled .3 rotated 35;
    %draw proj_line;

  save line_with_antipodals; path line_with_antipodals;
    line_with_antipodals = ((0w,0v)--(sphere_rad,0v)) rotated 45;
  z1 = line_with_antipodals intersectionpoint proj_line;
  z2 = -z1;
  draw z1--z2 dashed evenly scaled .75;
  drawpoint(z1); drawpoint(z2);
endfig;




beginfig(16);  % projective line with antipodal points in projective plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v; % was 10pt

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, equator; path sphere, equator;
    sphere = fullcircle scaled (2*sphere_rad);
    equator = sphere yscaled .4;
  pickup pencircle scaled line_width_light;
  %draw equator withcolor shading_color;
  draw sphere;

  save proj_line; path proj_line;
    proj_line = sphere yscaled .3 rotated 35;
    draw proj_line;

  save line_with_antipodals; path line_with_antipodals;
    line_with_antipodals = ((0w,0v)--(sphere_rad,0v)) rotated 45;
  z1 = line_with_antipodals intersectionpoint proj_line;
  z2 = -z1;
  draw z1--z2 dashed evenly scaled .75;
  drawpoint(z1); drawpoint(z2);
endfig;






beginfig(17);  % two projective lines with intersect point in projective plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v; % was 10pt

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, equator; path sphere, equator;
    sphere = fullcircle scaled (2*sphere_rad);
    equator = sphere yscaled .4;
  pickup pencircle scaled line_width_light;
  draw equator;
  draw sphere;

  save proj_line; path proj_line;
    proj_line = sphere yscaled .3 rotated 35;
    draw proj_line;

  z1 = proj_line intersectionpoint equator;
  z2 = -z1;
  draw z1--z2 dashed evenly scaled .75;
  drawpoint(z1); drawpoint(z2);
endfig;








beginfig(18);  % correspondence: projective plane <--> z=1
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v; % was 10pt

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, equator; path sphere, equator;
    sphere = fullcircle scaled (2*sphere_rad);
    equator = sphere yscaled .4;
  pickup pencircle scaled line_width_light;
  draw equator withcolor shading_color;
  draw sphere;

  save proj_line; path proj_line;
    proj_line = sphere yscaled .3 rotated 35;
    %draw proj_line;

  save line_with_antipodals; path line_with_antipodals;
    line_with_antipodals = ((0w,0v)--(sphere_rad,0v)) rotated 45;
  z1 = line_with_antipodals intersectionpoint proj_line;
  z2 = -z1;
  draw z1--z2 dashed evenly scaled .75;
  drawpoint(z1); drawpoint(z2);

  % plane
  y10=y11=3v; y12=y13=sphere_rad+1.5*(sphere_rad-y10); %corners of plane
  x10=-10w; x11=9w; x12=10w; x13=-9w;
  save plane; path plane; plane = z10--z11--z12--z13--cycle;
    % draw plane below
  % projection of projective point into z=1 plane
  z20  = whatever[z1,z2]; y20 = sphere_rad-.1v;
  save proj; path proj; proj = (.9[z20,z1])--(.9[z1,z20]);
  pickup pencircle scaled line_width_dark; 
    drawarrowsimple proj withcolor white;
    pickup pencircle scaled line_width_light; 
    drawarrowsimple proj;
  drawpoint(z20);
  % now draw plane, layered over projection arrow
  pickup pencircle scaled line_width_dark;
    draw plane withcolor white;
  pickup pencircle scaled line_width_light;
    draw plane;
endfig;







beginfig(19);  % Deasrgue's Theorem; description of perspective
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  z0 = (2w,6v); % point O
  z1 = (1.2w,3v); % point T1
  z2 = (2.5w,2.3v); % point U1
  z3 = (3.5w,2.6v); % point V1
  z11 = 1.8[z0,z1]; % point T2
  z12 = 2.3[z0,z2]; % point U2
  z13 = 2.1[z0,z3]; % point V2
  save ot, ou, ov; path ot, ou, ov;
  ot = z0--z11;  ou = z0--z12;  ov = z0--z13;
  save t_one, t_two;  path t_one, t_two;
  t_one = z1--z2--z3--cycle;
  t_two = z11--z12--z13--cycle;

  % draw triangles
  fill t_one withcolor lightgray;
  fill t_two withcolor lightgray;
  pickup pencircle scaled line_width_light;
  draw t_one; draw t_two;
  % draw perspective lines
  pickup pencircle scaled line_width_dark;
  draw ot withcolor white;
  draw ou withcolor white;
  draw ov withcolor white;
  pickup pencircle scaled line_width_light;
  draw ot;
  draw ou;
  draw ov;
  % draw points
  drawpoint(z0);
    label.lft(btex {\scriptsize $O$} etex,z0);
  drawpoint(z1);
    label.lft(btex {\scriptsize $T_1$} etex,z1);
  drawpoint(z2);
    label.llft(btex {\scriptsize $U_1$} etex,z2+(.4w,0v));
  drawpoint(z3);
    label.rt(btex {\scriptsize $V_1$} etex,z3);
  drawpoint(z11);
    label.lft(btex {\scriptsize $T_2$} etex,z11);
  drawpoint(z12);
    label.bot(btex {\scriptsize $U_2$} etex,z12);
  drawpoint(z13);
    label.rt(btex {\scriptsize $V_2$} etex,z13);
endfig;







beginfig(20);  % Deasrgue's Theorem; extension of TU segments
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  z0 = (2w,6v); % point O
  z1 = (1.2w,3v); % point T1
  z2 = (2.5w,2.3v); % point U1
  z3 = (3.5w,2.6v); % point V1
  z11 = 1.8[z0,z1]; % point T2
  z12 = 2.3[z0,z2]; % point U2
  z13 = 2.1[z0,z3]; % point V2
  save ot, ou, ov; path ot, ou, ov;
  ot = z0--z11;  ou = z0--z12;  ov = z0--z13;
  save t_one, t_two;  path t_one, t_two;
  t_one = z1--z2--z3--cycle;
  t_two = z11--z12--z13--cycle;

  % pt of extension of the two lines
  z30 = whatever[z1,z2] = whatever[z11,z12];
  save ext_one, ext_two; path ext_one, ext_two;
  ext_one = z1--z30;
  ext_two = z11--z30;
  
  % draw triangles
  fill t_one withcolor lightgray;
  fill t_two withcolor lightgray;
  pickup pencircle scaled line_width_light;
  draw t_one withcolor medgray; draw t_two withcolor medgray;
  % draw perspective lines
  pickup pencircle scaled line_width_dark;
  draw ot withcolor white;
  draw ou withcolor white;
  draw ov withcolor white;
  pickup pencircle scaled line_width_light;
  draw ot withcolor medgray;
  draw ou withcolor medgray;
  draw ov withcolor medgray;
  % draw extension
  pickup pencircle scaled line_width_dark;
     draw ext_one withcolor white;  draw ext_two withcolor white; 
  pickup pencircle scaled line_width_light;
     draw ext_one dashed evenly scaled .75;
     draw ext_two dashed evenly scaled .75; 
  % draw points
  pickup pencircle scaled line_width_light;
  drawpoint(z0);
    %label.lft(btex {\scriptsize $O$} etex,z0);
  drawpoint(z1);
    label.lft(btex {\scriptsize $T_1$} etex,z1);
  drawpoint(z2);
    label.llft(btex {\scriptsize $U_1$} etex,z2);
  drawpoint(z3);
    %label.rt(btex {\scriptsize $V_1$} etex,z3);
  drawpoint(z11);
    label.lft(btex {\scriptsize $T_2$} etex,z11);
  drawpoint(z12);
    label.bot(btex {\scriptsize $U_2$} etex,z12);
  drawpoint(z13);
    %label.rt(btex {\scriptsize $V_2$} etex,z13);
  % label intersection
  drawpoint(z30);
    label.top(btex {\scriptsize $TU$} etex,z30);
endfig;






beginfig(21);  % Desargue's Theorem; extension of TV segments
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  z0 = (2w,6v); % point O
  z1 = (1.2w,3v); % point T1
  z2 = (2.5w,2.3v); % point U1
  z3 = (3.5w,2.6v); % point V1
  z11 = 1.8[z0,z1]; % point T2
  z12 = 2.3[z0,z2]; % point U2
  z13 = 2.1[z0,z3]; % point V2
  save ot, ou, ov; path ot, ou, ov;
  ot = z0--z11;  ou = z0--z12;  ov = z0--z13;
  save t_one, t_two;  path t_one, t_two;
  t_one = z1--z2--z3--cycle;
  t_two = z11--z12--z13--cycle;

  % pt of extension of the two lines
  z30 = whatever[z1,z3] = whatever[z11,z13];
  save ext_one, ext_two; path ext_one, ext_two;
  ext_one = z1--z30;
  ext_two = z11--z30;
  
  % draw triangles
  fill t_one withcolor lightgray;
  fill t_two withcolor lightgray;
  pickup pencircle scaled line_width_light;
  draw t_one withcolor medgray; draw t_two withcolor medgray;
  % draw perspective lines
  pickup pencircle scaled line_width_dark;
  draw ot withcolor white;
  draw ou withcolor white;
  draw ov withcolor white;
  pickup pencircle scaled line_width_light;
  draw ot withcolor medgray;
  draw ou withcolor medgray;
  draw ov withcolor medgray;
  % draw extension
  pickup pencircle scaled line_width_dark;
     draw ext_one withcolor white;  draw ext_two withcolor white; 
  pickup pencircle scaled line_width_light;
     draw ext_one dashed evenly scaled .75;
     draw ext_two dashed evenly scaled .75; 
  % draw points
  pickup pencircle scaled line_width_light;
  drawpoint(z0);
    %label.lft(btex {\scriptsize $O$} etex,z0);
  drawpoint(z1);
    label.lft(btex {\scriptsize $T_1$} etex,z1);
  drawpoint(z2);
    %label.llft(btex {\scriptsize $U_1$} etex,z2);
  drawpoint(z3);
    label.rt(btex {\scriptsize $V_1$} etex,z3);
  drawpoint(z11);
    label.lft(btex {\scriptsize $T_2$} etex,z11);
  drawpoint(z12);
    %label.bot(btex {\scriptsize $U_2$} etex,z12);
  drawpoint(z13);
    label.rt(btex {\scriptsize $V_2$} etex,z13);
  % label intersection
  drawpoint(z30);
    label.top(btex {\scriptsize $TV$} etex,z30);
endfig;







beginfig(22);  % Deasrgue's Theorem; extension of UV segments
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  z0 = (2w,6v); % point O
  z1 = (1.2w,3v); % point T1
  z2 = (2.5w,2.3v); % point U1
  z3 = (3.5w,2.6v); % point V1
  z11 = 1.8[z0,z1]; % point T2
  z12 = 2.3[z0,z2]; % point U2
  z13 = 2.1[z0,z3]; % point V2
  save ot, ou, ov; path ot, ou, ov;
  ot = z0--z11;  ou = z0--z12;  ov = z0--z13;
  save t_one, t_two;  path t_one, t_two;
  t_one = z1--z2--z3--cycle;
  t_two = z11--z12--z13--cycle;

  % pt of extension of the two lines
  z30 = whatever[z2,z3] = whatever[z12,z13];
  save ext_one, ext_two; path ext_one, ext_two;
  ext_one = z3--z30;
  ext_two = z13--z30;
  
  % draw triangles
  fill t_one withcolor lightgray;
  fill t_two withcolor lightgray;
  pickup pencircle scaled line_width_light;
  draw t_one withcolor medgray; draw t_two withcolor medgray;
  % draw perspective lines
  pickup pencircle scaled line_width_dark;
  draw ot withcolor white;
  draw ou withcolor white;
  draw ov withcolor white;
  pickup pencircle scaled line_width_light;
  draw ot withcolor medgray;
  draw ou withcolor medgray;
  draw ov withcolor medgray;
  % draw extension
  pickup pencircle scaled line_width_dark;
     draw ext_one withcolor white;  draw ext_two withcolor white; 
  pickup pencircle scaled line_width_light;
     draw ext_one dashed evenly scaled .75;
     draw ext_two dashed evenly scaled .75; 
  % draw points
  pickup pencircle scaled line_width_light;
  drawpoint(z0);
    %label.lft(btex {\scriptsize $O$} etex,z0);
  drawpoint(z1);
    %label.lft(btex {\scriptsize $T_1$} etex,z1);
  drawpoint(z2);
    label.llft(btex {\scriptsize $U_1$} etex,z2);
  drawpoint(z3);
    label.rt(btex {\scriptsize $V_1$} etex,z3);
  drawpoint(z11);
    %label.lft(btex {\scriptsize $T_2$} etex,z11);
  drawpoint(z12);
    label.bot(btex {\scriptsize $U_2$} etex,z12);
  drawpoint(z13);
    label.rt(btex {\scriptsize $V_2$} etex,z13);
  % label intersection
  drawpoint(z30);
    label.top(btex {\scriptsize $UV$} etex,z30);
endfig;




beginfig(23);  % Desargue's Theorem; extension of all three segments
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  z0 = (2w,6v); % point O
  z1 = (1.2w,3v); % point T1
  z2 = (2.5w,2.3v); % point U1
  z3 = (3.5w,2.6v); % point V1
  z11 = 1.8[z0,z1]; % point T2
  z12 = 2.3[z0,z2]; % point U2
  z13 = 2.1[z0,z3]; % point V2
  save ot, ou, ov; path ot, ou, ov;
  ot = z0--z11;  ou = z0--z12;  ov = z0--z13;
  save t_one, t_two;  path t_one, t_two;
  t_one = z1--z2--z3--cycle;
  t_two = z11--z12--z13--cycle;

  % pt of extension of the two lines
  z31 = whatever[z1,z2] = whatever[z11,z12]; % TU point
  z32 = whatever[z1,z3] = whatever[z11,z13]; % TV point
  z33 = whatever[z2,z3] = whatever[z12,z13]; % UV point
  save ext_TU_one, ext_TU_two, ext_TV_one, ext_TV_two, ext_UV_one, ext_UV_two;
  path ext_TU_one, ext_TU_two, ext_TV_one, ext_TV_two, ext_UV_one, ext_UV_two;
  ext_TU_one = z1--z31;  ext_TU_two = z11--z31;
  ext_TV_one = z1--z32;  ext_TV_two = z11--z32;
  ext_UV_one = z3--z33;  ext_UV_two = z13--z33;
  
  % draw triangles
  fill t_one withcolor lightgray;
  fill t_two withcolor lightgray;
  pickup pencircle scaled line_width_light;
  draw t_one withcolor medgray; draw t_two withcolor medgray;
  % draw perspective lines
  pickup pencircle scaled line_width_dark;
  draw ot withcolor white;
  draw ou withcolor white;
  draw ov withcolor white;
  pickup pencircle scaled line_width_light;
  draw ot withcolor medgray;
  draw ou withcolor medgray;
  draw ov withcolor medgray;
  % draw extension
  pickup pencircle scaled line_width_dark;
     draw ext_TU_one withcolor white;  draw ext_TU_two withcolor white; 
     draw ext_TV_one withcolor white;  draw ext_TV_two withcolor white; 
     draw ext_UV_one withcolor white;  draw ext_UV_two withcolor white; 
  pickup pencircle scaled line_width_light;
     draw ext_TU_one dashed evenly scaled .75;
     draw ext_TU_two dashed evenly scaled .75; 
     draw ext_TV_one dashed evenly scaled .75;
     draw ext_TV_two dashed evenly scaled .75; 
     draw ext_UV_one dashed evenly scaled .75;
     draw ext_UV_two dashed evenly scaled .75; 
  draw (1.1[z33,z32])--(1.1[z32,z33]);
  % draw points
  pickup pencircle scaled line_width_light;
  drawpoint(z0);
    %label.lft(btex {\scriptsize $O$} etex,z0);
  drawpoint(z1);
    %label.lft(btex {\scriptsize $T_1$} etex,z1);
  drawpoint(z2);
    %label.llft(btex {\scriptsize $U_1$} etex,z2);
  drawpoint(z3);
    %label.rt(btex {\scriptsize $V_1$} etex,z3);
  drawpoint(z11);
    %label.lft(btex {\scriptsize $T_2$} etex,z11);
  drawpoint(z12);
    %label.bot(btex {\scriptsize $U_2$} etex,z12);
  drawpoint(z13);
    %label.rt(btex {\scriptsize $V_2$} etex,z13);
  % label intersection
  drawpoint(z31);
    label.top(btex {\scriptsize $TU$} etex,z31);
  drawpoint(z32);
    label.top(btex {\scriptsize $TV$} etex,z32);
  drawpoint(z33);
    label.top(btex {\scriptsize $UV$} etex,z33);
endfig;







beginfig(24);  % a walk around the projective plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, meridian, proj_line; path sphere, meridian, proj_line;
    sphere = fullcircle scaled (2*sphere_rad);
    meridian = sphere xscaled .4; % fig is intersection of two ellipses
    proj_line = sphere yscaled .3;
  pickup pencircle scaled line_width_light;
  draw meridian withcolor shading_color;
  draw sphere;
  % z1/z2 is the projective point, the antipodal spots
  z1 = proj_line intersectionpoint meridian;
  z2 = -z1;
  % draw the figure as small portion (hand_rad worth) of the two
  %  great circles
  save hand_rad; numeric hand_rad, t[];
    hand_rad = .5u;  % radius for hand 
    (t0,t1) = (subpath (0,.5length(meridian)) of meridian) intersectiontimes proj_line;        
    t2 = ypart((halfcircle scaled 2hand_rad shifted z1) intersectiontimes meridian);
    t3 = ypart((halfcircle rotated -90  scaled 2hand_rad shifted z1) intersectiontimes proj_line);
    t10 = xpart(meridian intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t11 = xpart(proj_line intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t12 = ypart((halfcircle rotated 180 scaled 2hand_rad shifted z2) intersectiontimes meridian);
    t13 = ypart((halfcircle rotated 90  scaled 2hand_rad shifted z2) intersectiontimes proj_line);
  %
  pickup pencircle scaled line_width_light;
  draw z1--z2 dashed evenly scaled .75;
  begingroup
    interim ahlength := 1.5pt;
    pickup pencircle scaled line_width_dark;
    drawarrow subpath (t0,t2) of meridian;
    drawarrow subpath (t1,t3) of proj_line;
    % pickup pencircle scaled line_width_light;
    drawarrow subpath (t10,t12) of meridian withcolor blue;
    drawarrow subpath (t11,t13) of proj_line withcolor blue;
  endgroup;
  %
  pickup pencircle scaled line_width_light;
  drawpoint(z1); drawpoint(z2);
endfig;






beginfig(25);  % a walk around the projective plane
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, meridian, proj_line; path sphere, meridian, proj_line;
    sphere = fullcircle scaled (2*sphere_rad);
    meridian = sphere xscaled .4; % fig is intersection of two ellipses
    proj_line = sphere yscaled .7;
  pickup pencircle scaled line_width_light;
  draw meridian withcolor shading_color;
  draw sphere;
  % z1/z2 is the projective point, the antipodal spots
  z1 = proj_line intersectionpoint meridian;
  z2 = -z1;
  % draw the figure as small portion (hand_rad worth) of the two
  %  great circles
  save hand_rad; numeric hand_rad, t[];
    hand_rad = .5u;  % radius for hand 
    (t0,t1) = (subpath (0,.5length(meridian)) of meridian) intersectiontimes proj_line;        
    t2 = ypart((halfcircle scaled 2hand_rad shifted z1) intersectiontimes meridian);
    t3 = ypart((halfcircle rotated -90  scaled 2hand_rad shifted z1) intersectiontimes proj_line);
    t10 = xpart(meridian intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t11 = xpart(proj_line intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t12 = ypart((halfcircle rotated 180 scaled 2hand_rad shifted z2) intersectiontimes meridian);
    t13 = ypart((halfcircle rotated 90  scaled 2hand_rad shifted z2) intersectiontimes proj_line);
  %
  pickup pencircle scaled line_width_light;
  draw z1--z2 dashed evenly scaled .75;
  begingroup
    interim ahlength := 1.5pt;
    pickup pencircle scaled line_width_dark;
    drawarrow subpath (t0,t2) of meridian;
    drawarrow subpath (t1,t3) of proj_line;
    % pickup pencircle scaled line_width_light;
    drawarrow subpath (t10,t12) of meridian withcolor blue;
    drawarrow subpath (t11,t13) of proj_line withcolor blue;
  endgroup;
  %
  pickup pencircle scaled line_width_light;
  drawpoint(z1); drawpoint(z2);
endfig;





beginfig(26);  % a walk around the projective plane; back fig thru south pole
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, meridian, proj_line; path sphere, meridian, proj_line;
    sphere = fullcircle scaled (2*sphere_rad);
    meridian = sphere rotated 90 xscaled .4; % intersection of two ellipses
    proj_line = sphere rotated 90 yscaled .7;
  pickup pencircle scaled line_width_light;
  draw meridian withcolor shading_color;
  draw sphere;
  % z1/z2 is the projective point, the antipodal spots
  z1 = proj_line intersectionpoint meridian;
  z2 = -z1;
  % draw the figure as small portion (hand_rad worth) of the two
  %  great circles
  save hand_rad; numeric hand_rad, t[];
    hand_rad = .5u;  % radius for hand 
    (t0,t1) = (subpath (0,.5length(meridian)) of meridian) intersectiontimes proj_line;        
    t2 = ypart((halfcircle rotated 180 scaled 2hand_rad shifted z1) intersectiontimes meridian);
    t3 = ypart((halfcircle rotated -90  scaled 2hand_rad shifted z1) intersectiontimes proj_line);
    t10 = xpart(meridian intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t11 = xpart(proj_line intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t12 = ypart((halfcircle scaled 2hand_rad shifted z2) intersectiontimes meridian);
    t13 = ypart((halfcircle rotated 90  scaled 2hand_rad shifted z2) intersectiontimes proj_line);
  %
  pickup pencircle scaled line_width_light;
  draw z1--z2 dashed evenly scaled .75;
  begingroup
    interim ahlength := 1.5pt;
    pickup pencircle scaled line_width_dark;
    drawarrow subpath (t0,t2) of meridian;
    drawarrow subpath (t1,t3) of proj_line;
    % pickup pencircle scaled line_width_light;
    drawarrow subpath (t10,t12) of meridian withcolor blue;
    drawarrow subpath (t11,t13) of proj_line withcolor blue;
  endgroup;
  %
  pickup pencircle scaled line_width_light;
  drawpoint(z1); drawpoint(z2);
endfig;





beginfig(27);  % a walk around the projective plane; back fig near equator
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=8pt; v:=u; w:=v;

  save sphere_rad; numeric sphere_rad; sphere_rad = 4u;
  save sphere, meridian, proj_line; path sphere, meridian, proj_line;
    sphere = fullcircle scaled (2*sphere_rad);
    meridian = sphere rotated 90 xscaled .4; % intersection of two ellipses
    proj_line = sphere rotated 90 yscaled .1;
  pickup pencircle scaled line_width_light;
  draw meridian withcolor shading_color;
  draw sphere;
  % z1/z2 is the projective point, the antipodal spots
  z1 = proj_line intersectionpoint meridian;
  z2 = -z1;
  % draw the figure as small portion (hand_rad worth) of the two
  %  great circles
  save hand_rad; numeric hand_rad, t[];
    hand_rad = .5u;  % radius for hand 
    (t0,t1) = (subpath (0,.5length(meridian)) of meridian) intersectiontimes proj_line;        
    t2 = ypart((halfcircle rotated 180 scaled 2hand_rad shifted z1) intersectiontimes meridian);
    t3 = ypart((halfcircle rotated -90  scaled 2hand_rad shifted z1) intersectiontimes proj_line);
    t10 = xpart(meridian intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t11 = xpart(proj_line intersectiontimes (.5[z1,z2]--1.5[z1,z2]));   
    t12 = ypart((halfcircle scaled 2hand_rad shifted z2) intersectiontimes meridian);
    t13 = ypart((halfcircle rotated 90  scaled 2hand_rad shifted z2) intersectiontimes proj_line);
  %
  pickup pencircle scaled line_width_light;
  draw z1--z2 dashed evenly scaled .75;
  begingroup
    interim ahlength := 1.5pt;
    pickup pencircle scaled line_width_dark;
    drawarrow subpath (t0,t2) of meridian;
    drawarrow subpath (t1,t3) of proj_line;
    % pickup pencircle scaled line_width_light;
    drawarrow subpath (t10,t12) of meridian withcolor blue;
    drawarrow subpath (t11,t13) of proj_line withcolor blue;
  endgroup;
  %
  pickup pencircle scaled line_width_light;
  drawpoint(z1); drawpoint(z2);
endfig;


% =============== TOPIC: speed of determinants =========
%input graph

beginfig(28)
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;
  draw begingraph(w,0.618v);
    gdraw "detspeed.dat" plot drawn_point;
    %setrange(whatever,whatever,whatever,whatever);
    frame.llft;
  endgraph;
endfig;



%============== Main body material ========================





% FIGURE 30
%   Parallelogram picture
beginfig(30);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(72w,24v); z2=(12w,36v);  % endpoints of the two vectors
  z3=(x1+x2,y1+y2);
  z4=(x0,y1+y2); z5=(x1+x2,y0);
  pickup pencircle scaled line_width_light;
  draw z0--z1--z3--z2--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.rt(btex {\scriptsize $\colvec{x_1 \\ y_1}$}  etex,z1);
  label.lft(btex {\scriptsize $\colvec{x_2 \\ y_2}$}  etex,z2); 
endfig;


% FIGURE 31
%   Parallelogram picture with areas totaled
beginfig(31);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(72w,24v); z2=(12w,36v);  % endpoints of the two vectors
  z3=(x1+x2,y1+y2); % far corner
  z4=(x0,y3); z5=(x3,y0); %upper left corner, lower right corner
  pickup pencircle scaled line_width_light;
  draw z0--z1--z3--z2--cycle;  %parallelogram
  draw z0--z4--z3--z5--cycle;  % outer box
  draw (x0,y2)--z2; % horiz line on left
  draw z2--(x2,y3); %vert line on left
  draw z1--(x3,y1);  %horiz line on right
  draw z1--(x1,y0);  %vert line on right

  % label the relevant points on the axes
  z6=(0w,y1); z7=(0w,y2); 
    pickup sidetoside_tick;
    drawdot z6; drawdot z7;  
    label.lft(btex {\tiny $y_1$} etex,z6);
    label.lft(btex {\tiny $y_2$} etex,z7);
  z8=(x2,0v); z9=(x1,0v);
    pickup updown_tick;
    drawdot z8; drawdot z9;  
    label.bot(btex {\tiny $x_2$} etex,z8);
    label.bot(btex {\tiny $x_1$} etex,z9);

  %drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label(btex {\tiny $A$} etex,center_parallelogram(z2,z4));
  label(btex {\tiny $B$} etex,center_triangle(z2,z3,(x2,y3)));
  label(btex {\tiny $C$} etex,center_triangle(z0,z2,(x0,y2)));
  label(btex {\tiny $D$} etex,center_triangle(z1,z3,(x3,y1)));
  label(btex {\tiny $E$} etex,center_triangle(z0,z1,(x1,y0)));
  label(btex {\tiny $F$} etex,center_parallelogram(z1,z5));
endfig;


% FIGURE 32
%   Effect of scalar multiplication: before.
beginfig(32);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(35w,0v); z2=(8w,24v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  
  pickup pencircle scaled line_width_light;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.bot(btex {\scriptsize $\vec{v}$} etex,.5[z0,z1]);
  label.lft(btex {\scriptsize $\vec{w}$} etex,.5[z0,z2]);
endfig;


% FIGURE 33
%   Effect of scalar multiplication: after.
beginfig(33);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram_inside;
  
  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(35w,0v); z2=(8w,24v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  z4=1.4*z1; %k=1.3
  z5=z4+z2;  

  pickup pencircle scaled line_width_light;
  pgram_inside = z0--z1--z3--z2--cycle;
  draw z4--z5--z2;  %outside parallelogram

  drawvec_dark_with_border(z0,z4);  drawvec_dark_with_border(z0,z2);
    %drawvec_dark_with_border(z0,z1); 
  fill pgram_inside withcolor lightgray;  %inside parallelogram
  drawvec_dark(z0,z4);              drawvec_dark(z0,z2);           
  label.bot(btex {\scriptsize $k\vec{v}$} etex,.5[z0,z4]);
  label.lft(btex {\scriptsize $\vec{w}$} etex,.5[z0,z2]);
endfig;


% FIGURE 34
%   Effect of pivoting: before.
beginfig(34);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(35w,0v); z2=(8w,24v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  
  pickup pencircle scaled line_width_light;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.bot(btex {\scriptsize $\vec{v}$} etex,.5[z0,z1]);
  label.lft(btex {\scriptsize $\vec{w}$} etex,.5[z0,z2]);
endfig;


% FIGURE 35
%   Effect of pivoting: after.
beginfig(35);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram_before;
  
  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(35w,0v); z2=(8w,24v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  z4=-.65*z1; %k=.35
  z5=z4+z2;
  z6=z5+z1;

  pickup pencircle scaled line_width_light;
  pgram_before = z0--z1--z3--z2--cycle;
  fill pgram_before withcolor lightgray;  %before parallelogram
  draw z5--z6--z1;  %after parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z5);
    %drawvec_dark_with_border(z0,z1); 
  label.bot(btex {\scriptsize $\vec{v}$} etex,.5[z0,z1]);
  picture lab;
    lab=thelabel.lft(btex {\scriptsize $k\vec{v}+\vec{w}$} etex,.5[z0,z5]);
    %unfill bbox lab;
    draw lab;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z5);           
endfig;


% FIGURE 36
%   Unit square.
beginfig(36);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path square;

  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(20w,0v); z2=(0w,20v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  square = z0--z1--z3--z2--cycle;
  draw square;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  %fill square withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.bot(btex {\scriptsize $\vec{e}_1$} etex,.5[z0,z1]);
  label.lft(btex {\scriptsize $\vec{e}_2$} etex,.5[z0,z2]);
endfig;


% FIGURE 37
%   Area between two vectors, counterclockwise.
beginfig(37);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;
  path arcbetweenvectors; numeric midarc;

  u:=10pt; v:=u; w:=v;

  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-.5w,0v)--(5.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,5.5v); %y-axis
    updown_ticks(5,(1w,0v),(1w,0v));    
    sidetoside_ticks(5,(0w,1v),(0w,1v));
  
  z0=(0w,0v);
  z1=(4w,2v); z2=(1w,3v);  % endpoints of the two vectors, u and v
  z3=z1+z2; % far corner
  pickup pencircle scaled line_width_light;
  %linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  %fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);

  label.lrt(btex {\small $\vec{u}$} etex,z1);
  label.ulft(btex {\small $\vec{v}$} etex,z2);

  % The arc between the vectors.
  arcbetweenvectors = (halfcircle scaled 2.5u) cutbefore (z0--z1)
                         cutafter (z0--z2);
  pickup pencircle scaled line_width_light;
  begingroup
    interim ahlength:=.8*ahlength;
    drawarrow arcbetweenvectors dashed evenly scaled 0.3333;
  endgroup; % why a semicolon here?
endfig;


% FIGURE 38
%   Area between two vectors, this time clockwise.
beginfig(38);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;
  path arcbetweenvectors; numeric midarc;

  u:=10pt; v:=u; w:=v;

  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-.5w,0v)--(5.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,5.5v); %y-axis
    updown_ticks(5,(1w,0v),(1w,0v));    
    sidetoside_ticks(5,(0w,1v),(0w,1v));
  
  z0=(0w,0v);
  z1=(4w,2v); z2=(1w,3v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  pickup pencircle scaled line_width_light;
  %\linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  %fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);

  label.lrt(btex {\small $\vec{u}$} etex,z1);
  label.ulft(btex {\small $\vec{v}$} etex,z2);

  % The arc between the vectors.
  arcbetweenvectors = (halfcircle scaled 2.5u) cutbefore (z0--z1)
                         cutafter (z0--z2);
  pickup pencircle scaled line_width_light;
  begingroup
    interim ahlength:=.8*ahlength;
    drawarrow reverse(arcbetweenvectors) dashed evenly scaled 0.3333;
  endgroup;
endfig;


%............PROJECTION............
input 3d
% defaults for 3D stuff
color xaxiscolor, yaxiscolor, zaxiscolor;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
numeric ticks; ticks:=new_vect;
  vect_def(ticks,1,1,1); %default: delta x =1, etc.  
% adaptation of Vieth's draw_axes
%  the three factors allow the axes to grow or shrink.
vardef draw_xyz_axes(expr xfactor,yfactor,zfactor) =
begingroup
  save x, y;    
  save xaxis, yaxis, zaxis;
  xaxis:=new_vect; yaxis:=new_vect; zaxis:=new_vect;
  vect_mult(xaxis,vect_I,xfactor);
  vect_mult(yaxis,vect_J,yfactor);
  vect_mult(zaxis,vect_K,zfactor);
  project_point(1,vect_null);
  project_point(2,xaxis);
  project_point(3,yaxis);
  project_point(4,zaxis);
  if (z1<>(too_big_,too_big_)):
    if (z2<>(too_big_,too_big_)):
      draw z1--z2 withcolor xaxiscolor;
    fi;
    if (z3<>(too_big_,too_big_)):
      draw z1--z3 withcolor yaxiscolor;
    fi;
    if (z4<>(too_big_,too_big_)):
      draw z1--z4 withcolor zaxiscolor;
    fi;
  fi;
  free_vect(zaxis);  free_vect(yaxis);  free_vect(xaxis);
endgroup
enddef;
% Provide ticks for the axes.
numeric ticks; ticks:=new_vect;
  vect_def(ticks,1,1,1); %default: delta x =1, etc.  
vardef draw_xyz_axes_withticks(expr xfactor,yfactor,zfactor,numx,numy,numz) =
begingroup
  save x, y;
  % axis first and then ticks in case want axis with a white border
  draw_xyz_axes(xfactor,yfactor,zfactor);
  save vec_scratch; vec_scratch:=new_vect;
  pickup sidetoside_tick; % xaxis first
  for i=1 upto numx:
    vect_mult(vec_scratch,vect_I,i*vect[ticks]x);    
    project_point(2,vec_scratch);    
    drawdot z2 withcolor xaxiscolor;
  endfor
  pickup updown_tick; % yaxis next
  for i=1 upto numy:
    vect_mult(vec_scratch,vect_J,i*vect[ticks]y);    
    project_point(2,vec_scratch);    
    drawdot z2 withcolor yaxiscolor;
  endfor
  pickup sidetoside_tick; % zaxis last
  for i=1 upto numz:
    vect_mult(vec_scratch,vect_K,i*vect[ticks]z);    
    project_point(2,vec_scratch);    
    drawdot z2 withcolor zaxiscolor;
  endfor
  free_vect(vec_scratch);
endgroup
enddef;
%............3D.PERSPECTIVE....................
%
% FIGURE 39
%   Parallelapiped.
beginfig(39);
  drawing_scale:=20pt;
  save c_a, c_b, c_c, c_d, c_e, c_f, c_g, c_h,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
    c_e:=new_vect;  c_f:=new_vect;  c_g:=new_vect;  c_h:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);
%                   g 
%                  /  \
%    e           d     f     
%   /   \          \  /        
%  a      c          b         
%    \  /              
%      0                     
    vect_def(c_a,2,0,2);  vect_def(c_b,0,3,1);
    vect_def(c_c,-1,0,1); vect_def(c_d,2,3,3);
    vect_def(c_e,1,0,3);  vect_def(c_f,-1,3,2); 
    vect_def(c_g,1,3,4);  vect_def(c_h,0,0,0);

  % I don't understand what these do.
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_h down to z1 ... z8
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,c_e);
  project_point(6,c_f);
  project_point(7,c_g);
  project_point(8,c_h);

% labels
  label.lft(btex {\tiny $\colvec{2 \\ 0 \\ 2}$} etex,z1); %corner a
  label.rt(btex {\tiny $\colvec{0 \\ 3 \\ 1}$} etex,z2); %corner b
  % this one lies in the figure, so it has to be put off to one side.
  z9=(x2+13pt,y1+25pt);
  pickup pencircle scaled line_width_light;
  draw (z3+(0pt,3pt)){up}..{right}z9 withcolor lightgray;
  label.rt(btex {\tiny $\colvec{-1 \\ 0 \\ 1}$} etex,z9); %corner c

% draw the box now; first the lines behind the axes
  drawline_light(z3,z5);  %c to e
% next two also goes before axis so e to g comes out OK 
  drawline_light_with_border(z4,z7);  %d to g
  drawline_light_with_border(z6,z7);  %f to g
  drawline_light(z5,z7);  %e to g
  
  % draw axes with a border; do I really need a macro for this?
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes_withticks(3,4,5,2,3,4);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3,4,5,2,3,4);

  %now the lines in front of the axes, some of these in front of others.
  drawline_light_with_border(z1,z4);  %a to d
  drawline_light(z1,z5);  %a to e (after a to e)
  drawline_light(z3,z6);  %c to f
  drawline_light_with_border(z2,z4);  %b to d
    drawline_light(z1,z4);  %a to d again (after b to d and d to g)
    drawline_light(z4,z7);  %d to g again 
  drawline_light(z2,z6);  %b to f
  drawvec_dark(z8,z1);
  drawvec_dark(z8,z2);
  drawvec_dark(z8,z3);
  
  free_vect(origin);
  free_vect(c_h);  free_vect(c_g);  free_vect(c_f);  free_vect(c_e);
  free_vect(c_d);  free_vect(c_c);  free_vect(c_b);  free_vect(c_a);
endfig;



% FIGURE 40
%   Area of a box, to be doubled.
beginfig(40);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;
  path arcbetweenvectors; 

  u:=10pt; v:=u; w:=v;
  
  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,2v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  pickup pencircle scaled line_width_light;
  %linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  %fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);

  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-.5w,0v)--(3.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,3.5v); %y-axis
     updown_ticks(3,(1w,0v),(1w,0v));    
     sidetoside_ticks(3,(0w,1v),(0w,1v));

  %label.rt(btex {\tiny $\colvec{2 \\ 1}$} etex,z1); 
  %label.top(btex {\tiny $\colvec{1 \\ 2}$} etex,z2); 
  label.rt(btex {\tiny $\vec{w}$} etex,z1); 
  label.ulft(btex {\tiny $\vec{v}$} etex,z2); 
     
  % The arc between the vectors.
  arcbetweenvectors:=((halfcircle scaled 2.5u) cutbefore (z0--z1))
                         cutafter (z0--z2);
  pickup pencircle scaled line_width_light;
  interim ahlength:=.8*ahlength;
  drawarrow arcbetweenvectors dashed evenly scaled 0.3333;
endfig;



% FIGURE 41
%   Area of a box, doubled.
beginfig(41);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;
  path arcbetweenvectors; 

  u:=10pt; v:=u; w:=v;
  
  z0=(0w,0v);
  z1=(3w,-4v); z2=(3w,-2v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  pickup pencircle scaled line_width_light;
  %linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  %fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);

  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-.5w,0v)--(6.5w,0v); %x-axis
  draw (0w,.5v)--(0w,-6.5v); %y-axis
     updown_ticks(6,(1w,0v),(1w,0v));    
     sidetoside_ticks(6,(0w,-1v),(0w,-1v));

  %label.llft(btex {\tiny $\colvec{3 \\ -4}$} etex,z1); 
  %label.urt(btex {\tiny $\colvec{3 \\ -2}$} etex,z2); 
  label.llft(btex {\tiny $t(\vec{w})$} etex,z1); 
  label.urt(btex {\tiny $t(\vec{v})$} etex,z2); 
     
  % The arc between the vectors.
  arcbetweenvectors:=((halfcircle rotated 180 scaled 4.5u) cutbefore (z0--z1))
                         cutafter (z0--z2);
  pickup pencircle scaled line_width_light;
  interim ahlength:=.8*ahlength;
  drawarrow arcbetweenvectors dashed evenly scaled 0.3333;
endfig;




% FIGURE 42
%   Area of a box, (offset from the origin) to be calcualted.  det2
beginfig(42);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=10pt; v:=u; w:=v;
  
  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-1.5w,0v)--(4.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,1.5v); %y-axis
     updown_ticks(6,(-1w,0v),(1w,0v));    
     sidetoside_ticks(1,(0w,1v),(0w,1v));

  % parallelogram
  z0=(-1w,0v); z1=(2w,0v); z2=(4w,1v); z3=(1w,1v); 
  pickup pencircle scaled line_width_dark;
  %linecap:=squared;
  pgram = z0--z1--z2--z3--cycle;
  draw pgram;  %parallelogram
endfig;




% FIGURE 43
%   Area of a box, first half of contradiction, to be calcualted.  det2
beginfig(43);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=10pt; v:=u; w:=v;
  
  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-.5w,0v)--(3.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,2.5v); %y-axis
     updown_ticks(3,(1w,0v),(1w,0v));    
     sidetoside_ticks(2,(0w,1v),(0w,1v));

  % parallelogram
  z0=(1w,1v); z1=(3w,1v); z2=(1w,2v); z3=(3w,2v); 
  pickup pencircle scaled line_width_dark;
  %linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram
endfig;




% FIGURE 44
%   Area of a box, half of contradiction, to be calcualted.  det2
beginfig(44);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=10pt; v:=u; w:=v;
  
  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-.5w,0v)--(8.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,2.5v); %y-axis
     updown_ticks(8,(1w,0v),(1w,0v));    
     sidetoside_ticks(2,(0w,1v),(0w,1v));

  % parallelogram
  z0=(3w,1v); z1=(8w,1v); z2=(3w,2v); z3=(8w,2v); 
  pickup pencircle scaled line_width_dark;
  %linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram
endfig;




% FIGURE 45
%   Standard basis.  det2
beginfig(45);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=10pt; v:=u; w:=v;
  
  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-2.5w,0v)--(2.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,2.5v); %y-axis
     updown_ticks(5,(-2w,0v),(1w,0v));    
     sidetoside_ticks(2,(0w,1v),(0w,1v));

  drawvec_dark_with_border((0w,0v),(1w,0v)); %\vec{e}_1  
  drawvec_dark_with_border((0w,0v),(0w,1v)); %\vec{e}_2
    drawvec_dark((0w,0v),(1w,0v)); %\vec{e}_1  
    drawvec_dark((0w,0v),(0w,1v)); %\vec{e}_2
  drawvec_light((0w,0v),(1w,2v));
    label.rt(btex {\tiny $\vec{v}$} etex,(1w,2v));
endfig;




% FIGURE 46
%   A non-standard basis.  det2
beginfig(46);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram;

  u:=10pt; v:=u; w:=v;
  
  %axes
  pickup pencircle scaled line_width_light;
  linecap:=squared;
  draw (-2.5w,0v)--(2.5w,0v); %x-axis
  draw (0w,-.5v)--(0w,2.5v); %y-axis
     updown_ticks(5,(-2w,0v),(1w,0v));    
     sidetoside_ticks(2,(0w,1v),(0w,1v));

  drawvec_dark_with_border((0w,0v),(-1w,0v)); %-\vec{e}_1  
  drawvec_dark_with_border((0w,0v),(0w,1v)); %\vec{e}_2  
    drawvec_dark((0w,0v),(-1w,0v)); %-\vec{e}_1  
    drawvec_dark((0w,0v),(0w,1v)); %\vec{e}_2  
    label.ulft(btex {\tiny $\vec{\beta}_2$} etex,(-1w,0v));
    label.rt(btex {\tiny $\vec{\beta}_1$} etex,(0w,1v));
endfig;



%............3D.PERSPECTIVE....................
%
% FIGURE 47
%   3D axes, showing orientation
beginfig(47);
  drawing_scale:=20pt;
  save c_a, c_b, c_c,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,1,0,0);  vect_def(c_b,0,1,0); vect_def(c_c,0,0,1);
  
  % I don't understand what these do.
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_c down to z1 ... z3
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);

% draw axes with a border; do I really need a macro for this?
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3,3,3,2,2,2);

  drawvec_dark_with_border((0w,0v),z1);  %e_1
  drawvec_dark_with_border((0w,0v),z2);  %e_2
  drawvec_dark_with_border((0w,0v),z3);  %e_3
    drawvec_dark((0w,0v),z1); 
    drawvec_dark((0w,0v),z2);  
    drawvec_dark((0w,0v),z3);  

% labels
  label.ulft(btex {\tiny $\vec{e}_1$} etex,z1); %e_1
  label.top(btex {\tiny $\vec{e}_2$} etex,z2); %e_2
  label.lft(btex {\tiny $\vec{e}_3$} etex,z3); %e_3
  
  free_vect(origin);
  free_vect(c_c);  free_vect(c_b);  free_vect(c_a);
endfig;



%
% FIGURE 48
%   Another 3D axes, showing negative orientation
beginfig(48);
  drawing_scale:=20pt;
  save c_a, c_b, c_c,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);

  vect_def(c_a,1,0,0);  vect_def(c_b,0,1,0); vect_def(c_c,0,0,-1);
  
  % I don't understand what these do.
  set_point(Obs,10,5,5);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_c down to z1 ... z3
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);

% draw axes with a border; do I really need a macro for this?
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3,3,3,2,2,2);

  drawvec_dark_with_border((0w,0v),z1);  %e_1
  drawvec_dark_with_border((0w,0v),z2);  %e_2
  drawvec_dark_with_border((0w,0v),z3);  %-e_3
    drawvec_dark((0w,0v),z1); 
    drawvec_dark((0w,0v),z2);  
    drawvec_dark((0w,0v),z3);  

% labels
  label.ulft(btex {\tiny $\vec{\beta}_1$} etex,z1); %e_1
  label.top(btex {\tiny $\vec{\beta}_2$} etex,z2); %e_2
  label.rt(btex {\tiny $\vec{\beta}_3$} etex,z3);  %-e_3
  
  free_vect(origin);
  free_vect(c_c);  free_vect(c_b);  free_vect(c_a);
endfig;


%............3D.PERSPECTIVE....................
%
% FIGURE 49
%   Parallelepiped, in the z=1 plane.
beginfig(49);
  drawing_scale:=30pt;
  save c_a, c_b, c_c, c_d, c_e, c_f, c_g, c_h,
       c_i, c_j,
       origin;
  c_a:=new_vect;  c_b:=new_vect;  c_c:=new_vect;  c_d:=new_vect;
    c_e:=new_vect;  c_f:=new_vect;  c_g:=new_vect;  c_h:=new_vect;
    c_i:=new_vect;  c_j:=new_vect;
  origin:=new_vect; vect_def(origin,0,0,0);
%                   g 
%                  /  \
%    e           d     f     
%   /   \          \  /        
%  a      c          b         
%    \  /              
%      0                     
    vect_def(c_a,-.5,1,1);  vect_def(c_b,2,4,1);  vect_def(c_c,-1,4,1);
    vect_sum(c_d,c_a,c_b);
    vect_sum(c_e,c_a,c_c);
    vect_sum(c_f,c_b,c_c); 
    vect_sum(c_g,c_f,c_a);
    vect_def(c_h,0,0,0);
    vect_def(c_i,2,4,0);   vect_def(c_j,-1,4,0); % projections of c_b and c_c

  % 
  set_point(Obs,20,6,6);
  Obs_phi:=90; Obs_dist:=8;
  point_of_view_abs(origin,Obs_phi);
  % Now project the 3D points c_a ... c_h down to z1 ... z8
  project_point(1,c_a);
  project_point(2,c_b);
  project_point(3,c_c);
  project_point(4,c_d);
  project_point(5,c_e);
  project_point(6,c_f);
  project_point(7,c_g);
  project_point(8,c_h);
  project_point(9,c_i);
  project_point(10,c_j);

% labels
  label.top(btex {\tiny $\colvec{x \\ y \\ 1}$} etex,z1); %corner a
  % this one lies in the figure, so it has to be put off to one side.
  z11=(x2+13pt,y1+25pt);
  pickup pencircle scaled line_width_light;
  draw (z3+(0pt,2pt)){up}..{right}z11 withcolor lightgray;
  label.rt(btex {\tiny $\colvec{x_2 \\ y_2 \\ 1}$} etex,z11); %corner c
  % this one also lies in the figure, so it has to be put off to one side.
  z12=(x2+65pt,y1);
  pickup pencircle scaled line_width_light;
  draw (z2+(2pt,0v)){right}..{right}z12 withcolor lightgray;
  label.rt(btex {\tiny $\colvec{x_3 \\ y_3 \\ 1}$} etex,z12); %corner b

% draw the box now; first the lines behind the axes
  drawline_light(z3,z5);  %c to e
% next two also goes before axis so e to g comes out OK 
  drawline_light_with_border(z4,z7);  %d to g
  drawline_light_with_border(z6,z7);  %f to g
  drawline_light(z5,z7);  %e to g
  
  % draw axes with a border; do I really need a macro for this?
  pickup pencircle scaled line_width_dark;
  xaxiscolor:=white;  yaxiscolor:=white; zaxiscolor:=white;
  draw_xyz_axes_withticks(3,11,4,2,10,3);
  pickup pencircle scaled line_width_light;
  xaxiscolor:=black;  yaxiscolor:=black; zaxiscolor:=black;
  draw_xyz_axes_withticks(3,11,4,2,10,3);

  % draw the line thru (x_2,y_2) and (x_3,y_3)
  pickup pencircle scaled line_width_light xscaled 3cm rotated (angle(z10-z9));
  drawdot z9;  
  % goes under here.
  drawline_light_with_border(z2,z6);  %b to f
  
  %now the lines in front of the axes, some of these in front of others.
  drawline_light_with_border(z1,z4);  %a to d
  drawline_light(z1,z5);  %a to e (after a to e)
  drawline_light(z3,z6);  %c to f
  drawline_light_with_border(z2,z4);  %b to d
    drawline_light(z1,z4);  %a to d again (after b to d and d to g)
    drawline_light(z4,z7);  %d to g again 
  drawline_light(z2,z6);  %b to f
  drawvec_dark(z8,z1);
  drawvec_dark(z8,z2);
  drawvec_dark(z8,z3);
  
  free_vect(origin);
  free_vect(c_j);  free_vect(c_i);
  free_vect(c_h);  free_vect(c_g);  free_vect(c_f);  free_vect(c_e);
  free_vect(c_d);  free_vect(c_c);  free_vect(c_b);  free_vect(c_a);
endfig;









% CRAMER'S RULE

% FIGURE 50
%   Parallelogram picture
beginfig(50);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  pickup pencircle scaled line_width_light; %inside parallegram
  draw z0--z1--(z1+z2)--z2--cycle;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.lft(btex {\tiny $\colvec{1 \\ 3}$}  etex,z2); 
  label.rt(btex {\tiny $x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;

% FIGURE 51
%   Parallelogram picture with shaded box
beginfig(51);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z1--(z1+z2)--z2--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.lft(btex {\tiny $\colvec{1 \\ 3}$}  etex,z2); 
  %label.rt(btex {\tiny $\colvec{6 \\ 8}=x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;


% FIGURE 52
%   Parallelogram picture with shaded box dilated by x
beginfig(52);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z5--(z1+z5)--z1--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.lft(btex {\tiny $x_1\cdot\colvec{1 \\ 3}$}  etex,z5); 
  %label.rt(btex {\tiny $x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;


% FIGURE 53
%   Parallelogram picture with shaded box dilated by x and shifted by y
beginfig(53);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z3--(z3+z1)--z1--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  label.ulft(btex {\tiny $\colvec{6 \\ 8}$}  etex,z3); 
  %label.rt(btex {\tiny $x\cdot\colvec{1 \\ 3}+y\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;



% FIGURE 54
%   Pappus's theorem
beginfig(54);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  %upper line
  z0=(0w,5v);   z1=(10w,3v);
  pickup pencircle scaled line_width_light;
  draw z0--z1;
    z2=.1[z0,z1]; label.top(btex \tiny $T_0$ etex,z2); %T_0
    z3=.5[z0,z1]; label.top(btex \tiny $U_0$ etex,z3); %U_0
    z4=.8[z0,z1]; label.top(btex \tiny $V_0$ etex,z4); %V_0
  %lower line
  z10=(0w,0v);   z11=(10w,1v);
  pickup pencircle scaled line_width_light;
  draw z10--z11;
    z12=.2[z10,z11]; label.bot(btex \tiny $T_1$ etex,z12); %T_1
    z13=.6[z10,z11]; label.bot(btex \tiny $U_1$ etex,z13); %U_1
    z14=.9[z10,z11]; label.bot(btex \tiny $V_1$ etex,z14); %V_1

  pickup pencircle scaled line_width_light;
  draw z2--z13; draw z12--z3;              % T_0U_1 and T_1U_0
    z30=whatever[z2,z13]=whatever[z12,z3]; 
    drawpoint(z30); label.lft(btex \tiny $V_2$ etex,z30); 
  draw z2--z14; draw z12--z4;              % T_0V_1 and T_1V_0
    z31=whatever[z2,z14]=whatever[z12,z4]; 
    drawpoint(z31); label.bot(btex \tiny $U_2$ etex,z31);
  draw z3--z14; draw z13--z4;              % U_0V_1 and U_1V_0
    z32=whatever[z3,z14]=whatever[z13,z4];
    drawpoint(z32); label.rt(btex \tiny $T_2$ etex,z32);
endfig;





% FIGURE 55
%   Three.III  Iterated transformation
beginfig(55);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  %upper line
  z0=(0w,5v);   z1=(10w,3v);
  pickup pencircle scaled line_width_light;
  draw z0--z1;
    z2=.1[z0,z1]; label.top(btex \tiny $T_0$ etex,z2); %T_0
    z3=.5[z0,z1]; label.top(btex \tiny $U_0$ etex,z3); %U_0
    z4=.8[z0,z1]; label.top(btex \tiny $V_0$ etex,z4); %V_0
  %lower line
  z10=(0w,0v);   z11=(10w,1v);
  pickup pencircle scaled line_width_light;
  draw z10--z11;
    z12=.2[z10,z11]; label.bot(btex \tiny $T_1$ etex,z12); %T_1
    z13=.6[z10,z11]; label.bot(btex \tiny $U_1$ etex,z13); %U_1
    z14=.9[z10,z11]; label.bot(btex \tiny $V_1$ etex,z14); %V_1

  pickup pencircle scaled line_width_light;
  draw z2--z13; draw z12--z3;              % T_0U_1 and T_1U_0
    z30=whatever[z2,z13]=whatever[z12,z3]; 
    drawpoint(z30); label.lft(btex \tiny $V_2$ etex,z30); 
  draw z2--z14; draw z12--z4;              % T_0V_1 and T_1V_0
    z31=whatever[z2,z14]=whatever[z12,z4]; 
    drawpoint(z31); label.bot(btex \tiny $U_2$ etex,z31);
  draw z3--z14; draw z13--z4;              % U_0V_1 and U_1V_0
    z32=whatever[z3,z14]=whatever[z13,z4];
    drawpoint(z32); label.rt(btex \tiny $T_2$ etex,z32);
endfig;




color PeachPuff; PeachPuff=(255,218,185);
color SlateGray; SlateGray=(112,128,144);
color DarkGreen; DarkGreen=(0,100,0);
color SteelBlue; SteelBlue=(70,130,180);

% FIGURE 56
%   Parallelogram picture with shaded box; for cover
beginfig(56);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z1--(z1+z2)--z2--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  %label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  %label.lft(btex {\tiny $\colvec{1 \\ 3}$}  etex,z2); 
  %label.rt(btex {\tiny $\colvec{6 \\ 8}=x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;


% FIGURE 57
%   Parallelogram picture with shaded box dilated by x; for cover
beginfig(57);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z5--(z1+z5)--z1--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  %label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  %label.lft(btex {\tiny $x_1\cdot\colvec{1 \\ 3}$}  etex,z5); 
  %label.rt(btex {\tiny $x_1\cdot\colvec{1 \\ 3}+x_2\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;


% FIGURE 58
%   Parallelogram picture with shaded box dilated by x, shifted by y; cover
beginfig(58);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor

  u:=10pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(2w,1v); z2=(1w,3v);  % endpoints of the two vectors
  z3=(6w,8v);
  z4=2*z1; z5=2*z2;  % solution is x=2, y=2

  path inside_pgram;
  inside_pgram=z0--z3--(z3+z1)--z1--cycle;
  pickup pencircle scaled line_width_light; %inside parallegram
  draw inside_pgram;
  pickup pencircle scaled line_width_light; %outside parallegram
  draw z0--z4--z3--z5--cycle;
  
  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  fill inside_pgram withcolor shading_color;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);
  %label.lrt(btex {\tiny $\colvec{2 \\ 1}$}  etex,z1);
  %label.ulft(btex {\tiny $\colvec{6 \\ 8}$}  etex,z3); 
  %label.rt(btex {\tiny $x\cdot\colvec{1 \\ 3}+y\cdot\colvec{2 \\ 1}$} etex,z3);
endfig;


end
