// p2_subspaces_spans.asy
import jh;
// real height; height=8.5cm; size(0,height); // beamer is 12.8cm x 9.6cm
import settings;
settings.render=0;   // for png: -10;  // fewer jaggies but very slow
// settings.maxtile=(10,10);
settings.outformat="pdf";

import node;

// parameters to lay out the nodes
real level_gap=2.65cm;
real horiz_gap=2cm;

// height of the four levels
real dimthree=3*level_gap;
real dimtwo=2*level_gap;
real dimone=1*level_gap;
real dimzero=0*level_gap;

real mag=0.75;
real margin=4pt;

pen edgepen=fontsize(8pt)+linewidth(0.4pt)+lightblue;
draw_t style1=FillDrawer(white,white);  // node boxes with no edge
defaultnodestyle=nodestyle(xmargin=2pt, ymargin=1pt, drawfn=style1);

node p2=box("$\spanof{\,\set{x^2,x,1}\,}$",(0pt,dimthree),margin,style1,mag);
node linear=box("\spanof{\,\set{x,1}\,}",(-3.4*horiz_gap,dimtwo),margin,style1,mag);
node pone=box("$\spanof{\,\set{-x^2+x,-x^2+1}\,}$",(-1.7*horiz_gap,dimtwo),margin,style1,mag);
// node ptwo=box("$\set{ax^2+bx+c\suchthat 2a-b=0}$",(0.1*horiz_gap,dimtwo),margin,style1,mag);
node pthree=box("\ldots",(0.2*horiz_gap,dimtwo),margin,style1,mag);
node consts=box("\spanof{\,\set{1}\,}",(-4.3*horiz_gap,dimone),margin,style1,mag);
node lone=box("$\spanof{\,\set{x^2+x+1}\,}$",(-2.2*horiz_gap,dimone),margin,style1,mag);
// node ltwo=box("$\set{ax^2+bx+c\suchthat \text{$a-b-c=0$ and $c=0$}}$",(0.2*horiz_gap,dimone),margin,style1,mag);
node lthree=box("\ldots",(-0.3*horiz_gap,dimone),margin,style1,mag);
node triv=box("$\spanof{\,\set{}\,}$",(0,dimzero),margin,style1,mag);

// draw the nodes
draw(p2,linear,pone,pthree,consts,lone,lthree,triv);

// draw the connections
draw(p2--linear,edgepen);
draw(p2--pone,edgepen);
// draw(p2--ptwo,edgepen);
draw(linear--consts,edgepen);
draw(pone--consts,edgepen);
// draw(ptwo--lone,edgepen);
// draw(ptwo--consts,edgepen);
draw(consts--triv,edgepen);
draw(lone--triv,edgepen);
// draw(ltwo--triv,edgepen);
