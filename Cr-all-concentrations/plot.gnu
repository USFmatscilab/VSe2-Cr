#set terminal postscript eps color enhanced font "Arial,14"
#set output 'energies.eps'
set terminal pngcairo font "Arial,14"
set output "e.png"

set encoding iso_8859_1

set key right bottom
#unset key

#set title "VSe_2 bi-layer + Cr atom"
set xlabel "{/Symbol d}"
set ylabel "Adsorption energy (eV/Cr)"
set yrange [-7:0]
set label "SURFACE" at 0.5,-2.5 font "Arial,20" front
set label "octa"  at 0.07,-4.8
set label "tetra" at 0.07,-3.6
f(x)=-3.5
g(x)=-1.8
set xrange [0.01:1.01]
set xtics 0.25
set xtics add ("1/16" 0.06)
set xtics add ("1/4"  0.25)
set xtics add ("1/3"  0.33)
set xtics add ("1/2"  0.50)
set xtics add ("2/3"  0.66)
set xtics add ("3/4"  0.75)
set xtics add ("1"    1.00)

plot '+' using 1:(f($1)):(g($1)) title '' with filledcurves below lc rgb 'dark-green' fs transparent solid 0.25, \
    f(x) notitle 'f(x)' with lines linestyle 1, \
    g(x) notitle 'g(x)' with lines linestyle 2,\
     "data_i" using  1:2   w p ps 1 pt 7 lc rgb "red" title "inserted",\
     "data_i" using  1:3   w p ps 1 pt 7 lc rgb "red" notitle "2c",\
     "data_i" using  1:4   w p ps 1 pt 7 lc rgb "red" notitle "tetra",\
     "data_i" using  1:5   w p ps 1 pt 7 lc rgb "red" notitle "3e",\
     "data_i" using  1:6   w p ps 1 pt 7 lc rgb "red" notitle "6g",\
     "data_i" using  1:7   w p ps 1 pt 7 lc rgb "red" notitle "6i",\
     "data_i" using  1:8   w p ps 1 pt 7 lc rgb "red" notitle "12j",\
     "data" using  1:2   w p ps 1 pt 13 lc rgb "dark-green" title "on surface",\
     "data" using  1:3   w p ps 1 pt 13 lc rgb "dark-green" notitle "2d-s",\
     "data" using  1:4   w p ps 1 pt 13 lc rgb "dark-blue" title "in layer",\
     "data" using  1:5   w p ps 1 pt 13 lc rgb "dark-green" notitle "6i-s",\
     "data" using  1:6   w p ps 1 pt 13 lc rgb "dark-green" notitle "6g-s",\
     "data" using  1:7   w p ps 1 pt 13 lc rgb "dark-green" notitle "12j-s",\
    f(x) with lines lc rgb "dark-green" notitle, \
    g(x) with lines lc rgb "dark-green" notitle,\
      "data" using 1:8  w lp ps 1 pt 7 lc rgb "red" notitle



# "data_4" using 0:2:2 with labels offset -0.9,-1.0  title "",\
#     "data_s" using 2:xtic(1) w p ps 2 pt 5 lc rgb "red" notitle,\
#     "data_i" using 2:xtic(1) w p ps 2 pt 13 lc rgb "green" notitle
     
#     ''   using 0:2:2 with labels offset -0.9,-1.0  title "",\
#     file using ($3):xtic(1) with boxes lc rgb "red" fill pattern 1 notitle, \
#     ''   using 0:3:3 with labels offset -0.9,-1.0  title "",\

