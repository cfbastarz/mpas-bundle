#!/bin/bash
#
#MODULEPATH=""

module use /mnt/beegfs/carlos.bastarz/mpas_jedi_bundle/spack-stack-rel1.7.0/envs/mpas-bundle2/install/modulefiles/Core

#MODULE_INDEX_YAML=/mnt/beegfs/carlos.bastarz/mpas_jedi_bundle/spack-stack-rel1.7.0/envs/mpas-bundle2/install/modulefiles/module-index.yaml

#module purge
#module load gnu9/9.4.0

module load stack-gcc
module load stack-openmpi
module load stack-python

module load atlas/0.36.0
module load gptl/8.1.1
module load gsl-lite/0.37.0
module load hdf5/1.14.3
module load netcdf-c/4.9.2
module load netcdf-fortran/4.6.1
module load parallel-netcdf/1.12.3
module load parallelio/2.6.2
module load cmake/3.23.1
module load jedi-cmake/1.4.0
module load ecbuild/3.7.2
module load py-setuptools/63.4.3
module load py-pycodestyle/2.11.0
module load udunits/2.2.28
module load nccmp/1.9.0.1

module list

ulimit -s unlimited
export F_UFMTENDIAN='big_endian:101-200'
export LD_LIBRARY_PATH=`pwd`/lib:$LD_LIBRARY_PATH
