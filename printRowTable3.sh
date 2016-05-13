cat $1 | grep "compute in what" | awk -F ":" '{printf "%11.2f,",$2}'
cat $1 | grep "insert triangles" | awk -F ":" '{printf "%12.2f,",$2}'
cat $1 | grep "(total) to refine cells" | awk -F ":" '{printf "%9.2f,",$2}'
cat $1 | grep "fill grid and compute CCs" | awk -F ":" '{printf "%13.2f,",$2}'
cat $1 | grep "compute vertices grid" | awk -F ":" '{printf "%14.2f,",$2}'
cat $1 | grep "locate vertices" | awk -F ":" '{printf "%9.2f\n",$2}'


