echo "---------------------------------------------"
echo "Downloading sample data set"
echo "---------------------------------------------"
wget https://www.dropbox.com/s/2pqggvfhvks29tm/datasets.tar.gz?dl=1 -O datasets.tar.gz

echo "---------------------------------------------"
echo "Extracting sample data set"
echo "---------------------------------------------"
tar -xzf datasets.tar.gz

echo "---------------------------------------------"
echo "Installing g++ (please, run this shell script as root to ensure the dependencies will be installed)"
echo "---------------------------------------------"
apt-get install g++4.8
apt-get install libgmp3-dev

echo "---------------------------------------------"
echo "Compiling PinMesh"
echo "---------------------------------------------"
make

echo "---------------------------------------------"
echo "Adding execution permission for all the shell scripts"
echo "---------------------------------------------"
chmod +x *.sh