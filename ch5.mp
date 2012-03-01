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
    glabel.bot(btex \small Power $j$ of the transformation etex,OUT);
    otick.bot(btex \scriptsize $0$etex,1);    
    otick.bot(btex \scriptsize $1$etex,2);    
    otick.bot(btex \scriptsize $2$etex,3);    
    otick.bot(btex \scriptsize $j$etex,5);    
    otick.bot(btex{\ }etex,8);    
    grid.bot(btex$n$etex,9) withcolor .85white;    
    otick.bot(btex{\ }etex,10);    
    grid.lft(btex \small $n$etex,8) withcolor .85white;    
    otick.lft(btex{\ }etex,7);    
    otick.lft(btex{\ }etex,6);    
    otick.lft(btex$\small \text{rank}(t^j)$etex,3);    
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
    label.rt(btex {\scriptsize $S$} etex,z14);
  x15=.75[x0,x9]; y15=.35[y10,y9]; drawpoint(z15);
    label.rt(btex {\scriptsize $T$} etex,z15);

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




beginfig(8) % graph of rank falling and nullity rising
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v; %
  
  % axes
  z0=(0w,0v);
  z1=(+.5w,0v); z2=(21.5w,0v);  % x axis
  z3=(0w,+.5v); z4=(0w,9.5v);  % y axis
  pickup pensquare scaled line_width_light;
  draw z1--z2;
  draw z3--z4;
  % label.lrt(btex \small power etex,z2);
  % label.ulft(btex \small rank etex,z4);
  % point of interest
  z10=(10w,3.75v);
  % ticks
  pickup updown_tick;
  for i = 1 upto 3:
    drawdot (i*w,0v);
  endfor
  label.bot(btex \scriptsize $0$ etex,(1w,0v));
  label.bot(btex \scriptsize $1$ etex,(2w,0v));
  label.bot(btex \scriptsize $2$ etex,(3w,0v));
  drawdot (x10,0v);
  label.bot(btex \scriptsize $j$ etex,(10w,0v));
  for i = 17 upto 21:
    drawdot (i*w,0v);
  endfor
  % label.bot(btex \scriptsize $k$ etex,(18w,0v));
  label.bot(btex \scriptsize $n$ etex,(20w,0v));
  % label.bot(btex \scriptsize $k+1$ etex,(14w,0v));
  pickup sidetoside_tick;
  for i = 9 upto 9:
    drawdot (0w,i*v);
  endfor
  label.lft(btex \scriptsize $n$ etex,(0w,9v));
  % drawdot (0w,y10);
  for i = 1 upto 1:
    drawdot (0w,i*v);
  endfor
  label.lft(btex \scriptsize $0$ etex,(0w,1v));
  % The points
  numeric whisker_width; whisker_width=.4v;
  pickup pencircle scaled line_width_light;
  drawpoint(z10);
    pickup pensquare  scaled line_width_light;
    draw (x10,y10+0.5v)--(x10,y4-0.5v) withcolor .8white;  % vert line above dot
    draw (x10-.5whisker_width,y4-0.5v)--(x10+.5whisker_width,y4-0.5v) withcolor .8white; % whisker at  top
    draw (x10-.5whisker_width,y10+0.5v)--(x10+.5whisker_width,y10+0.5v) withcolor .8white; % whisker at  bot
    label.rt(btex \scriptsize $\nullity (t^j)$ etex,(x10,.5[y10,y4]));
    draw (x10,y10-0.5v)--(x10,1v) withcolor .8white; % vert line below dot
    draw (x10-.5whisker_width,y10-0.5v)--(x10+.5whisker_width,y10-0.5v) withcolor .8white; % whisker at top
    draw (x10-.5whisker_width,1v)--(x10+.5whisker_width,1v) withcolor .8white; % whisker at bot
    label.lft(btex \scriptsize $\rank (t^j)$ etex,(x10,.55[y10,1v]));
  pickup pencircle scaled line_width_light;
  drawpoint((1w,9v));
  drawpoint((2w,7v));
  drawpoint((3w,6v));
  drawpoint((17w,2.2v));
  drawpoint((18w,2v));
  drawpoint((19w,2v));
  drawpoint((20w,2v));
  % drawpoint((21w,2v));
  label(btex \scriptsize $\ldots$ etex,(21w,2v));
  % Generalized spaces
    z20=(20w,2v); % were to anchor the line for generalized spaces
    pickup pensquare  scaled line_width_light;
    draw (x20,y20+0.5v)--(x20,y4-0.5v) withcolor .8white;  % vert line above dot
    draw (x20-.5whisker_width,y4-0.5v)--(x20+.5whisker_width,y4-0.5v) withcolor .8white; % whisker at  top
    draw (x20-.5whisker_width,y20+0.5v)--(x20+.5whisker_width,y20+0.5v) withcolor .8white; % whisker at  bot
    label.rt(btex \scriptsize $\dim(\gennullspace{t})$ etex,(x20,.5[y20,y4]));
    draw (x20,y20-0.5v)--(x20,1v) withcolor .8white; % vert line below dot
    draw (x20-.5whisker_width,y20-0.5v)--(x20+.5whisker_width,y20-0.5v) withcolor .8white; % whisker at top
    draw (x20-.5whisker_width,1v)--(x20+.5whisker_width,1v) withcolor .8white; % whisker at bot
    label.rt(btex \scriptsize $\dim(\genrangespace{t})$ etex,(x20,.8[y20,1v]));
endfig;



%--------------------------------
%  Topic: Page Rank
%    Graph illustrating page links
%
beginfig(9);   % m
  %numeric u;  %scaling factor
  %numeric v;  %vertical scaling factor
  %numeric w;  %horizontal scaling factor
  numeric circlescale; circlescale=19pt;
  path node; node=fullcircle scaled circlescale;
  path n[]; % node paths
  pickup pencircle scaled line_width_light;
  z1=(0w,6v);
    n1=node shifted z1;
    draw n1; label(btex \small $p_1$ etex,z1);
  z2=(9w,y1);
    n2=node shifted z2;
    draw n2; label(btex \small $p_2$ etex,z2);
  z3=(x2,0v);
    n3=node shifted z3;
    draw n3; label(btex \small $p_3$ etex,z3);
  z4=(x1,y3);
    n4=node shifted z4;
    draw n4; label(btex \small $p_4$ etex,z4);
  path p[], q[];
  pair times[];  % intersection times
  % arrow from p1 to p2 
  p12=z1--z2;  
  times121=p12 intersectiontimes n1;
  times122=p12 intersectiontimes n2;
  drawarrow subpath(xpart(times121)+.05,xpart(times122)-.05) of p12;
  % arrow from p2 to p3 
  p23=z2--z3;  
  times232=p23 intersectiontimes n2;
  times233=p23 intersectiontimes n3;
  drawdblarrow subpath(xpart(times232)+.05,xpart(times233)-.05) of p23;
  % arrow from p3 to p1 
  p31=z3--z1;  
  times313=p31 intersectiontimes n3;
  times311=p31 intersectiontimes n1;
  drawarrow subpath(xpart(times313)+.05,xpart(times311)-.05) of p31;
  % arrow from p3 to p4 
  p34=z3--z4;  
  times343=p34 intersectiontimes n3;
  times344=p34 intersectiontimes n4;
  drawarrow subpath(xpart(times343)+.05,xpart(times344)-.05) of p34;
endfig;


%    Exercise from KURT BRYAN AND TANYA LEISE
%
beginfig(10);   % m
  %numeric u;  %scaling factor
  %numeric v;  %vertical scaling factor
  %numeric w;  %horizontal scaling factor
  numeric circlescale; circlescale=19pt;
  path node; node=fullcircle scaled circlescale;
  path n[]; % node paths
  pickup pencircle scaled line_width_light;
  z1=(0w,6v);
    n1=node shifted z1;
    draw n1; label(btex \small $p_1$ etex,z1);
  z2=(9w,y1);
    n2=node shifted z2;
    draw n2; label(btex \small $p_2$ etex,z2);
  z3=(x2,0v);
    n3=node shifted z3;
    draw n3; label(btex \small $p_3$ etex,z3);
  z4=(x1,y3);
    n4=node shifted z4;
    draw n4; label(btex \small $p_4$ etex,z4);
  path p[], q[];
  pair times[];  % intersection times
  % arrow from p1 to p2 
  p12=z1--z2;  
  times121=p12 intersectiontimes n1;
  times122=p12 intersectiontimes n2;
  drawarrow subpath(xpart(times121)+.05,xpart(times122)-.05) of p12;
  % arrow from p1 to p3 
  p13=z1--z3;  
  times131=p13 intersectiontimes n1;
  times133=p13 intersectiontimes n3;
  drawdblarrow subpath(xpart(times131)+.05,xpart(times133)-.05) of p13;
  % arrow from p1 to p4 
  p14=z1--z4;  
  times141=p14 intersectiontimes n1;
  times144=p14 intersectiontimes n4;
  drawdblarrow subpath(xpart(times141)+.05,xpart(times144)-.05) of p14;
  % arrow from p2 to p3 
  p23=z2--z3;  
  times232=p23 intersectiontimes n2;
  times233=p23 intersectiontimes n3;
  drawarrow subpath(xpart(times232)+.05,xpart(times233)-.05) of p23;
  % arrow from p2 to p4 
  p24=z2--z4;  
  times242=p24 intersectiontimes n2;
  times244=p24 intersectiontimes n4;
  drawarrow subpath(xpart(times242)+.05,xpart(times244)-.05) of p24;
  % arrow from p4 to p5 
  p43=z4--z3;  
  times433=p43 intersectiontimes n4;
  times434=p43 intersectiontimes n3;
  drawarrow subpath(xpart(times433)+.05,xpart(times434)-.05) of p43;
endfig;

%  Search: every site points in a circle
%
beginfig(11);   % 
  %numeric u;  %scaling factor
  %numeric v;  %vertical scaling factor
  %numeric w;  %horizontal scaling factor
  numeric circlescale; circlescale=19pt;
  path node; node=fullcircle scaled circlescale;
  path n[]; % node paths
  pickup pencircle scaled line_width_light;
  z1=(0w,6v);
    n1=node shifted z1;
    draw n1; label(btex \small $p_1$ etex,z1);
  z2=(9w,y1);
    n2=node shifted z2;
    draw n2; label(btex \small $p_2$ etex,z2);
  z3=(x2,0v);
    n3=node shifted z3;
    draw n3; label(btex \small $p_3$ etex,z3);
  z4=(x1,y3);
    n4=node shifted z4;
    draw n4; label(btex \small $p_4$ etex,z4);
  path p[], q[];
  pair times[];  % intersection times
  % arrow from p1 to p2 
  p12=z1--z2;  
  times121=p12 intersectiontimes n1;
  times122=p12 intersectiontimes n2;
  drawarrow subpath(xpart(times121)+.05,xpart(times122)-.05) of p12;
  % arrow from p2 to p3 
  p23=z2--z3;  
  times232=p23 intersectiontimes n2;
  times233=p23 intersectiontimes n3;
  drawarrow subpath(xpart(times232)+.05,xpart(times233)-.05) of p23;
  % arrow from p3 to p4 
  p34=z3--z4;  
  times343=p34 intersectiontimes n3;
  times344=p34 intersectiontimes n4;
  drawarrow subpath(xpart(times343)+.05,xpart(times344)-.05) of p34;
  % arrow from p4 to p1 
  p41=z4--z1;  
  times414=p41 intersectiontimes n4;
  times411=p41 intersectiontimes n1;
  drawarrow subpath(xpart(times414)+.05,xpart(times411)-.05) of p41;
endfig;




end