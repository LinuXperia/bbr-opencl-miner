rm -rf build
mkdir build
docker build -f Dockerfile_linux -t cpuminer-multi-opencl-linux .
docker run cpuminer-multi-opencl-linux cat minerd > build/minerd
cp *.cl build