filenametemplate "%j.mps";
beginfig(1);
% контрольные точки
u = 5;
z1 = (-18u,-5u);
z2 = (-10u,-10u);
z3 = (0,0);
z4 = (10u, 10u);
z5 = (18u, 5u);

% оси
draw (-23u, 0)--(23u, 0);
draw (0, -23u)--(0, 23u);

% многочлен с экстремумами
draw z1{dir -45}..{right}z2..z3..{right}z4..{dir -45}z5;

% Подписи
dotlabel.bot("(-1,-1)", z2);
dotlabel.top("(1,1)", z4);

endfig;
end;