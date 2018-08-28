set terminal epslatex size 8.82092cm, 6.55225cm color solid
set output 'main-gnuplottex-fig9.tex'
set key above
set xlabel "$F_N \\, [\\SI{}{\\mega\\pascal}]$"
set ylabel "$F_L \\, [\\SI{}{\\mega\\pascal}]$"
set ytics 0,20,120
set key noautotitle
            p [400:1600][] 'DataDump/Shear/Compiled_p.plot8' i 0 u ($2*1000):($4/10) w p title "$\\SI{10}{\\meter\\per\\second}$" lt 1 lc 0 ps 2,\
                'DataDump/Shear/Compiled_p.plot8' i 1 u ($2*1000):($4/10) w p title "$\\SI{20}{\\meter\\per\\second}$" lt 2 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 1 u ($2*1000):($4/10) w l notitle  lt 1 lc 1 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 2 u ($2*1000):($4/10) w p title "$\\SI{50}{\\meter\\per\\second}$" lt 3 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 2 u ($2*1000):($4/10) w l notitle  lt 1 lc 1 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 3 u ($2*1000):($4/10) w p title "$\\SI{100}{\\meter\\per\\second}$" lt 4 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 3 u ($2*1000):($4/10) w l notitle  lt 1 lc 1 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 4 u ($2*1000):($4/10) w p notitle  lt 1 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 0 u ($2*1000):($4/10) w l title "C16" lt 1 lc 1 lw 2 ,\
     'DataDump/Shear/Compiled_p.plot8' i 4 u ($2*1000):($4/10) w l title "C30" lt 1 lc 2 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 5 u ($2*1000):($4/10) w p notitle lt 2 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 5 u ($2*1000):($4/10) w l notitle lt 1 lc 2 lw 2 ,\
            'DataDump/Shear/Compiled_p.plot8' i 6 u ($2*1000):($4/10) w p notitle lt 3 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 6 u ($2*1000):($4/10) w l notitle lt 1 lc 2 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 7 u ($2*1000):($4/10) w p notitle lt 4 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 7 u ($2*1000):($4/10) w l notitle lt 1 lc 2 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 8 u ($2*1000):($4/10) w p notitle  lt 1 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 8 u ($2*1000):($4/10) w l title "C60" lt 1 lc 3 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 9 u ($2*1000):($4/10) w p notitle lt 2 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 9 u ($2*1000):($4/10) w l notitle lt 1 lc 3 lw 2 ,\
            'DataDump/Shear/Compiled_p.plot8' i 10 u ($2*1000):($4/10) w p notitle lt 3 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 10 u ($2*1000):($4/10) w l notitle lt 1 lc 3 lw 2 ,\
                'DataDump/Shear/Compiled_p.plot8' i 11 u ($2*1000):($4/10) w p notitle lt 4 lc 0 ps 2,\
     'DataDump/Shear/Compiled_p.plot8' i 11 u ($2*1000):($4/10) w l notitle lt 1 lc 3 lw 2
     
