echo "Generating table 2 (PinMesh will run and the results will be displayed below)     ";
echo "----------------------------------------------------------------------------------";
echo "----------------------------------------------------------------------------------";
echo "        Mesh,  Nt(x10^3),    G_2,   T_p(s),  T_q(us)";

export OMP_NUM_THREADS=16;


printRowTable () {
	name=$1
	secondLevel=$2
   	echo $name | awk  -F "-"  '{printf "%12s,",$1}'
	cat out.err | grep triangles, | awk '{printf "%11.0f,", $5/(1000.0)}'
	echo $secondLevel | awk  -F ":"  '{printf "%7d^3,",$1}'
	cat out.err | grep "create and refine" | awk -F ':' '{printf "%f ", $2}' > temp.txt
	cat out.err | grep "fill grid and compute" | awk -F ':' '{printf "%f\n", $2}' >> temp.txt
	cat temp.txt | awk  -F " "  '{printf "%9.2f,",$1+$2}'
	cat out.err | grep "to compute vertices" | awk -F ':' '{printf "%f ", $2}' > temp.txt
	cat out.err | grep "to locate vertices" | awk -F ':' '{printf "%f\n", $2}' >> temp.txt
	cat temp.txt | awk  -F " "  '{printf "%9.2f\n",$1+$2}'
	rm temp.txt
} 

secondLevel=9;
name="Horse"
./pinmesh datasets/horse_fixed.stl.gts.lium 64 $secondLevel 1 2 < datasets/horse_fixed.stl.gts.txtio > out.txt 2> out.err
printRowTable $name $secondLevel


secondLevel=14;
name="Armadillo"
./pinmesh datasets/armadillo_1_1_1.lium 64 $secondLevel 1 2 < datasets/armadillo_1_1_1.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=17;
name="Hand"
./pinmesh datasets/hand.stl.gts.lium 64 $secondLevel 1 2 < datasets/hand.stl.gts.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=19;
name="Pierrot"
./pinmesh datasets/172_pierrot_final.lium 64 $secondLevel 1 2 < datasets/172_pierrot_final.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=22;
name="R.Stage"
./pinmesh datasets/766_rolling_stage_1.2Mfaces_holes_filled.lium 64 $secondLevel 1 2 < datasets/766_rolling_stage_1.2Mfaces_holes_filled.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=22;
name="C.Dragon"
./pinmesh datasets/783_Chinese_dragon_clean.lium 64 $secondLevel 1 2 < datasets/783_Chinese_dragon_clean.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=22;
name="Buddha"
./pinmesh datasets/353_buddha1.5M.closed.lium 64 $secondLevel 1 2 < datasets/353_buddha1.5M.closed.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=23;
name="Ramesses"
./pinmesh datasets/814_Ramesses_1.5Mtriangles_clean.lium 64 $secondLevel 1 2 < datasets/814_Ramesses_1.5Mtriangles_clean.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=28;
name="Elephant"
./pinmesh datasets/754_elephant_3Mfaces_holes_filled.lium 64 $secondLevel 1 2 < datasets/754_elephant_3Mfaces_holes_filled.txtio > out.txt 2> out.err
printRowTable $name $secondLevel


secondLevel=31;
name="Neptune"
./pinmesh datasets/803_803_neptune_4Mtriangles_manifold.lium 64 $secondLevel 1 2 < datasets/803_803_neptune_4Mtriangles_manifold.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=46;
name="6_Mat."
./pinmesh datasets/big6regionsMesh.lium 64 $secondLevel 1 2 < datasets/big6regionsMesh.txtio > out.txt 2> out.err
printRowTable $name $secondLevel

secondLevel=58;
name="12_Mat."
./pinmesh datasets/big12regionsMesh_3_4_1.lium 64 $secondLevel 1 2 < datasets/big12regionsMesh_3_4_1.txtio > out.txt 2> out.err
printRowTable $name $secondLevel


secondLevel=73;
name="24_Mat."
./pinmesh datasets/big24regionsMesh_5_5_1.lium 64 $secondLevel 1 2 < datasets/big24regionsMesh_5_5_1.txtio > out.txt 2> out.err
printRowTable $name $secondLevel
