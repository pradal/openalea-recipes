#!/bin/bash


# Set all the scons option explicitly

#echo `which g++`
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig

#scons WITH_LAPACK=False WITH_EIGEN=True eigen_includes=$PREFIX/include/eigen3 \
#EXTRA_CXXFLAGS="-DCGAL_CFG_NO_CPP0X_VARIADIC_TEMPLATES -DWITH_QHULL_2011" \
#EXTRA_LIBS="boost_system png" \
#num_jobs=$CPU_COUNT build



$PYTHON setup.py scons --scons-ext-param="WITH_LAPACK=False EXTRA_LIBS='boost_system png'" install --prefix=$PREFIX
