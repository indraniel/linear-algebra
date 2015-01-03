// r3_subspaces_spans.asy
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

// node rthree=box("$\Re^3$",(0pt,dimthree),margin,style1,mag);
node rthree=box("$\spanof{\,\set{\colvec{1 \\ 0 \\ 0},\colvec{0 \\ 1 \\ 0},\colvec{0 \\ 0 \\ 1}}\,}$",(0pt,dimthree),margin,style1,mag);
// node xyplane=box("$xy$-plane",(-3.4*horiz_gap,dimtwo),margin,style1,mag);
node xyplane=box("$\spanof{\,\set{\colvec{1 \\ 0 \\ 0},\colvec{0 \\ 1 \\ 0}}\,}$",(-3.4*horiz_gap,dimtwo),margin,style1,mag);
// node pone=box("$\set{\colvec{x \\ y \\ z}\suchthat x+y+z=0}$",(-1.7*horiz_gap,dimtwo),margin,style1,mag);
node pone=box("$\spanof{\,\set{\colvec{-1 \\ 1 \\ 0},\colvec{-1 \\ 0 \\ 1}}\,}$",(-1.7*horiz_gap,dimtwo),margin,style1,mag);
// node ptwo=box("$\set{\colvec{x \\ y \\ z}\suchthat x+2z=0}$",(0.1*horiz_gap,dimtwo),margin,style1,mag);
node ptwo=box("$\spanof{\,\set{\colvec{0 \\ 1 \\ 0},\colvec{-2 \\ 0 \\ 1}}\,}$",(0.1*horiz_gap,dimtwo),margin,style1,mag);
node pthree=box("\ldots",(1.1*horiz_gap,dimtwo),margin,style1,mag);
// node yaxis=box("$y$-axis",(-4.3*horiz_gap,dimone),margin,style1,mag);
node yaxis=box("$\spanof{\,\set{\colvec{0 \\ 1 \\ 0}}\,}$",(-4.3*horiz_gap,dimone),margin,style1,mag);
node lone=box("$\spanof{\,\set{\colvec{-2 \\ -1 \\ 1}}\,}$",(-2.2*horiz_gap,dimone),margin,style1,mag);
// node ltwo=box("$\set{\colvec{x \\ y \\ z}\suchthat \text{$y=2x$ and $z=0$}}$",(0.2*horiz_gap,dimone),margin,style1,mag);
node ltwo=box("$\spanof{\,\set{\colvec{1/2 \\ 1 \\ 0}}\,}$",(0.2*horiz_gap,dimone),margin,style1,mag);
node lthree=box("\ldots",(1.1*horiz_gap,dimone),margin,style1,mag);
// node triv=box("trivial subspace $\set{\colvec{0 \\ 0 \\ 0}}$",(0,dimzero),margin,style1,mag);
node triv=box("$\spanof{\,\set{}\,}$",(0,dimzero),margin,style1,mag);

// draw the nodes
draw(rthree,xyplane,pone,ptwo,pthree,yaxis,lone,ltwo,lthree,triv);

// draw the connections
draw(rthree--xyplane,edgepen);
draw(rthree--pone,edgepen);
draw(rthree--ptwo,edgepen);
draw(xyplane--yaxis,edgepen);
draw(xyplane--ltwo,edgepen);
draw(ptwo--lone,edgepen);
draw(ptwo--yaxis,edgepen);
draw(yaxis--triv,edgepen);
draw(lone--triv,edgepen);
draw(ltwo--triv,edgepen);
