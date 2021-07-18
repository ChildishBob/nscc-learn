#!/bin/sh
# Below, is the queue
#PBS -q dgx
#PBS -j oe
# Number of cores
#PBS -l select=1:ncpus=40:ngpus=8
#PBS -l walltime=00:25:00
#PBS -P 11002070
#PBS -N convolution_program
# Start of commands
image="nvcr.io/nvidia/tensorflow"
nscc-docker run $image << EOF
cd $PBS_O_WORKDIR
python convolution.py
EOF