verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex
filenametemplate "%j.mps";
beginfig(1);
u := 1cm;
draw (-.5u,0)--(5u,0);
draw (0,-.5u)..(0,4u);
label.llft(btex $O$ etex, (0,0));
label.rt(btex $x$ etex, (5u,0));
label.top(btex $y$ etex, (0,4u));
path f;
f = (.25u,-.5u){right}..(5u,4u){dir(70)};
draw f withpen pencircle scaled 1.2pt;
x0 = 4.6*u;
numeric t[];
for i=0 upto 1:
(t[i],whatever) = f intersectiontimes
((x[i],-infinity)--(x[i],infinity));
z[i] = point t[i] of f;
(x[i+1],0) = z[i] +
whatever*direction t[i] of f;
draw (x[i],0)--z[i]--(x[i+1],0);
fill fullcircle scaled 3.6pt shifted z[i];
endfor;
label.bot(btex $x_0$ etex, (x0,0));
label.bot(btex $x_1$ etex, (x1,0));
label.bot(btex $x_2$ etex, (x2,0));
endfig;
end;