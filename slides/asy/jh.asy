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

// HSL color space, to lighten or darken
//   see http://en.wikipedia.org/wiki/HSL_and_HSV
// To lighten, something like this:
//   HSL hsl=HSL(0.116,0.675,0.255);
//   hsl.l=1-((1-hsl.l)/4.0);
//   pen p=hsl.rgb();
struct HSL {
  real hue;  // hue in degrees
  real h; // hue in [0..1]
  real s;  // saturation
  real l;  // lightness

  // Initialize
  // expects r, g, b in [0..1]
  void operator init(real r, real g, real b) {
    real mincolorsize=min(r,g,b);
    real maxcolorsize=max(r,g,b);
    real chroma=maxcolorsize-mincolorsize;
    // hue
    real hprime;
    if (chroma==0) {
      hprime=0;
    } else if (maxcolorsize==r) {
      hprime=fmod((g-b)/chroma,6);
    } else if (maxcolorsize==g) {
      hprime=2+(b-r)/chroma;
    } else {
      hprime=4+(r-g)/chroma;
    }
    this.hue=60*hprime;
    this.h=this.hue/360.0;
    // lightness
    this.l=(maxcolorsize+mincolorsize)/2;
    //saturation
    if (chroma==0) {
      this.s=0;
    } else {
      this.s=chroma/(1-fabs(2*this.l-1));
    }
  }

  // return pen with the hsl converted to rgb
  // Note: does not handle grays 
  pen rgb() {
    real chroma=(1-fabs(2*this.l-1))*this.s;
    real hprime=this.hue/60.0;
    real x=chroma*(1-fabs(fmod(hprime,2.0)-1));
    real r1, g1, b1, m, r, g, b;
    if ((0<=hprime) && (hprime<1)) {
      r1=chroma; g1=x; b1=0;
    } else if ((1<=hprime) && (hprime<2)) {
      r1=x; g1=chroma; b1=0;
    } else if ((2<=hprime) && (hprime<3)) {
      r1=0; g1=chroma; b1=x;
    } else if ((3<=hprime) && (hprime<4)) {
      r1=0; g1=x; b1=chroma;
    } else if ((4<=hprime) && (hprime<5)) {
      r1=x; g1=0; b1=chroma;
    } else {
      r1=chroma; g1=0; b1=x;
    }
    m=this.l-chroma/2.0;
    r=r1+m; g=g1+m; b=b1+m;
    return rgb(r,g,b);
  }
}
