set terminal epslatex size 8.82092cm, 5.04108cm color solid
set output 'main-gnuplottex-fig8.tex'
set key top center
binwidth=2
bin(x,width)=width*floor(x/width)
set format y2 '%g'
set label at graph 0.03,0.89 left "d)"
set ylabel "x Velocity $\\left[ \\SI{}{\\meter\\per\\second} \\right]$"
set y2label "AMD $\\left[ \\SI{}{\\gram\\per\\cubic\\centi\\meter} \\right]$ "
set key noautotitle
set xrange [-50:50]
set y2range [0:3]
set ytics  -50,25,50
set ytics nomirror
set y2tics 0,1,4
set xlabel "z coordinate"
plot   [][-60:60]  'DataDump/Shear/C16/1.5GPa/100m_s/fluid_mdp_z_s.dump' u ($2-36.3379):($4) w l  lt 1 axes x1y2 title "C16",\
              'DataDump/Shear/C16/1.5GPa/100m_s/vel_prof_x_s.dump'  u (bin($2-36.3379,binwidth)):($4*100) smooth unique lt 1 dashtype 4  lw 5,\
                                   'DataDump/Shear/C60/1.5GPa/100m_s/fluid_mdp_z_s.dump1' u ($2-34.8132):($4) w l  lt 3  axes x1y2 title "C60",\
              'DataDump/Shear/C60/1.5GPa/100m_s/vel_prof_x_s.dump1'  u (bin($2-34.8132,binwidth)):($4*100) smooth unique lt 3 dashtype 4  lw 5
