set terminal epslatex size 8.82092cm, 6.55225cm color solid
set output 'main-gnuplottex-fig13.tex'
set multiplot
#set format x  '$10^{%L}$'
set format y  '$10^{%L}$'
#set format x  '%3.1e'
#set format y  '%3.1e'
set key top left
set xlabel "Time [\\SI{}{\\nano\\second}]"
set ylabel "$\\left< R^2 \\right>  [\\SI{}{\\square\\angstrom}]$"
set logscale x
set logscale y
set key noautotitle
  plot  [1e-2:1e1] [:1e5] 'DataDump/Equilibration/C16/e2e2.plot' u ($1/1e6):($2) title 'C16' ,\
'DataDump/Equilibration/C30/e2e2.plot' u ($1/1e6):($2)  title 'C30' ,\
'DataDump/Equilibration/C60/e2e2.plot' u ($1/1e6):($2)  title 'C60'

set origin 0.4,0.55
set size 0.54,0.4
unset xlabel
unset ylabel
set xtics(10, 15, 20)
#set xtics ('$10^1$' 1e1,  '$1.5\mkern-5mu\times\mkern-5mu 10^1$' 1.5e1, '$2\mkern-5mu\times\mkern-5mu 10^1$' 2e1)
set ytics font ',80'
plot [1e1:2e1][] 'DataDump/Equilibration/C16/e2e2.plot' u ($1/1e6):($2) ,\
'DataDump/Equilibration/C30/e2e2.plot' u ($1/1e6):($2) ,\
'DataDump/Equilibration/C60/e2e2.plot' u ($1/1e6):($2)
unset multiplot
