cd Catch2
mkdir build
cd build
cmake -DBUILD_TESTING=OFF ..
cmake --build . --target install
