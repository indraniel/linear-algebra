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
