@echo off

if exist build rmdir /s /q build &
mkdir build &
cd build &
cmake -DCMAKE_BUILD_TYPE:STRING=Release -G Ninja.. &
cmake --build . 