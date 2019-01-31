set terminal epslatex size 8.82092cm, 7.5597cm color solid
set output 'main-gnuplottex-fig12.tex'
         set multiplot
set key above
set xlabel  "$\\dot{\\gamma} \\, \\left[ \\SI{}{\\per\\second} \\right]$"
set ylabel "$T \\, [\\SI{}{\\kelvin}]$"
set format x  '$10^{%L}$'
set key noautotitle
set log x
set yrange [310:390]
          set ytics 300,20,400
p [:2e10][] 'DataDump/Shear/Compiled.plot8' i 0 u ($3/($12*1e-10)):($10) w p title "$\\SI{0.5}{\\giga\\pascal}$" lt 1 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 1 u ($3/($12*1e-10)):($10) w p title  "$\\SI{1.0}{\\giga\\pascal}$" lt 2 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 1 u ($3/($12*1e-10)):($10) w l notitle lt 2 lc 1  lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 2 u ($3/($12*1e-10)):($10) w p title  "$\\SI{1.5}{\\giga\\pascal}$" lt 3 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 2 u ($3/($12*1e-10)):($10) w l notitle lt 3 lc 1 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 3 u ($3/($12*1e-10)):($10) w p notitle lt 1 lc 0 ps 2 ,\
'DataDump/Shear/Compiled.plot8' i 0 u ($3/($12*1e-10)):($10) w l title "C16" lt 1 lc 1 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 3 u ($3/($12*1e-10)):($10) w l title "C30" lt 1 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 4 u ($3/($12*1e-10)):($10) w l notitle lt 2 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 4 u ($3/($12*1e-10)):($10) w p notitle lt 2 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 5 u ($3/($12*1e-10)):($10) w l notitle lt 3 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 5 u ($3/($12*1e-10)):($10) w p notitle lt 3 lc 0 ps 2 ,\
'DataDump/Shear/Compiled.plot8' i 6 u ($3/($12*1e-10)):($10) w p notitle lt 1 lc 0 ps 2 ,\
'DataDump/Shear/Compiled.plot8' i 6 u ($3/($12*1e-10)):($10) w l title 'C60' lt 1 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 7 u ($3/($12*1e-10)):($10) w l notitle  lt 2 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 7 u ($3/($12*1e-10)):($10) w p notitle  lt 2 lc 0 ps 2,\
'DataDump/Shear/Compiled.plot8' i 8 u ($3/($12*1e-10)):($10) w l notitle  lt 3 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 8 u ($3/($12*1e-10)):($10) w p notitle  lt 3 lc 0 ps 2,\


            set size 0.45,0.4
            set origin 0.15,0.4
            set format x
            set lmargin 5
            set xlabel  "x Velocity $\\left[ \\SI{}{\\meter\\per\\second} \\right]$"
            set ylabel
            unset logscale
set ytics 320,30,400
set xtics 0,25,100

p [0:110][] 'DataDump/Shear/Compiled.plot8' i 0 u ($3):($10) w p notitle lt 1 lc 0 ps 1,\
'DataDump/Shear/Compiled.plot8' i 1 u ($3):($10) w p notitle lt 2 lc 0 ps 1,\
'DataDump/Shear/Compiled.plot8' i 1 u ($3):($10) w l notitle lt 2 lc 1  lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 2 u ($3):($10) w p notitle lt 3 lc 0 ps 1,\
'DataDump/Shear/Compiled.plot8' i 2 u ($3):($10) w l notitle lt 3 lc 1 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 3 u ($3):($10) w p notitle lt 1 lc 0 ps 1 ,\
'DataDump/Shear/Compiled.plot8' i 0 u ($3):($10) w l notitle lt 1 lc 1 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 3 u ($3):($10) w l notitle lt 1 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 4 u ($3):($10) w l notitle lt 2 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 4 u ($3):($10) w p notitle lt 2 lc 0 ps 1,\
'DataDump/Shear/Compiled.plot8' i 5 u ($3):($10) w l notitle lt 3 lc 2 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 5 u ($3):($10) w p notitle lt 3 lc 0 ps 1 ,\
'DataDump/Shear/Compiled.plot8' i 6 u ($3):($10) w p notitle lt 1 lc 0 ps 1 ,\
'DataDump/Shear/Compiled.plot8' i 6 u ($3):($10) w l notitle lt 1 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 7 u ($3):($10) w l notitle  lt 2 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 7 u ($3):($10) w p notitle  lt 2 lc 0 ps 1,\
'DataDump/Shear/Compiled.plot8' i 8 u ($3):($10) w l notitle  lt 3 lc 3 lw 2 ,\
'DataDump/Shear/Compiled.plot8' i 8 u ($3):($10) w p notitle  lt 3 lc 0 ps 1,\

        unset multiplot
