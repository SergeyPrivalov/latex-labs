verbatimtex
%&latex 
\documentclass{article}
\begin{document}
etex % конец вставки из латеха
filenametemplate "%j.mps"; % имя выходного файла
beginfig(1); % начало картинки
% точки треугольника
z0 = (0,0); z1 = (sqrt(3)*cm,0);
z2 = (sqrt(3)*cm,1cm);
%рисование треугольника
draw z0--z1--z2--cycle;
%рисование подписей с латех-вставками
label.bot(btex $\sqrt{3}$ etex, 1/2[z0,z1]);
label.rt(btex $\frac{1}{2}$ etex, 1/2[z1,z2]);
label.top(btex 1 etex, 1/2[z0,z2]);
endfig; % конец рисунка
end; % конец файла

