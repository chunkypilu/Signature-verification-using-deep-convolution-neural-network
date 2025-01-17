#!/bin/sh
#PBS -P ee
#PBS -l select=1:ncpus=10:ngpus=2
#PBS -o out_vgg16_1_1
#PBS -e err_vgg16_1_1

cd $PBS_O_WORKDIR

module load pythonpackages/2.7.13/ucs4/gnu/447/keras/2.0.3/gnu
module load pythonpackages/2.7.13/ucs4/gnu/447/scikit-learn/0.18.1/gnu
module load pythonpackages/2.7.13/ucs4/gnu/447/opencv/3.2.0/gnu
module load pythonpackages/2.7.13/ucs4/gnu/447/pillow/4.1.0/gnu
module load pythonpackages/2.7.13/ucs4/gnu/447/h5py/2.7.0/gnu
module load pythonpackages/2.7.13/ucs4/gnu/447/matplotlib/2.0.0/gnu
module load apps/tensorflow/1.1.0/gpu
python vgg16_1_1.py


