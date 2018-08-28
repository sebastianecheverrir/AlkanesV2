set terminal epslatex size 8.82092cm, 6.55225cm color solid
set output 'main-gnuplottex-fig16.tex'

set key bottom right
set xlabel "z coordinate"
set ylabel "x Velocity $\\left[ \\SI{}{\\meter\\per\\second} \\right]$"
set xrange [-50:50]
set yrange [-30:30]
set ytics -40,20,40
plot   'DataDump/Shear/C30/1.0GPa/50m_s/vel_prof_x_s_40.dump' u ($2-37.01):($4*100) w l  lt 7 lw 2  title               "$\\SI{0.4}{\\nano\\second}$",\
'DataDump/Shear/C30/1.0GPa/50m_s/vel_prof_x_s_200.dump' u ($2-37.77):($4*100) w l  lt 8 lw 2  title     "$\\SI{2}{\\nano\\second}$",\
'DataDump/Shear/C30/1.0GPa/50m_s/vel_prof_x_s_500.dump' u ($2-37.52):($4*100) w l  lt 9 lw 2  title     "$\\SI{5}{\\nano\\second}$"

