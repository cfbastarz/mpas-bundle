#! /bin/bash -x

git clone --recurse-submodules -b release/1.7.0 https://github.com/JCSDA/spack-stack.git spack-stack-rel1.7.0

#module unload anaconda

cp -r fix/spack-stack/configs/sites/egeon spack-stack-rel1.7.0/fix/spack-stack/configs/sites/
cp -r fix/spack-stack/configs/templates/mpas-bundle spack-stack-rel1.7.0/fix/spack-stack/configs/templates

cd spack-stack-rel1.7.0/

source setup.sh

spack stack create env --name=mpas-bundle --site=egeon --template=mpas-bundle

cd envs/mpas-bundle

spack env activate .

spack concretize 2<&1 | tee log.concretize
spack install 2<&1 | tee log.install
spack module lmod refresh 2<&1 | tee log.lmod_refresh

spack stack setup-meta-modules 2<&1 | tee log.setup-meta-modules
