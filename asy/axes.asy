// axes.asy
//  Axes for book cover

import three;
import bsp;
import settings;
settings.outformat="pdf";
settings.render=0;  // just draw it, not three-d shape

size(72*3);  // 72 pts per inch

currentprojection=perspective(4,6.5,5);
currentlight=light(diffuse=gray(.6), ambient=yellow, specular=paleyellow,
                   specularfactor=0.1, viewport=false,(4,6.5,10));

material m_xz=
  //       diffusepen, ambientpen, emissivepen,  specularpen
  material(  grey,       yellow,     gray(0.3),        orange);
material m_xy=
  //       diffusepen, ambientpen, emissivepen,  specularpen
  material(  gray(0.9),       yellow,     black,        orange);
material m_yz=
  //       diffusepen, ambientpen, emissivepen,  specularpen
  material(  grey,       yellow,     black,        gray(0.1));

pen p=linewidth(0.4)+squarecap+miterjoin+black+opacity(0.2);
defaultpen(p);

pen slateblue = rgb(2/255,  101/255,  116/255);
pen puffblue  = rgb(0/255,  194/255,  196/255);
pen beige     = rgb(216/255, 195/255, 148/255);
pen burgundy  = rgb(166/255, 5/255,   3/255);

real XLIMIT_POS=1;
real XLIMIT_NEG=-1*XLIMIT_POS;
real YLIMIT_POS=2;
real YLIMIT_NEG=-1*YLIMIT_POS;
real ZLIMIT_POS=4;
real ZLIMIT_NEG=-1*ZLIMIT_POS;

pen INSIDE_SHADE = gray(0.7);
pen OUTSIDE_SHADE = gray(0.99);

// boundary of quandrants to be shaded
path3 floor_q1 = (0,0,ZLIMIT_NEG)--(XLIMIT_POS,0,ZLIMIT_NEG)
  --(XLIMIT_POS,YLIMIT_POS,ZLIMIT_NEG)--(0,YLIMIT_POS,ZLIMIT_NEG)--cycle;
path3 floor_q2 = (0,0,ZLIMIT_NEG)--(XLIMIT_NEG,0,ZLIMIT_NEG)
  --(XLIMIT_NEG,YLIMIT_POS,ZLIMIT_NEG)--(0,YLIMIT_POS,ZLIMIT_NEG)--cycle;
path3 floor_q3 = (0,0,ZLIMIT_NEG)--(XLIMIT_NEG,0,ZLIMIT_NEG)
  --(XLIMIT_NEG,YLIMIT_NEG,ZLIMIT_NEG)--(0,YLIMIT_NEG,ZLIMIT_NEG)--cycle;
path3 floor_q4 = (0,0,ZLIMIT_NEG)--(XLIMIT_POS,0,ZLIMIT_NEG)
  --(XLIMIT_POS,YLIMIT_NEG,ZLIMIT_NEG)--(0,YLIMIT_NEG,ZLIMIT_NEG)--cycle;
// quadrants
surface q1 =surface(floor_q1,new pen[] {INSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE});
surface q2 =surface(floor_q2,new pen[] {INSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE});
surface q3 =surface(floor_q3,new pen[] {INSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE});
surface q4 =surface(floor_q4,new pen[] {INSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE,OUTSIDE_SHADE});
picture shadow_pic;
size(shadow_pic,72*2);
draw(shadow_pic,q1,nolight);
draw(shadow_pic,q2,nolight);
draw(shadow_pic,q3,nolight);
draw(shadow_pic,q4,nolight);
shipout("shadow",shadow_pic);
// layer();

// // shadow
// import graph;

// // Find the projection to make this under the axes
// path3 floorplane_path=(0,0,ZLIMIT_NEG)--(1,0,ZLIMIT_NEG)
//   --(1,1,ZLIMIT_NEG)--(0,1,ZLIMIT_NEG)--cycle;
// transform3 shade_transform=planeproject(floorplane_path,dir=normal(floorplane_path));

// pen[] pens = new pen[] {gray(.9), gray(.94), gray(.97), gray(.98),gray(.99),gray(.998),red};
// path outerpath = circle((0,0), 2);
// path innerpath = (1,0.8);

// path midpath(path p1, path p2, real t) {
//   pair f(real s) {
//     return (1-t)*relpoint(p1, s) + t*relpoint(p2, s);
//   }
//   path p = graph(f, 0, 1, operator ..) -- cycle;
//   return p;
// }

// int lastpath = pens.length - 1;
// path[] paths = new path[lastpath + 1];
// surface[] grays = new surface[lastpath + 1];
// for (int i = 0; i <= lastpath; ++i) {
//   paths[i] = midpath(innerpath, outerpath, i/lastpath);
//   grays[i] = xscale3(5)*surface(paths[i]);  // in XYPlane
// }

// draw(paths, pens);




path3 xz=(XLIMIT_POS,0,ZLIMIT_POS)
  --(XLIMIT_NEG,0,ZLIMIT_POS)
  --(XLIMIT_NEG,0,ZLIMIT_NEG)
  --(XLIMIT_POS,0,ZLIMIT_NEG)
  --cycle;
path3 xy=(XLIMIT_POS,YLIMIT_POS,0)
  --(XLIMIT_NEG,YLIMIT_POS,0)
  --(XLIMIT_NEG,YLIMIT_NEG,0)
  --(XLIMIT_POS,YLIMIT_NEG,0)
  --cycle;
path3 yz=(0,YLIMIT_POS,ZLIMIT_POS)
  --(0,YLIMIT_NEG,ZLIMIT_POS)
  --(0,YLIMIT_NEG,ZLIMIT_NEG)
  --(0,YLIMIT_POS,ZLIMIT_NEG)
  --cycle;

// surface xyplane = surface(xy);
// surface xzplane = surface(xz);
// surface yzplane = surface(yz);
// draw(xyplane,m_xy);
// draw(xzplane,m_xz);
// draw(yzplane,m_yz);
// draw(xy);
// draw(xz);
// draw(yz);

picture pic;
size(pic,72*3);

// Use asymptote "limited" hidden surface removal
face[] faces;

// pen[] p={red,green,blue,black};
// latticeshade(faces.push(floor_q1),floor_q1,new pen[][] {{INSIDE_SHADE,OUTSIDE_SHADE},{OUTSIDE_SHADE,OUTSIDE_SHADE}});

filldraw(faces.push(xy),project(xy),fillpen=beige,drawpen=p);
filldraw(faces.push(xz),project(xz),fillpen=puffblue,drawpen=p);
filldraw(faces.push(yz),project(yz),fillpen=slateblue,drawpen=p);
add(pic,faces);
// add(xscale3(4.0)*pic);

// add(currentpicture,shadow_pic);
add(currentpicture,pic);
shipout("axes",currentpicture);
