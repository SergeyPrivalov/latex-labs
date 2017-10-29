verbatimtex%&latex
\documentclass{article}
\begin{document}
etex
input courbes;
% ======================================== fonctions
vardef fx(expr t) = t enddef;
vardef fy(expr t) = t+a enddef;
% ======================================== figure
beginfig(1);
repere(10cm,10cm,5cm,5cm,2cm,2cm);
trace.axes(0.5pt);
marque.unites(1mm);
%% Champs de directions
vardef F(expr x,y) = 1 enddef;
champ.segments(0,0,0.2,0.1,0.5white);
%% Courbes intgrales
for n = 0 upto 16:
	a := (n/2) - 4;
	draw ftrace(-1.5-a,1.5-a,50) en_place withcolor (0.5,0.6,0.1);
endfor;
decoupe.repere;
etiquette.axes;
etiquette.unites;
label(btex $y’=1$ etex scaled 2.5,rpoint(0,-3));
endfig;
end; 