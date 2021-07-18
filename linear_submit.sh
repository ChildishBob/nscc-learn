#!/bin/bash
# Exercise 1 submission script - submit.sh
# Below, is the queue
#PBS -q normal
#PBS -j oe
#PBS -l select=1:ncpus=24:mem=1G
#PBS -l walltime=00:10:00
#PBS -P Personal
#PBS -N linear_program
# Commands start here
cd ${PBS_O_WORKDIR}
module load singularity
singularity exec /app/singularity/images/nscc/shchung/inc5654.img python linear.py

