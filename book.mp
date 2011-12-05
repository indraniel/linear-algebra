% BOOK.mp
%  MetaPost input file for Linear Algebra by Jim Hefferon
verbatimtex
%&latex
\documentclass{book}
\usepackage{bookjh,linalgjh}
\usepackage{verbatim}
\begin{document}
etex

input boxes

% GLOBAL Values
color lightgray;
  lightgray=.70white;
color medgray;
  medgray=.60white;
color darkgray;
  darkgray=.35white;
color shading_color;
  shading_color=lightgray;  


% FIGURE 1
%   Map of part of Vermont
beginfig(1);
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

numeric line_width_dark, line_width_light;
line_width_dark:=0.8pt;
line_width_light:=0.4pt; %TeX's rule width

% MACROS
%  For drawing vectors, dark or light.
%  drawvec_dark((0,0),(3,1));
%  drawvec_light((0,0),(3,1));
numeric vector_scale_factor_light, vector_scale_factor_dark;
vector_scale_factor_dark:=line_width_dark;
vector_scale_factor_light:=line_width_light;
def drawvec_dark(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled vector_scale_factor_dark;
    drawarrow startpt--endpt;
  endgroup
enddef;
def drawvec_dark_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+vector_scale_factor_dark);
    drawarrow startpt--endpt withcolor white;
    drawvec_dark(startpt,endpt);
  endgroup
enddef;
def drawvec_light(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled vector_scale_factor_light;
    drawarrow startpt--endpt;
  endgroup
enddef;
def drawvec_light_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+vector_scale_factor_light);
    drawarrow startpt--endpt withcolor white;
    drawvec_light(startpt,endpt);
  endgroup
enddef;
def drawline_dark(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled line_width_dark;
    draw startpt--endpt;
  endgroup
enddef;
def drawline_dark_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+line_width_dark);
    draw startpt--endpt withcolor white;
    drawline_dark(startpt,endpt);
  endgroup
enddef;
def drawline_light(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled line_width_light;
    draw startpt--endpt;
  endgroup
enddef;
def drawline_light_with_border(expr startpt, endpt) =
  begingroup
    interim linecap:=butt;
    pickup pencircle scaled (0.75pt+line_width_light);
    draw startpt--endpt withcolor white;
    drawline_light(startpt,endpt);
  endgroup
enddef;
%................................
% Draw a point as a small, empty, circle.
def drawpoint(expr loc)=
  begingroup
    path ptcirc; ptcirc=fullcircle scaled (3.5*line_width_light) shifted loc;
    fill ptcirc withcolor white;
    pickup pencircle scaled line_width_light;
    draw ptcirc;
  endgroup
enddef;
%................................
% Label a triangle or rectangle in its center.
def center_triangle(expr vone, vtwo, vthree) =
  0.3333(vone+vtwo+vthree)
enddef;
def center_parallelogram(expr vone, vtwo) =
  0.5(vone+vtwo)
enddef;
%............LABELS....................
% Find a point near ptone in direction of pt2.
def near_toward(expr ptone, pttwo) =
  ((1/(arclength ((0,0)--pttwo)))*pttwo)+ptone)
enddef;
%............TICKS....................
% defaults
numeric ticklength, tickwidth; ticklength:=2pt; tickwidth:=.4pt;
pen updown_tick, sidetoside_tick;
    updown_tick:=pensquare shifted (-.5,0) xscaled ticklength yscaled tickwidth
                     rotated 90;
    sidetoside_tick:=pensquare shifted (-.5,0)
		       xscaled ticklength yscaled tickwidth;
% Make ticks that go up and down (e.g. for 2D x-axis or 3D z-axis).
def updown_ticks(expr numticks, first, offset) =
  begingroup
    pickup updown_tick;
    for i=0 upto (numticks-1):
      drawdot first shifted (i*offset);
    endfor
  endgroup
enddef;
% Make ticks that go side to side (y-axis or 3D x-axis).
def sidetoside_ticks(expr numticks, first, offset) =
  begingroup
    pickup sidetoside_tick;
    for i=0 upto (numticks-1):
      drawdot first shifted (i*offset);
    endfor
  endgroup
enddef;








% FIGURE 2
%   Parallelogram picture
beginfig(2);
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


% FIGURE 3
%   Parallelogram picture with areas totaled
beginfig(3);
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


% FIGURE 4
%   Effect of scalar multiplication: before.
beginfig(4);
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


% FIGURE 5
%   Effect of scalar multiplication: after.
beginfig(5);
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


% FIGURE 6
%   Effect of pivoting: before.
beginfig(6);
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


% FIGURE 7
%   Effect of pivoting: after.
beginfig(7);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  path pgram_before;
  
  u:=1pt; v:=u; w:=v;

  z0=(0w,0v);
  z1=(35w,0v); z2=(8w,24v);  % endpoints of the two vectors
  z3=z1+z2; % far corner
  z4=.35*z1; %k=.35
  z5=z4+z2;
  z6=z5+z1;

  pickup pencircle scaled line_width_light;
  pgram_before = z0--z1--z3--z2--cycle;
  draw z5--z6--z1;  %after parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z5);
    %drawvec_dark_with_border(z0,z1); 
  fill pgram_before withcolor lightgray;  %before parallelogram
  label.bot(btex {\scriptsize $\vec{v}$} etex,.5[z0,z1]);
  picture lab;
    lab=thelabel.lft(btex {\scriptsize $k\vec{v}+\vec{w}$} etex,.5[z0,z5]);
    %unfill bbox lab;
    draw lab;
  drawvec_dark(z0,z1);              drawvec_dark(z0,z5);           
endfig;


% FIGURE 8
%   Unit square.
beginfig(8);
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


% FIGURE 9
%   Area between two vectors, counterclockwise.
beginfig(9);
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
  %linecap:=squared;
  pgram = z0--z1--z3--z2--cycle;
  draw pgram;  %parallelogram

  drawvec_dark_with_border(z0,z1);  drawvec_dark_with_border(z0,z2);
  %fill pgram withcolor lightgray;  %parallelogram
  drawvec_dark(z0,z1);              drawvec_dark(z0,z2);

  label.lrt(btex {\small $\vec{u}$} etex,z1);
  label.ulft(btex {\small $\vec{v}$} etex,z2);

  % The arc between the vectors.
  arcbetweenvectors:=((halfcircle scaled 2.5u) cutbefore (z0--z1))
                         cutafter (z0--z2);
  pickup pencircle scaled line_width_light;
  begingroup
    interim ahlength:=.8*ahlength;
    drawarrow arcbetweenvectors dashed evenly scaled 0.3333;
  endgroup
endfig;


% FIGURE 10
%   Area between two vectors, this time clockwise.
beginfig(10);
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
  arcbetweenvectors:=((halfcircle scaled 2.5u) cutbefore (z0--z1))
                         cutafter (z0--z2);
  pickup pencircle scaled line_width_light;
  begingroup
    interim ahlength:=.8*ahlength;
    drawarrow reverse(arcbetweenvectors) dashed evenly scaled 0.3333;
  endgroup
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
% FIGURE 11
%   Parallelapiped.
beginfig(11);
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



% FIGURE 12
%   Area of a box, to be doubled.
beginfig(12);
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



% FIGURE 13
%   Area of a box, doubled.
beginfig(13);
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




% FIGURE 14
%   Area of a box, (offset from the origin) to be calcualted.  det2
beginfig(14);
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




% FIGURE 15
%   Area of a box, first half of contradiction, to be calcualted.  det2
beginfig(15);
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




% FIGURE 16
%   Area of a box, half of contradiction, to be calcualted.  det2
beginfig(16);
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




% FIGURE 17
%   Standard basis.  det2
beginfig(17);
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




% FIGURE 18
%   A non-standard basis.  det2
beginfig(18);
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
% FIGURE 19
%   3D axes, showing orientation
beginfig(19);
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
% FIGURE 20
%   Another 3D axes, showing negative orientation
beginfig(20);
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
% FIGURE 21
%   Parallelepiped, in the z=1 plane.
beginfig(21);
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

  % I don't understand what these do.
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

% FIGURE 22
%   Parallelogram picture
beginfig(22);
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

% FIGURE 23
%   Parallelogram picture with shaded box
beginfig(23);
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


% FIGURE 24
%   Parallelogram picture with shaded box dilated by x
beginfig(24);
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


% FIGURE 25
%   Parallelogram picture with shaded box dilated by x and shifted by y
beginfig(25);
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



% FIGURE 26
%   Pappus's theorem
beginfig(26);
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





% FIGURE 27
%   Three.III  Iterated transformation
beginfig(27);
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

% FIGURE 28
%   Parallelogram picture with shaded box; for cover
beginfig(28);
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


% FIGURE 29
%   Parallelogram picture with shaded box dilated by x; for cover
beginfig(29);
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


% FIGURE 30
%   Parallelogram picture with shaded box dilated by x, shifted by y; cover
beginfig(30);
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


