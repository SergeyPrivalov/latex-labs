beginfig(1);
% some constants
numeric xmin, xmax, ymin, ymax, xinc, u;
xmin := -1.5; 
xmax := 1.5; 
ymin := -2; 
ymax := 2;
xinc := 0.05; 
u := 1cm;
% draw axes
draw (xmin-0.5,0)*u -- (xmax+0.5,0)*u;
draw (0,ymin-0.5)*u -- (0,ymax+0.5)*u;
% define f making up the ODE y' = f(x,y). 
% Here we take y' = 1
% with the y = x as solution curve
vardef f(expr x,y) = 1 enddef;
% define routine to compute function values
def compute_curve(suffix g)(expr xmin, xmax, xinc) =
( (xmin,g(xmin))
for x=xmin+xinc step xinc until xmax: .. (x,g(x)) endfor )
enddef;
% compute and draw func curve
vardef func(expr x) = x enddef;
path p; p := compute_curve(func, xmin, xmax, xinc) scaled u;
draw p;
% draw direction field
pair vec; path v;
for x=xmin step 0.5 until xmax:
for y=ymin+0.5 step 0.5 until ymax-0.5:
vec := unitvector( (1,f(x,y)) ) scaled 1/2u;
v := ((0,0)--vec) shifted -1/2vec;
drawarrow v shifted (x*u,y*u) withcolor blue;
endfor;
endfor;
% draw directions along the exponential curve
for x=xmin step 0.5 until xmax:
vec := unitvector( (1,f(x,func(x))) ) scaled 1/2u;
v := ((0,0)--vec) shifted -1/2vec;
drawarrow v shifted (x*u,func(x)*u) withcolor red;
endfor;
% draw ticks and labels
for x=xmin upto xmax:
draw (x,-0.05)*u--(x,0.05)*u;
endfor;
for y=ymin upto ymax:
draw (-0.05,y)*u--(0.05,y)*u;
endfor;
label.bot(btex $x$ etex, (xmax+0.5,0)*u);
label.lft(btex $y$ etex, (0,ymax+0.5)*u);
label(btex $y'=1$ etex, (xmin, func(xmax)+0.5)*u);
label(btex $y=x$ etex, (xmax, func(xmax)+0.5)*u);
endfig;
end;