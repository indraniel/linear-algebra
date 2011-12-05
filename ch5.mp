% CH5.mp
%  MetaPost input file with chapter five pictures.
%
% HISTORY
% 2001-Apr-15 Jim Hefferon jim@joshua.smcvt.edu Written
verbatimtex
%&latex
\documentclass{book}
\usepackage{dvidrv} \usepackage{hrefout}
\usepackage{bookjh,linalgjh}
\usepackage{color}
\usepackage{verbatim}
\begin{document}
etex

input jh
input arrow

defaultscale := 9pt/fontsize defaultfont;

numeric u;  %scaling factor
numeric v;  %vertical scaling factor
numeric w;  %horizontal scaling factor

u:=.04in; v:=u; w:=v;


%--------------------------------
%  section 5.3
%   Map from a space to itself, iterated.
%
beginfig(1);   % map from a space to itself
  %numeric u;  %scaling factor
  %numeric v;  %vertical scaling factor
  %numeric w;  %horizontal scaling factor
  numeric a, b; a=.8in; b=1.1a; % a is width of set, b is hgt
  set_pic(a,b);
  z1=(.4a,.9b);
    drawpoint(z1); label.lft(btex $\vec{v}$ etex,z1);
  z2=(.5a,.55b);
    drawpoint(z2); label.lft(btex $t(\vec{v}\,)$ etex,z2);
  z3=(.6a,.15b);
    drawpoint(z3); label.lft(btex $t^2(\vec{v}\,)$ etex,z3);
  %mapsto(z1,.5[z1,z2]+(.1a,0),z2);
  %mapsto(z2,.5[z2,z3]+(.1a,0),z3);
  draw_action_arrow(z1..(.5[z1,z2]+(.1a,0))..z2);
  draw_action_arrow(z2..(.5[z2,z3]+(.1a,0))..z3);
endfig;


%--------------------------------
%  section 5.3
%   Graph of rank and nullity, on iteration of a transformation.
%
beginfig(2);
  %numeric u;  %scaling factor
  %numeric v;  %vertical scaling factor
  %numeric w;  %horizontal scaling factor
  numeric a, b; % a is width, b is height
  a=2.5in; b=1.25in;
  draw begingraph(a,b);
    setrange(origin,whatever,whatever);
    gdraw "ranknullity.d" plot drawn_point; % btex$\circ$etex;
%   glabel.lft(btex \begin{tabular}{r}
%                         nullity of $t^j$ (above) \\ 
%                         and                      \\ 
%                         rank of $t^j$ (below)
% 			\end{tabular} etex,OUT);
    glabel.bot(btex Power $j$ of the transformation etex,OUT);
    otick.bot(btex$0$etex,1);    
    otick.bot(btex$1$etex,2);    
    otick.bot(btex$2$etex,3);    
    otick.bot(btex$j$etex,5);    
    otick.bot(btex{\ }etex,8);    
    grid.bot(btex$n$etex,9) withcolor .85white;    
    otick.bot(btex{\ }etex,10);    
    grid.lft(btex$n$etex,8) withcolor .85white;    
    otick.lft(btex{\ }etex,7);    
    otick.lft(btex{\ }etex,6);    
    otick.lft(btex$\text{rank}(t^j)$etex,3);    
    otick.lft(btex{\ }etex,1);    
    otick.lft(btex{\ }etex,1);    
    otick.lft(btex{\ }etex,1);    
    frame.llft;
  endgraph;
endfig;

%--------------------------------
%  section 5.3
%   Graph of rank and nullity, on iteration of a transformation.
%
beginfig(3);  %graph of rank and nullity on iteration
  %numeric u;  %scaling factor
  %numeric v;  %vertical scaling factor
  %numeric w;  %horizontal scaling factor
  numeric a, b; % a is width, b is height
  a=2.5in; b=1.25in;
  pickup pensquare scaled line_width_light;
  draw (0,b)--(0,0)--(a,0);
  label.lft(btex \begin{tabular}{r}
                      nullity of $t^j$ (above) \\ 
                      and                      \\
		      rank of $t^j$ (below)
		    \end{tabular} etex,.5[(0,b),(0,0)]);
  label.bot(btex Power $j$ of the transformation etex,.5[(0,0),(a,0)]);
endfig;





beginfig(4) % equiv relation; row-equiv mats from ch1.27, further split 
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1in; v:=u; w:=v; % was: 1in

  path p[]; partition; % dotlabels.ulft(5,6,7,8,9,10,11,12,13);
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.8[x0,x9]; y14=.7[y10,y9]; drawpoint(z14);
    label.rt(btex {\scriptsize $A$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
    label.rt(btex {\scriptsize $B$} etex,z15);

  pickup pencircle scaled line_width_light;
  % split part in center
  z20=.5[z6,z8]; x21=.8[x20,x14]; y21=y20;
    z22=(z20--(3[z20,z21])) intersectionpoint p3;
    p20 = z20--z22;
    draw p20 dashed evenly scaled .5;
  z23 = point .6 of p1;
    z24 = whatever[z20,z22]; x24 = x23;
    p21 = z23--z24;
    draw p21 dashed evenly scaled .5;
  % split part in upper left
  z30 = point .25 of p1;
    z31 = whatever[z0,z3]; y31 = y30;
    p30 = z30--z31; 
    draw p30 dashed evenly scaled .5;
  % split part in upper right
  z40 = point .55 of p4;
  z41 = point .85 of p4;
    z42 = whatever[z2,z3]; x42 = x40;
    p40 = z40--z42;
    z43 = whatever[z2,z3]; x43 = x41;
    p41 = z41--z43;
    draw p40 dashed evenly scaled .5;
    draw p41 dashed evenly scaled .5;
endfig;







beginfig(5) % equiv relation; finer partition needs more reps 
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1in; v:=u; w:=v; % was: 1in

  path p[]; partition; % dotlabels.ulft(5,6,7,8,9,10,11,12,13);
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.8[x0,x9]; y14=.7[y10,y9]; %drawpoint(z14);
    label.rt(btex {\scriptsize $\star$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; %drawpoint(z15);
    label.rt(btex {\scriptsize $\star$} etex,z15);

  pickup pencircle scaled line_width_light;
  % split part in center
  z20=.5[z6,z8]; x21=.8[x20,x14]; y21=y20;
    z22=(z20--(3[z20,z21])) intersectionpoint p3;
    p20 = z20--z22;
    draw p20 dashed evenly scaled .5;
  z23 = point .6 of p1;
    z24 = whatever[z20,z22]; x24 = x23;
    p21 = z23--z24;
    draw p21 dashed evenly scaled .5;
    z25=.55[z20,z24]; z26=.4[z24,z23];
    label(btex {\scriptsize $\star$} etex,(x25,y26));
  % split part in upper left
  z30 = point .25 of p1;
    z31 = whatever[z0,z3]; y31 = y30;
    p30 = z30--z31; 
    draw p30 dashed evenly scaled .5;
    z32=.35[z31,z30]; z33=.5[z6,z31];
    label(btex {\scriptsize $\star$} etex,(x32,y33));
    z34=.55[z31,z30]; z35=.5[z3,z31];
    label(btex {\scriptsize $\star$} etex,(x34,y35));
  % split part in upper right
  z40 = point .55 of p4;
  z41 = point .85 of p4;
    z42 = whatever[z2,z3]; x42 = x40;
    p40 = z40--z42;
    z43 = whatever[z2,z3]; x43 = x41;
    p41 = z41--z43;
    draw p40 dashed evenly scaled .5;
    draw p41 dashed evenly scaled .5;

    z44=.5[z5,z43]; z45=.45[z41,z43];
    label(btex {\scriptsize $\star$} etex,(x44,y45));
    z46=.5[z43,z42]; z47=.55[z41,z43];
    label(btex {\scriptsize $\star$} etex,(x46,y47));
    z48=.45[z42,z11]; z49=.65[z40,z42];
    label(btex {\scriptsize $\star$} etex,(x48,y49));
  % then lower left
  z50=.4[z0,z7]; z51=.4[z0,z8];
  label(btex {\scriptsize $\star$} etex,(x50,y51));

  %dotlabels.top(20,21,22,23,24,30,31,40,41,42,43);
endfig;








% ==================== Linear Recurrences ===============


beginfig(6) % Tower of Hanoi (three disks at start) 
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v; %

  save disk_length, disk_width, disk_hgt;
  numeric disk_length, disk_width, disk_hgt;
  disk_length = 8u;  disk_width = .4disk_length; disk_hgt = .2u;
  save needle_shift; pair needle_shift; needle_shift = (1.2disk_length,0v);
  save needle_length, needle_width, needle_hgt;
  numeric needle_length, needle_width, needle_hgt; % how thick is body of bee?
  needle_length = .4u; needle_width = .4needle_length; needle_hgt = 6u;
  % left needle
  drawdisk(disk_length,disk_width,disk_hgt);
  drawdisk(.9disk_length,.9disk_width,disk_hgt) shifted (0,1.5disk_hgt);
  drawdisk(.8disk_length,.8disk_width,disk_hgt) shifted (0,3disk_hgt);
  drawdisk(needle_length,needle_width,needle_hgt-3disk_hgt)
     shifted (0,needle_hgt);
  % middle needle
  drawdisk(needle_length,needle_width,needle_hgt)
     shifted (0,needle_hgt) shifted needle_shift;
  % right needle
  drawdisk(needle_length,needle_width,needle_hgt)
     shifted (0,needle_hgt) shifted 2needle_shift;
endfig;





beginfig(7) % Tower of Hanoi (three disks at start) 
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v; %

  save disk_length, disk_width, disk_hgt;
  numeric disk_length, disk_width, disk_hgt;
  disk_length = 8u;  disk_width = .4disk_length; disk_hgt = .2u;
  save needle_shift; pair needle_shift; needle_shift = (1.2disk_length,0v);
  save needle_length, needle_width, needle_hgt;
  numeric needle_length, needle_width, needle_hgt; % how thick is body of bee?
  needle_length = .4u; needle_width = .4needle_length; needle_hgt = 6u;
  % left needle
  drawdisk(disk_length,disk_width,disk_hgt);
  drawdisk(needle_length,needle_width,needle_hgt-disk_hgt)
     shifted (0,needle_hgt);
  % middle needle
  drawdisk(.9disk_length,.9disk_width,disk_hgt)
    shifted needle_shift;
  drawdisk(.8disk_length,.8disk_width,disk_hgt)
    shifted (0,1.5disk_hgt) shifted needle_shift;
  drawdisk(needle_length,needle_width,needle_hgt-2disk_hgt)
     shifted (0,needle_hgt) shifted needle_shift;
  % right needle
  drawdisk(needle_length,needle_width,needle_hgt)
     shifted (0,needle_hgt) shifted 2needle_shift;
endfig;


end