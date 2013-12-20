% BOOK.mp
%  MetaPost input file for Linear Algebra by Jim Hefferon
verbatimtex
%&latex
\documentclass{book}
\usepackage{bookjh} 
\usepackage{linalgjh}
% \usepackage{xfrac}
\begin{document}
etex

input boxes
input jh

% GLOBAL Values
color lightgray;
  lightgray=.70white;
color medgray;
  medgray=.60white;
color darkgray;
  darkgray=.35white;
color shading_color;
  shading_color=lightgray;  


beginfig(1);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;

  path p[];
  p0=fullcircle scaled 4.5u rotated 90;
  label(btex {\small Democrat} etex,point 0 of p0);
  p1=subpath (.85,2.30) of p0;
  drawarrow p1; 
  label(btex {\small Third} etex,point 2.67 of p0);
  p2=subpath (3.03,4.96) of p0;
  drawarrow p2;
  label(btex {\small Republican} etex,point 5.33 of p0);
  p3=subpath (5.70,7.15) of p0;
  drawarrow p3;
  % labels with number of voters
  label(btex \makebox[0pt][r]{\scriptsize $7$ voters\ } etex,point 1.335 of p0);
  label(btex \raisebox{-13pt}{\scriptsize $1$ voter} etex,point 4 of p0);
  label(btex \makebox[0pt][l]{\scriptsize \ $5$ voters} etex,point 6.67 of p0);
endfig;

beginfig(2);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  pickup pencircle scaled line_width_light;

  path p[];
  p0=fullcircle scaled 2.5u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of p0);
  p1=subpath (.4,2.30) of p0;
  drawarrow p1; 
  label(btex {\scriptsize T} etex,point 2.67 of p0);
  p2=subpath (3.03,4.96) of p0;
  drawarrow p2;
  label(btex {\scriptsize R} etex,point 5.33 of p0);
  p3=subpath (5.70,7.6) of p0;
  drawarrow p3;
  % labels with number of voters
  label(btex \makebox[0pt][r]{\scriptsize $-1$ voter\ } etex,point 1.335 of p0);
  label(btex \raisebox{-13pt}{\scriptsize $1$ voter} etex,point 4 of p0);
  label(btex \makebox[0pt][l]{\scriptsize \ $1$ voter} etex,point 6.67 of p0);
endfig;

% --------------- first cycle equation ------------------

beginfig(3);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(4);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(5);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-4/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $2/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $2/3$} etex,point 6.67 of circ);
endfig;  


% ------------ second cycle equation

beginfig(6);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $-1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(7);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(8);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $4/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-2/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-2/3$} etex,point 6.67 of circ);
endfig;  

% ------------ boxed equation upper left

beginfig(9);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(10);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(11);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-4/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $2/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $2/3$} etex,point 6.67 of circ);
endfig;  

% ------------ boxed equation upper right

beginfig(12);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $-1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(13);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(14);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $4/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-2/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-2/3$} etex,point 6.67 of circ);
endfig;  


% ------------ boxed equation middle left

beginfig(15);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(16);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(17);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $2/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $2/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-4/3$} etex,point 6.67 of circ);
endfig;  

% ------------ boxed equation middle right

beginfig(18);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $-1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(19);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(20);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-2/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-2/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $4/3$} etex,point 6.67 of circ);
endfig;  


% ------------ boxed equation bottom left

beginfig(21);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $-1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(22);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(23);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $2/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-4/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $2/3$} etex,point 6.67 of circ);
endfig;  

% ------------ boxed equation bottom right

beginfig(24);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[5pt][r]{\tiny $1$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(25);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $-1/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1/3$} etex,point 6.67 of circ);
endfig;  
  

beginfig(26);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-2/3$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\makebox[10pt][r]{\tiny $4/3$}} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-2/3$} etex,point 6.67 of circ);
endfig;  


% ------------------ equation with letters

beginfig(27);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-a$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $a$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $a$} etex,point 6.67 of circ);
endfig;  
  

beginfig(28);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $b$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $b$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-b$} etex,point 6.67 of circ);
endfig;  
  

beginfig(29);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $c$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-c$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $c$} etex,point 6.67 of circ);
endfig;  


beginfig(30);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-a+b+c$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $a+b-c$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $a-b+c$} etex,point 6.67 of circ);
endfig;  

% ------------------ exercise 3

beginfig(31);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(32);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(33);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  


beginfig(34);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $7$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $5$} etex,point 6.67 of circ);
endfig;  


% ------------------ exercise 4

beginfig(35);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(36);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(37);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  


beginfig(38);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $9$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $7$} etex,point 6.67 of circ);
endfig;  

% ------------------ exercise 5

beginfig(39);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(40);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(41);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  


beginfig(42);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $0$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $2$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $0$} etex,point 6.67 of circ);
endfig;  


% ------------------ oops; missed the first equation

beginfig(43);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(44);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $-1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $1$} etex,point 6.67 of circ);
endfig;  
  

beginfig(45);
  numeric u;  %scaling factor
  numeric v;  %vertical scaling factor
  numeric w;  %horizontal scaling factor
  u:=.2in; v:=u; w:=v;

  path circ, dtPath, trPath, rdPath;

  pickup pencircle scaled line_width_light;
  circ=fullcircle scaled 2u rotated 90;
  label(btex {\scriptsize D} etex,point 0 of circ);
  dtPath=subpath (.4,2.30) of circ;
  drawarrow dtPath; 
  label(btex {\scriptsize T} etex,point 2.67 of circ);
  trPath=subpath (3.03,4.96) of circ;
  drawarrow trPath;
  label(btex {\scriptsize R} etex,point 5.33 of circ);
  rdPath=subpath (5.70,7.6) of circ;
  drawarrow rdPath;

  % labels with number of voters
  label(btex \makebox[0pt][r]{\tiny $1$\ } etex,point 1.335 of circ);
  label(btex \raisebox{-11pt}{\tiny $-1$} etex,point 4 of circ);
  label(btex \makebox[0pt][l]{\tiny \ $-1$} etex,point 6.67 of circ);
endfig;  


  
end 