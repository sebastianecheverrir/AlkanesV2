set terminal epslatex size 8.82092cm, 6.55225cm color solid
set output 'main-gnuplottex-fig15.tex'
set multiplot
#set format x  '$10^{%L}$' #'10^{%L}'
set format y  '$10^{%L}$' #'10^{%L}'
set xlabel "Time [\\SI{}{\\nano\\second}]"
set ylabel "$\\text{MSD}  [\\SI{}{\\square\\angstrom}]$"
set key at 1.0e1, 1e3
set logscale x
set logscale y
set key noautotitle
plot [1e-2:1e1][1e2:]  'DataDump/Equilibration/C16/msd.plot'   u ($1/1e6):($2) lc 1 pt 4 title 'C16',\
    'DataDump/Equilibration/C30/msd.plot'   u ($1/1e6):($2) lc 2 pt 4 title 'C30',\
    'DataDump/Equilibration/C60/msd.plot'   u ($1/1e6):($2) lc 3 pt 4 title 'C60'
set origin 0,0
set size 1,1

set key at 1.5e1, 1e3
plot [1e-2:1e1][1e2:] 'DataDump/Equilibration/C16/msd_cg.plot'  u ($1/1e6):($2)  lc 1 pt 7 title '  ',\
    'DataDump/Equilibration/C30/msd_cg.plot'    u ($1/1e6):($2)  lc 2 pt 7 title '  ',\
    'DataDump/Equilibration/C60/msd_cg.plot'    u ($1/1e6):($2)  lc 3 pt 7 title '  '

set origin 0.145,0.55
set size 0.54,0.4
unset xlabel
unset ylabel
set xtics(10, 15, 20)
#set xtics ('$10^7$' 1e7,  '$1.5\mkern-5mu\times\mkern-5mu 10^7$' 1.5e7, '$2\mkern-5mu\times\mkern-5mu 10^7$' 2e7)
set ytics font ',80'
plot [1e1:2e1][] 'DataDump/Equilibration/C16/msd.plot'  u ($1/1e6):($2) every 50 lc 1 pt 4 ,\
'DataDump/Equilibration/C30/msd.plot'  u ($1/1e6):($2) every 50  lc 2 pt 4,\
'DataDump/Equilibration/C60/msd.plot'  u ($1/1e6):($2) every 50  lc 3 pt 4,\
'DataDump/Equilibration/C16/msd_cg.plot'  u ($1/1e6):($2) every 50  lc 1 pt 7,\
'DataDump/Equilibration/C30/msd_cg.plot'  u ($1/1e6):($2) every 50  lc 2 pt 7,\
'DataDump/Equilibration/C60/msd_cg.plot'  u ($1/1e6):($2) every 50  lc 3 pt 7


unset multiplot
