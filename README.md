# PinMesh
PinMesh is an exact and efficient parallel algorithm for preprocess a polyhedral triangular mesh and, then, query a cloud of points against the mesh. 

PinMesh is described in the following paper:  Magalhães SVG, et al. PinMesh - Fast and exact 3D point location queries using a uniform grid. Comput Graph (2016), http://dx.doi.org/10.1016/j.cag.2016.05.017i 

## Compilation instructions
* We recommend compiling PinMesh using g++ 4.8+.
* PinMesh requires the GMP library to be compiled.

## Instructions for the SMI reproducibility stamp committee
* PinMesh requires g++ 4.8+ and the GMP library 
* After clonning this repository, please run the script smiDownloadDependenciesAndCompile.sh as root (it will try to download the sample data sets, extract them to the current folder, install g++ and the GMP library and, finally, compile PinMesh). This script should be executed in the same folder it was downloaded by git (i.e., in the same folder cotaining PinMesh's source code).
* If the script does not manage to install the dependencies, please install g++ 4.8 and GMP using your Linux distribution's package manager.
* PinMesh will be compiled by the script by calling the make utility (since we provide a Makefile, you can also compile PinMesh by simply typing "make").
* PinMesh's paper contains two result tables (Tables 2 and 3) and the two charts provided in the paper were generated from the data displayed in Table 2.
* To generate the data in Table 2, use the shell script "generateTable2.sh" (the results will be displayed in the screen).
* Similarly, to generate the results in Table 3, use the shell script "generateTable3.sh".
* We recommend performing the experiments in a computer with 32GB of RAM (this will be important for the largest datasets).



## Datasets (available at:  )
* Table below presents the source and creator of the original datasets used to created the examples in this repository.
* The original datasets were cleaned (to ensure they are watertight and do not have topological errors) and converted to the file format used by PinMesh.
* The datasets with 6, 12 and 24 materias were created as the union of the 6 largest single-material datasets.

Dataset          |          Source       |        Creator 
-----------------|-----------------------|----------------------------
Horse            |       Georgia Tech    |
Armadillo        |         Stanford      |     
Hand             |       Georgia Tech    |
Pierrot          |        AIM@SHAPE      |   Frank_terHaar
Chinese dragon   |        AIM@SHAPE      |   Laurent_Saboret
Rolling stage    |        AIM@SHAPE      |   INRIA
Buddha           |        AIM@SHAPE      |   VCG-ISTI
Ramesses         |        AIM@SHAPE      |   Marco_Attene
Elephant         |        AIM@SHAPE      |   ISTI
Neptune          |        AIM@SHAPE      |   Lauren_Saboret
6 Materials      |                       |
12 Materials     |                       |
24 Materials     |                       |







