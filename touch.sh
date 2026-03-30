#!/bin/bash
#SBATCH --job-name=touch
#SBATCH --output=log.touch
#SBATCH --mail-user=jjohnston496@qub.ac.uk
#SBATCH --mail-type=END
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=100M
#SBATCH --partition=k2-lowpri
#SBATCH --time=1-00:00:00

#------------------------------------------------------------------------------

find . -atime +30 -print -exec touch -a {} +;
echo "Finished updating file access times"

#------------------------------------------------------------------------------
