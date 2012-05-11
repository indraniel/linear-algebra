// jh.asy  Asmyptote common definitions

import fontsize;
defaultpen(fontsize(9.24994pt));
import texcolors;

pen FILLCOLOR=rgb("fff0ca");

pen MAINPEN=linecap(0)
             +linewidth(0.4pt);
pen VECTORPEN=linecap(0)
              +linewidth(0.8pt);
real VECTORHEADSIZE=5;
pen THINPEN=linecap(0)
             +linewidth(0.25pt);
pen DASHPEN=linecap(0)
             +linewidth(0.4pt)
             +linetype(new real[] {8,8});
pen FCNPEN=linecap(0)
             +gray(0.3)
             +linewidth(1.5pt)
             +opacity(.5,"Normal");
pen AXISPEN=linecap(0)
             +gray(0.3)
             +linewidth(0.4pt)
             +opacity(.5,"Normal");
pen DXPEN=linecap(0)
             +red
             +linewidth(1pt);

texpreamble("\usepackage{conc}");
