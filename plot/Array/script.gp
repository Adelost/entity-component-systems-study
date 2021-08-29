set terminal pdfcairo font "Gill Sans,9" linewidth 4 rounded fontscale 0.8

# Line style for axes
set style line 80 lt rgb "#808080"

# Line style for grid
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"  # grey

set grid back linestyle 81
set border 3 back linestyle 80
set xtics nomirror
set ytics nomirror

#set log x
#set mxtics 10    # Makes logscale look good.

set style line 1 lt rgb "#78ee00" lw 2 pt 1
set style line 2 lt rgb "#51a200" lw 2 pt 1
set style line 3 lt rgb "#408000" lw 2 pt 1
set style line 4 lt rgb "#2c5800" lw 2 pt 1
set style line 5 lt rgb "#cb0000" lw 2 pt 1
set style line 6 lt rgb "#620000" lw 2 pt 1


set output 'x.pdf'
set xlabel 'Elements'
set ylabel 'Milliseconds'

set key top left

#set xrange [0:30000]
#set yrange [0:5000]

plot \
"xAdd4.txt" 	title '4 bytes new' 		w lp ls 1, \
'xAdd16.txt' 	title '16 bytes new' 		w lp ls 2, \
'xAdd64.txt' 	title '64 bytes new' 		w lp ls 3, \
'xAdd256.txt' 	title '256 bytes new' 		w lp ls 4


set terminal x11
set output