echo "Generating table 3 (PinMesh will run and the results will be displayed below)     ";
echo "----------------------------------------------------------------------------------";
echo "----------------------------------------------------------------------------------";
echo "        ,     Locate,  Create 1st,   Refine,  Label empty, Compute query,   Locate";
echo " Threads, grid cells,  level grid,     grid,   grid cells, points’ grids,   points"

for threads in 1 2 4 8 16;
do

	echo $threads | awk '{printf "%8d,",$1}'

	export OMP_NUM_THREADS=$threads;
	./point_in_volume datasets/big24regionsMesh_5_5_1.lium 64 73 1 2 < datasets/big24regionsMesh_5_5_1.txtio > out.txt 2> out.err
	./printRowTable3.sh out.err;

done

 
