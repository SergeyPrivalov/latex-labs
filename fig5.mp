verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex
filenametemplate "%j.mps";
beginfig(1);
% вершины
u = 1.5;
z1 = (0,0);
z2 = (100u,0);
z3 = (30u,60u);
% медианы
z1m = 1/2[z2,z3];
z2m = 1/2[z1,z3];
z3m = 1/2[z1,z2];

% пересечение медиан
z0G = 2/3[z3,z3m];
% треугольник
draw z1--z2--z3--z1;
% линии медиан
draw z1--z1m;
draw z2--z2m;
draw z3--z3m;

%подписи
dotlabel.lft("A", z1);
dotlabel.urt("B", z2);
dotlabel.top("C", z3);
dotlabel.urt("A'", z1m);
dotlabel.ulft("B'", z2m);
dotlabel.bot("C'", z3m);
drawdot(z0G);
draw thelabel("G", z0G-(5, 10));
endfig;
end;