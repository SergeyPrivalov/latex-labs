beginfig(1);
% TODO: Переписать на свое ДУ
% some constants
numeric xmin, xmax, ymin, ymax, xinc, u;
xmin := -1.5;
xmax := 1.5;
ymin := 0;
ymax := 4.5;
xinc := 0.05;

u := 1cm;

% draw axes
draw (xmin-0.5,0)*u--(xmax+0.5,0)*u;
draw (0,ymin-0.5)*u--(0,ymax+0.5)*u;

% define f making up the ODE y' = f(x,y). Here we take y' = y
% with the exponential curve as solution curve
vardef f(expr x,y) = y enddef;

% define routine to compute function values
def compute_curve(suffix g)(expr xmin, xmax, xinc) =
( (xmin, g(xmin))
for x=xmin+xinc step xinc until xmax: .. (x,g(x)) endfor )
enddef;

% compute and draw exponential curve
vardef exp(expr x) = (mexp 256)**x enddef;

path p;
p := compute_curve(exp, xmin, xmax, xinc) scaled u;
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
for x=-0.5 step 0.5 until xmax:
    vec := unitvector( (1,f(x,exp(x))) ) scaled 1/2u;
    v := ((0,0)--vec) shifted -1/2vec;
    drawarrow v shifted (x*u,exp(x)*u) withcolor red;
endfor;

% draw ticks and labels
for x=round(xmin) upto xmax:
    draw (x,-0.05)*u--(x,0.05)*u;
endfor;

for y=round(ymin) upto ymax:
    draw (-0.05,y)*u--(0.05,y)*u;
endfor;

label.bot(btex $x$ etex, (xmax+0.5,0)*u);
label.lft(btex $y$ etex, (0,ymax+0.5)*u);
label(btex $y=e^x$ etex, (xmax, exp(xmax)+0.5)*u);

endfig;
end;