echo "---------------------------------------------"
echo "Downloading sample data set"
echo "---------------------------------------------"
wget https://www.dropbox.com/s/x5sr65lq0eqjk6l/datasets.tar.gz?dl=1 -O datasets.tar.gz

echo "---------------------------------------------"
echo "Extracting sample data set"
echo "---------------------------------------------"
tar -xzf datasets.tar.gz

echo "---------------------------------------------"
echo "Compiling PinMesh"
echo "---------------------------------------------"
make

echo "---------------------------------------------"
echo "Adding execution permission for all the shell scripts"
echo "---------------------------------------------"
chmod +x *.sh