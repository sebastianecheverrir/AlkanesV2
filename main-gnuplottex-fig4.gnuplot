set terminal epslatex size 8.82092cm, 10.07831cm color solid
set output 'main-gnuplottex-fig4.tex'
set multiplot layout 4,1 rowsfirst
set format x ' '
unset xlabel

set key samplen  0.0
set label at graph 0.03,0.89 left "a) P=0.5GPa, v=10m/s"
# set lmargin at screen 0.25; set rmargin at screen 0.9
set tmargin at screen 1.00; set bmargin at screen 0.775
set ylabel "g(r)"
set key noautotitle
set xrange [0:20]
set yrange [0:2.5]
set ytics 0,1,4
plot   'DataDump/Shear/C16/0.5GPa/10m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2,\
         'DataDump/Shear/C30/0.5GPa/10m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2,\
         'DataDump/Shear/C60/0.5GPa/10m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2
     unset label


set tmargin at screen 0.775; set bmargin at screen 0.550
set label at graph 0.03,0.89 left "b) P=0.5GPa, v=100m/s"
set ylabel "g(r)"
set ytics 0,1,4
set key noautotitle
plot   'DataDump/Shear/C16/0.5GPa/100m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle w l lw 2,\
         'DataDump/Shear/C30/0.5GPa/100m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2,\
         'DataDump/Shear/C60/0.5GPa/100m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle  w l lw 2
     unset label



set tmargin at screen 0.550; set bmargin at screen 0.325
set label at graph 0.03,0.89 left "c) P=1.5GPa, v=10m/s"
set ylabel "g(r)"
set ytics 0,1,4
set key noautotitle
plot   'DataDump/Shear/C16/1.5GPa/10m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2,\
         'DataDump/Shear/C30/1.5GPa/10m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2,\
         'DataDump/Shear/C60/1.5GPa/10m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) notitle   w l lw 2
     unset label

set format x '%g'
set tmargin at screen 0.325; set bmargin at screen 0.10
set label at graph 0.03,0.89 left "d) P=1.5GPa, v=100m/s"
set ylabel "g(r)"
set ytics 0,1,4
set key noautotitle
plot   'DataDump/Shear/C16/1.5GPa/100m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) title  'C16' w l lw 2,\
         'DataDump/Shear/C30/1.5GPa/100m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) title  'C30' w l lw 2,\
         'DataDump/Shear/C60/1.5GPa/100m_s_RDF/all_c_rdf_s.dump' u  ($2):($3/1.8) title  'C60' w l lw 2
     unset label

unset multiplot
