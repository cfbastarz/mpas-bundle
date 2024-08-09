#!/bin/csh
#
MODULEPATH=""
source /mnt/beegfs/andy.stokely/spack-stack/spack/opt/spack/linux-rhel8-zen2/gcc-12.2.0/lmod-8.7.24-u3b6n6iarioyrubv4zseezun5hzsnquo/lmod/8.7.24/init/csh
module use /mnt/beegfs/andy.stokely/spack-stack/envs/mpas-bundle/install/modulefiles/Core
module use /mnt/beegfs/andy.stokely/spack-stack/spack/share/spack/lmod/linux-rhel8-x86_64/Core


module purge
module load gcc/12.2.0
module load stack-gcc/12.2.0
module load stack-openmpi/5.0.3
module load atlas
module load eckit
module load fckit
module load fftw
module load gptl
module load gsl-lite
module load hdf5
module load netcdf-c
module load netcdf-cxx4
module load netcdf-fortran
module load parallel-netcdf
module load parallelio
module load boost
module load cmake
module load jedi-cmake
module load ecbuild
module load eigen
module load py-setuptools
module load py-pycodestyle
module load sqlite
module load openblas
module load udunits
module load nccmp

module list

limit stacksize unlimited
setenv F_UFMTENDIAN 'big_endian:101-200'
setenv LD_LIBRARY_PATH `pwd`/lib:$LD_LIBRARY_PATH
