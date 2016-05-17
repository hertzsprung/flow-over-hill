set term epslatex color size 5,2

g = 9.81
H = 0.15e3

a = 5e3
hm = 0.1e3
h_s(x) = hm * cos(pi*x/a)**2 * exp(-(x/a)**2)

F(U) = U / sqrt(g*H)
hprime(x, U)=F(U)**2/(F(U)**2 - 1) * h_s(x)
uprime(x, U) = -U * (1/F(U)**2) * hprime(x, U)/H

set xrange [-10e3:10e3]
set yrange [0:1e3]
set y2range [0:*]
set y2tics
set ytics nomirror
set y2label "$u$ (\\si{\\meter\\per\\second})"
set ylabel "$z$ (\\si{\\meter})"
set xlabel "$x$ (\\si{\\meter})"

