#!/bin/bash

#SBATCH --account stats_dept1
#SBATCH -e output/test.err
#SBATCH -o output/test.out
#SBATCH --job-name=calcpi
#SBATCH --time=00:10:00
#SBATCH --cpus-per-task=8

module load R

Rscript --vanilla pi-mclapply.R 