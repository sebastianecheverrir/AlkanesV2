set terminal epslatex size 8.82092cm, 6.55225cm color solid
set output 'main-gnuplottex-fig10.tex'
set key above
set ylabel "$F_L \\, [\\SI{}{\\mega\\pascal}]$"
set ytics 0,20,150
set key noautotitle
set xlabel  "$\\dot{\\gamma} \\, \\left[ \\SI{}{\\per\\second} \\right]$"
set format x  '$10^{%L}$'
set logscale x
p [:2e10][0:150] 'DataDump/Shear/Compiled.plot8' i 0 u ($3/($12*1e-10)):($4/10):($5/10) w p title "$\\SI{0.5}{\\giga\\pascal}$" lt 1 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 1 u ($3/($12*1e-10)):($4/10):($5/10) w p title  "$\\SI{1.0}{\\giga\\pascal}$" lt 2 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 1 u ($3/($12*1e-10)):($4/10) w l notitle lt 2 lc 1  lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 2 u ($3/($12*1e-10)):($4/10):($5/10) w p title  "$\\SI{1.5}{\\giga\\pascal}$" lt 3 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 2 u ($3/($12*1e-10)):($4/10) w l notitle lt 3 lc 1 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 3 u ($3/($12*1e-10)):($4/10):($5/10) w p notitle lt 1 lc 0 ps 2 ,\
'DataDump/Shear/Compiled.plot8' i 0 u ($3/($12*1e-10)):($4/10) w l title "C16" lt 1 lc 1 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 3 u ($3/($12*1e-10)):($4/10) w l title "C30" lt 1 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 4 u ($3/($12*1e-10)):($4/10) w l notitle lt 2 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 4 u ($3/($12*1e-10)):($4/10):($5/10) w p notitle lt 2 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 5 u ($3/($12*1e-10)):($4/10) w l notitle lt 3 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 5 u ($3/($12*1e-10)):($4/10):($5/10) w p notitle lt 3 lc 0 ps 2 ,\
'DataDump/Shear/Compiled.plot8' i 6 u ($3/($12*1e-10)):($4/10):($5/10) w p notitle lt 1 lc 0 ps 2 ,\
'DataDump/Shear/Compiled.plot8' i 6 u ($3/($12*1e-10)):($4/10) w l title 'C60' lt 1 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 7 u ($3/($12*1e-10)):($4/10) w l notitle  lt 2 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 7 u ($3/($12*1e-10)):($4/10):($5/10) w p notitle  lt 2 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 8 u ($3/($12*1e-10)):($4/10) w l notitle  lt 3 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 8 u ($3/($12*1e-10)):($4/10):($5/10) w p notitle  lt 3 lc 0 ps 2,\
