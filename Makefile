all: point_in_volume

point_in_volume: src/point_in_volume.cpp src/3d_objects.cpp src/floodFillScanline.cpp src/rationals.h  src/common2.h   src/nested3DGrid.cpp 
	g++-4.8 src/point_in_volume.cpp -lgmp -lgmpxx -std=c++11 -O3  -fopenmp  -o point_in_volume

backup:
	./makeTar.sh
