verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex

input courbes;

%определяем функции по х и у
vardef fx(expr t) = t enddef;
vardef fy(expr t) = 1+a*t/(1+t) enddef;

beginfig(1);
%задаём ганицы 
repere(10cm,10cm,5cm,5cm,2cm,2cm);
trace.axes(0.5pt);
marque.unites(1mm);

% определяем векторное поле
vardef F(expr x,y) = (y-1)/(x+x**2) enddef;

champ.vecteurs(0.1,0.1,0.2,0.15,0.5white);

% задаём цвет для кривых
color la_couleur;
la_couleur = (0.9,0.1,0.9);
% рисуем интегральные кривые
for n = 0 upto 20:
    a := (n/8) - 1.25;
    draw ftrace(-0.995,2.5,50) en_place withcolor la_couleur;
    draw ftrace(-2.5,-1.1,50) en_place withcolor la_couleur;
endfor;

draw rpoint(r_xmin,1)--rpoint(r_xmax,1) withcolor la_couleur;
%подписываем график
decoupe.repere;
etiquette.axes;
etiquette.unites;
label(btex $(x+x^2)y'-y=-1$ etex scaled 2.5,rpoint(0,-3));

endfig;
end;