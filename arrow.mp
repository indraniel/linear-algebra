% -*-Fundamental-*-
% arrow.mp
% Add `arrowsimple' and `dblarrowsimple' commands that are like Hobby's
% arrow commands but do not fill in their arrowheads.
% 2000-Oct-22 Jim Hefferon jim@joshua.smcvt.edu
%      Jan-14 JH Went with perp lines

newinternal ahsimplelength, ahsimplewidth, ahsimpleangle;
% pick up Hobby's if none other specified
ahsimplelength := ahlength;    % Hobby's default arrowhead length 4bp
ahsimpleangle := ahangle;      % and default head angle 45 degrees
%  Remark: I like 15 degrees and 2.5 pts for a start.
%ahsimplewidth := 1pt           % width of fat end of arrowhead 

% arrowheadsimple
% ARGS 
%   p  The path, the end (highest time) of which will get an arrow
% RETURNS
%   the arrowhead to place at the end of p
% METHOD
%  Erect a number of line segs perp to the end of p, and draw arrowhead 
% through them.
%  The segs are regularly spaced in dist from the endpoint of p (taking the   
% p-time poroved to make them very noticably not evenly spaced).  The 
% lengths of the segments falls quadratically, giving them a curve. 
%   
vardef arrowheadsimple expr p =
  save q,e; path q; pair e;
  save jtime,m,r,s,x; path m[],r,s[]; numeric x,jtime[];

  if (ahsimplewidth <= 0pt):
    ahsimplewidth := 2*(ahsimplelength*sind(0.5*ahsimpleangle)/cosd(0.5*ahsimpleangle));            % width of fat end of arrowhead 
  fi

  e = point length p of p;  r = p shifted -e; 
  forsuffixes x=1,.66,.33:
    s[x] = makepath(pencircle scaled (2*x*ahsimplelength));
    jtime[x] = xpart(r intersectiontimes s[x]);
    m[x] = perp_line_to_path(r,2*x*x*ahsimplewidth,jtime[x]);
  endfor
  q = point 1 of m[1] .. point 1 of m[.66] .. point 1 of m[.33] .. (0,0)
       & (0,0) ..  point 0 of m[.33] .. point 0 of m[.66] .. point 0 of m[1];
  q shifted e
enddef;


% perp_line_to_path
%  returns a line of specified length perp to path at specified path-time
%
def perp_line_to_path(expr pth,lgth,pth_tme) =
  ((0,-.5lgth)--(0,.5lgth)) rotated angle(direction pth_tme of pth) shifted point pth_tme of pth
enddef;
 
% these are Hobby's with a `simp' added
path _asimpth;
def drawarrowsimple expr p = _asimpth:=p; _finarrsim enddef;
def drawdblarrowsimple expr p = _asimpth:=p; _findarrsim enddef;

def _finarrsim text t =
  draw _asimpth t;
  draw arrowheadsimple _asimpth  t
enddef;

def _findarrsim text t =
  draw _asimpth t;
  draw arrowheadsimple _asimpth withpen currentpen  t;
  draw arrowheadsimple  reverse _asimpth  withpen currentpen  t
enddef;

% cutasimple
%  draw an arrow and return a point halfway through the arrow
% ARGS
%  a, b  two points previously specified as boxit suffixes
%  p  a path intersecting a's and b's bpath (e.g., probably
%     this path goes through a.c and b.c, the centers of a's box and 
%     b's box)
% RETURNS
%  a point on the arrow halfway from a to b
% COMMENTS 
%   from the MetaPost manual p. 60
vardef cutasimple(suffix a,b) expr p =
  save q; path q;
  q = p cutbefore bpath.a cutafter bpath.b;
  drawarrowsimple q;
  point .5*length q of q
enddef;



%=============================================================
% Action Arrows
%
% Acts like LaTeX's \mapsto: |---->
%  
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
newinternal eraser_width;
eraser_width := 1.5pt;

def action_arrow(expr p) =
  begingroup
    interim ahsimplelength := 4pt; 
    interim ahsimplewidth := 1.5pt;
    interim ahsimpleangle := 2*angle(ahsimplewidth,ahsimplelength);
    % clear out background first 
    save currentpen; pen currentpen; currentpen = pencircle scaled eraser_width;
    drawarrowsimple(p) withcolor white;
    draw perp_line_to_path(p,2*ahsimplewidth,0) withcolor white;
    save currentpen; pen currentpen; currentpen = pencircle scaled 0.4pt;
    % now draw it
    drawarrowsimple(p);
    interim linecap:=butt;
    draw perp_line_to_path(p,2*ahsimplewidth,0);
  endgroup
enddef;

numeric _action_rad; _action_rad = 8pt;  % radius is ahlength

def draw_action_arrow(expr p) =
  save c; path c; c = fullcircle scaled _action_rad; 
  save s, f;  numeric s, f;
  (s,whatever) = p intersectiontimes (c shifted (point 0 of p));
  (f,whatever) = p intersectiontimes (c shifted (point infinity of p));
  save short_path; path short_path; short_path = subpath(s,f) of p;  
  action_arrow(short_path);
enddef;


%---------- length labellers ----------

%
% drawarrow_withticks
%  Like this:  |<----- label ----->|
%def drawarrow_withticks(expr pth,lbl) = 
%  begingroup
%    save midpt; pair midpt; midpt = point .5 of pth;
%    save lbl_pic; pic lbl_pic; lbl_pic = thelabel(btex etex,midpt);
%
%  endgroup
%enddef;