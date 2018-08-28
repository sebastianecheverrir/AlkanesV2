set terminal epslatex size 8.82092cm, 9.07086cm color solid
set output 'main-gnuplottex-fig1.tex'
set multiplot layout 3,1 rowsfirst
set format x ' '
unset xlabel
set key top right
set key samplen  0.0
set ylabel "$\\left< R^2\\right>  \\,[\\SI{}{\\square\\angstrom}]$"
set label at graph 0.03,0.89 left "a)"
set lmargin at screen 0.25; set rmargin at screen 0.9
set tmargin at screen 1.00; set bmargin at screen 0.7
set ytics 280,40,400
plot [:600][260:400]  'DataDump/Shear/C30/1.0GPa/10m_s/e2e2.plot_s'  u  (($1/1e6)*10):($2) w l  lw 3   lt 3  notitle   ,\
'DataDump/Shear/C30/1.0GPa/20m_s/e2e2.plot_s'  u  (($1/1e6)*20):($2) w l  lw 3   lt 4  notitle   ,\
'DataDump/Shear/C30/1.0GPa/50m_s/e2e2.plot_s'   u (($1/1e6)*50):($2) w l  lw 3   lt 5  notitle  ,\
'DataDump/Shear/C30/1.0GPa/100m_s/e2e2.plot_s' u  (($1/1e6)*100):($2) w l  lw 3   lt 10  notitle

unset label
set tmargin at screen 0.7; set bmargin at screen 0.4
set ytics 0.3, 0.1, 0.6
set ylabel "$\\left<P_{2}^{xz}\\right>$"
set label at graph 0.03,0.89 left "b)"
plot  [:600][0.28:0.62] 'DataDump/Shear/C30/1.0GPa/10m_s/P2XZ_s.plot' u   (($1/1e6)*10):($2) w l lw 3 lt 3  notitle   ,\
'DataDump/Shear/C30/1.0GPa/20m_s/P2XZ_s.plot' u   (($1/1e6)*20):($2) w l  lw 3  lt 4  notitle ,\
'DataDump/Shear/C30/1.0GPa/50m_s/P2XZ_s.plot' u  (($1/1e6)*50):($2) w l  lw 3   lt 5  notitle , \
'DataDump/Shear/C30/1.0GPa/100m_s/P2XZ_s.plot' u  (($1/1e6)*100):($2) w l  lw 3  lt 10   notitle

unset label
set tmargin at screen 0.4; set bmargin at screen 0.1
set ytics 30, 30, 150
set ylabel "$F_L \\, [\\SI{}{\\mega\\pascal}]$"
set format x '%g'
set xlabel "Distance [\\SI{}{\\nano\\meter}]"

set label at graph 0.03,0.89 left "c)"
plot  [:600][60:160] 'DataDump/Shear/C30/1.0GPa/10m_s/fc_ave.dump' u (($1/1e6)*10):($2/10) w l  lw 3    lt 3    title  "\\SI{10}{\\meter\\per\\second}"   ,\
'DataDump/Shear/C30/1.0GPa/20m_s/fc_ave.dump' u (($1/1e6)*20):($2/10) w l  lw 3    lt 4    title  "\\SI{20}{\\meter\\per\\second}"   ,\
'DataDump/Shear/C30/1.0GPa/50m_s/fc_ave.dump' u (($1/1e6)*50):($2/10) w l  lw 3     lt 5    title  "\\SI{50}{\\meter\\per\\second}"  ,\
'DataDump/Shear/C30/1.0GPa/100m_s/fc_ave.dump' u (($1/1e6)*100):($2/10) w l  lw 3   lt 10    title  "\\SI{100}{\\meter\\per\\second}"

unset multiplot
