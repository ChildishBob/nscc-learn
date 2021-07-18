#!/bin/bash
# Exercise 2 submission script – submit.sh
# Below, is the queue
#PBS -q gpu
#PBS -j oe
#PBS -l select=1:ncpus=24:mem=1G
#PBS -l walltime=00:10:00
#PBS -P Personal
#PBS -N fashion_program
# Commands start here
module load tensorflow/1.4
cd ${PBS_O_WORKDIR}
python fashion.py