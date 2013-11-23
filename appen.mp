% appen.mp
%  MetaPost input file with appendix pictures.
%
% HISTORY
%  2001-Apr-15 Jim Hefferon jim@joshua.smcvt.edu  Written
verbatimtex
%&latex
\documentclass{book}
\usepackage{bookjh}  
\usepackage{linalgjh}
\usepackage{xfrac} % for figure 12
\begin{document}
etex

input jh
input arrow
input venn

defaultscale := 9pt/fontsize defaultfont;

numeric u;  %scaling factor
numeric v;  %vertical scaling factor
numeric w;  %horizontal scaling factor
u:=10pt; v:=u; w:=v;


def place_P(expr loc) =
  label(btex {\scriptsize $P$} etex, loc);
enddef;
def place_Q(expr loc) =
  label(btex {\scriptsize $Q$} etex, loc);
enddef;


beginfig(1); % diagram of a NOT
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_one(true,false);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));
  pickup pencircle scaled line_width_dark;
  z0 = (.15venn_width,.2venn_height);
  drawdot(z0);
  label.rt(btex {\scriptsize $x$} etex,z0);
endfig;

beginfig(2); % diagram of a AND
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_two(false,false,true,false);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));
  place_Q((venn_circle_right_shift,venn_circle_top_shift)
           +.45(venn_circle_diameter/2,venn_circle_diameter/2));
endfig;

beginfig(3); % diagram of a OR
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_two(false,true,true,true);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));
  place_Q((venn_circle_right_shift,venn_circle_top_shift)
           +.45(venn_circle_diameter/2,venn_circle_diameter/2));
endfig;

beginfig(4); % diagram of a IMPLIES
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_one(false,true);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));

  save pth, superset; path pth, superset;
  pth = fullcircle rotated 90 scaled 1.2venn_circle_diameter
        shifted (venn_circle_left_shift,venn_circle_top_shift);
  superset = subpath (0length(pth),.5length(pth)) of (pth shifted (-.5u,0))
             ..subpath (.5length(pth),length(pth)) of (pth shifted (2u,0))
	     ..cycle;
  pickup pencircle scaled venn_pen; draw superset;
  place_Q((venn_circle_right_shift,venn_circle_top_shift)
           +.45(venn_circle_diameter/2,venn_circle_diameter/2)
	   +(2u,0));
endfig;



beginfig(5); % diagram of a IFF
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_one(false,true);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));
  place_Q((venn_circle_right_shift,venn_circle_top_shift)
           +.45(venn_circle_diameter/2,venn_circle_diameter/2));
endfig;



beginfig(6); % diagram of a forall
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_none(true);
endfig;



beginfig(7); % diagram of a exists
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_one(false,false);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));

  pickup pencircle scaled line_width_dark;
  % These are in the circle
  drawdot((0.5venn_width,0.45venn_height));
  drawdot((0.4venn_width,0.4venn_height));
  drawdot((0.54venn_width,0.6venn_height));
  % These are out
  drawdot((0.2venn_width,0.85venn_height));
  drawdot((0.6venn_width,0.1venn_height));
  drawdot((0.80venn_width,0.52venn_height));
  drawdot((0.3venn_width,0.15venn_height));
  % Cute idea to go random but donts end on the boundary, etc.
  % for i=1 upto 15:
  %   drawdot((uniformdeviate venn_width,uniformdeviate venn_height));
  % endfor
endfig;

beginfig(8); % diagram of a x\in P
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=10pt; v:=u; w:=v;

  draw_venn_one(false,true);
  place_P((venn_circle_left_shift,venn_circle_top_shift)
           +.45(-venn_circle_diameter/2,venn_circle_diameter/2));
  z0 = (venn_circle_left_shift,venn_circle_top_shift)
           -.3(-venn_circle_diameter/2,venn_circle_diameter/2);
  pickup pencircle scaled line_width_dark;
  drawdot(z0);
  label.rt(btex {\scriptsize $x$} etex,z0);
endfig;



beginfig(9) % bean with mapsto
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
  forsuffixes s = 0, 2, 4: 
    % draw (many_pts shifted z[s]) dashed withdots scaled 0.3;
    pickup pencircle scaled line_width_dark;
    drawdot (z[s]);
    drawdot (z[s+1] shifted codshift);
    pickup pencircle scaled line_width_light;
    draw_action_arrow((z[s]{(3,1)}..(z[s+1] shifted codshift)));
  endfor
  % a fe more int he codomain
  pickup pencircle scaled line_width_dark;
  drawdot ((.9w,.2v) shifted codshift);
  drawdot ((1.1w,4v) shifted codshift);
endfig;






beginfig(10) % equiv relation; partition with parts labelled
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.45[x0,x9]; y14=.5[y10,y9]; 
    label.rt(btex {\scriptsize $S_0$} etex,z14);
  x15=.15[x3,x5]; y15=.6[y6,y3]; 
    label.rt(btex {\scriptsize $S_1$} etex,z15);
  x16=.15[x5,x11]; y16=.35[y9,y5]; 
    label.rt(btex {\scriptsize $S_2$} etex,z16);
  x17=.1[x8,x7]; y17=.5[0,y8]; 
    label.rt(btex {\scriptsize $S_3$} etex,z17);
  %x18=.35[x8,x7]; y18=.5[y4,y8]; 
  %  label.rt(btex {\scriptsize $\star\;\Re^4$} etex,z18);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;





beginfig(11) % equiv relation; fractions split into equiv classes
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.45[x0,x9]; y14=.5[y10,y9]; 
    label.rt(btex {\tiny $._{0/1}$} etex,z14+(0u,.02v));
    label.rt(btex {\tiny $._{0/3}$} etex,z14+(.03u,-.07v));
  x15=.15[x3,x5]; y15=.6[y6,y3]; 
    label.rt(btex {\tiny $._{1/1}$} etex,z15+(0u,.02v));
    label.rt(btex {\tiny $._{2/2}$} etex,z15+(-.08u,-.06v));
    %label.rt(btex {\tiny $._{-3/-3}$} etex,z15+(-.09u,-.06v));
  x16=.15[x5,x11]; y16=.35[y9,y5]; 
    label.rt(btex {\tiny $._{2/4}$} etex,z16+(.03u,.03v));
    label.rt(btex {\tiny $._{-2/-4}$} etex,z16+(-.1u,-.03v));
  x17=.1[x8,x7]; y17=.5[0,y8]; 
    label.rt(btex {\tiny $._{4/3}$} etex,z17+(0u,.03v));
    label.rt(btex {\tiny $._{8/6}$} etex,z17+(.1u,-.08v));
  %x18=.35[x8,x7]; y18=.5[y4,y8]; 
  %  label.rt(btex {\scriptsize $\star\;\Re^4$} etex,z18);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;





beginfig(12) % equiv relation; fractions with lowest form
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.4[x0,x9]; y14=.5[y10,y9]; 
    label.rt(btex {\scriptsize $\star~{\sfrac{0}{1}}$} etex,z14);
  x15=.07[x3,x5]; y15=.62[y6,y3]; 
    label.rt(btex {\scriptsize $\star~{\sfrac{1}{1}}$} etex,z15);
  x16=.12[x5,x11]; y16=.35[y9,y5]; 
    label.rt(btex {\scriptsize $\star~{\sfrac{1}{2}}$} etex,z16);
  x17=.08[x8,x7]; y17=.4[0,y8]; 
    label.rt(btex {\scriptsize $\star~{\sfrac{4}{3}}$} etex,z17);
  %x18=.35[x8,x7]; y18=.5[y4,y8]; 
  %  label.rt(btex {\scriptsize $\star\;\Re^4$} etex,z18);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;





beginfig(13) % equiv relation; fractions with lowest form
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=1.2in; v:=u; w:=v;

  path p[]; partition;
  label(btex {\scriptsize \ldots} etex,z13);
  x14=.45[x0,x9]; y14=.5[y10,y9]; 
    label.rt(btex {\scriptsize $\star$} etex,z14);
  x15=.15[x3,x5]; y15=.6[y6,y3]; 
    label.rt(btex {\scriptsize $\star$} etex,z15);
  x16=.15[x5,x11]; y16=.35[y9,y5]; 
    label.rt(btex {\scriptsize $\star$} etex,z16);
  x17=.1[x8,x7]; y17=.5[0,y8]; 
    label.rt(btex {\scriptsize $\star$} etex,z17);
  %x18=.35[x8,x7]; y18=.5[y4,y8]; 
  %  label.rt(btex {\scriptsize $\star\;\Re^4$} etex,z18);
  %dotlabels.rt(1,2,3,5,6,7,8,9,10,11);
endfig;







end