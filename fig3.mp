input mp-solid

outcolor:=0.5[marron,blanc];
incolor:=0.5[rouge,blanc];

R:=4;
r:=3;

nb:=50;subh:=50;
creux:=true;
%arcenciel:=true;

Transparence:=true;

figureespace(-10u,-10u,10u,10u);
Initialisation(500,30,40,20);
%numeroteface:=true;


Ferme1:=false;
ObjetCylindre1("(R*cos(u),v,R*sin(u))",pi,0,-R,R);
%AffichageObjet1;

Ferme2:=false;
ObjetCylindre2("(v,r*cos(u),r*sin(u))",pi,0,-2*r,2*r);
%AffichageObjet2;


nbobj:=2;

DessineFusion;
pickup pencircle scaled 0.71mm;
draw Fonction("(+sqrt(R**2-(r*sin(t))**2),r*cos(t),r*sin(t))",0,pi-0.6,0.01) withcolor blue;
draw Fonction("(-sqrt(R**2-(r*sin(t))**2),r*cos(t),r*sin(t))",0,pi,0.01) withcolor blue  dashed evenly;
draw Fonction("(+sqrt(R**2-(r*sin(t))**2),r*cos(t),r*sin(t))",pi-0.6,pi,0.01) withcolor blue dashed evenly;


%TraceAxes;
finespace;
