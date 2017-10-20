input latexmp ;
input graph ;
filenametemplate "%j.mps";
% create data file
for D="10 2e-2","10 2e-2","20 3e4" ,"30 8e4","100 7e4","130 2e5",
"200 4e5","500 8e5","600 1e7","1000 2e7","2000 8e7":
write D to "lmp-data.dat";
endfor;
write EOF to "lmp-data.dat" ;
setupLaTeXMP(
mode=normal,% ТgraphТ package does not work in rerun mode
packages="mathpazo") ;
init_numbers(textext("$-$"),textext("$1$"),textext("${\times}10$"),
textext("${}^-$"),textext("${}^2$")) ;
Fe_base:=textext("$10$") ;
beginfig(1);
draw begingraph(6cm,4cm)
setcoords(linear,log);
gdraw "lmp-data.dat" ;
endgraph ;
endfig;
end
