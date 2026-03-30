#!/bin/bash

#SBATCH --job-name=pvserver
#SBATCH --output=log.pvserver
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem=128G
#SBATCH --partition=k2-medpri
#SBATCH --time=07:00:00

module load apps/paraview
mpiexec -n 8 pvserver
