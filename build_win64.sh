rm -rf build
mkdir build
docker build -f Dockerfile_win64 -t cpuminer-multi-opencl-win64 .
docker run cpuminer-multi-opencl-win64 cat minerd.exe > build/minerd.exe
cp *.cl build
cp dlls/*.dll build