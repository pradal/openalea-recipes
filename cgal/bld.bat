mkdir build && cd build

set CMAKE_CONFIG="Release"

cmake -LAH -G"NMake Makefiles"                ^
  -DGMP_LIBRARIES="-LIBPATH:%LIBRARY_PREFIX%\mingw-w64\lib libgmp.a"  ^
  -DGMP_INCLUDE_DIR="%LIBRARY_PREFIX%\mingw-w64\include"         ^
  -DMPFR_LIBRARIES="-LIBPATH:%LIBRARY_PREFIX%\mingw-w64\lib libmpfr.a"  ^
  -DMPFR_INCLUDE_DIR="%LIBRARY_PREFIX%\mingw-w64\include"         ^
  -DCMAKE_BUILD_TYPE="%CMAKE_CONFIG%"         ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"      ^
  -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%"   ^
  -DWITH_CGAL_ImageIO=OFF -DWITH_CGAL_Qt4=OFF ^
  ..
if errorlevel 1 exit 1
cmake --build . --config %CMAKE_CONFIG% --target INSTALL
if errorlevel 1 exit 1

cd ..\..
