#!/usr/bin/env bash

gmt begin defaults_1 pdf,png
gmt set MAP_FRAME_TYPE fancy FORMAT_GEO_MAP ddd:mm:ssF MAP_GRID_CROSS_SIZE_PRIMARY 0.1i FONT_ANNOT_PRIMARY +8p
gmt basemap -X2i -R-60/-30/-10/10 -JM2.25i -Ba10f5g5 -BWSne+t"Plot Title"
gmt text -N -F+f7p,Helvetica-Bold,blue+j << EOF
-62  -7 RT MAP_FRAME_TYPE
-38 -14 RT MAP_ANNOT_OFFSET_PRIMARY
-62  -3 RT MAP_TICK_LENGTH_PRIMARY
-62   4 RB MAP_TICK_PEN_PRIMARY
-59  13 RB MAP_FRAME_WIDTH
-55   2 LT MAP_GRID_CROSS_SIZE_PRIMARY
-30  15 LB FONT_TITLE
-62 -14 RT FORMAT_GEO_MAP
-28  -8 LB MAP_DEGREE_SYMBOL
EOF
gmt plot -Sv0.06i+s+e -W0.5p,blue -N -Gblue << EOF
-62 -7 -60 -5
-37.7 -14 -31 -11
-62 -2.75 -60.75 -0.25
-62 3.75 -60.75 0.75
-55 2 -55 5
-31 15 -36 15
-60.20 12.75 -60.20 10.4
-62 -14 -60 -13
-28.3 -8 -30 -11.5
EOF
gmt end
