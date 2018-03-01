#!/bin/bash

#SBATCH --time=1:00:00
#SBATCH --job-name=classified
#SBATCH --mem=64G
#SBATCH --nodes=4
#SBATCH --tasks-per-node=32

module load r;
Rscript dada_chimera_taxonomy.R "$1" "$2" "$3" "$4" "$5";

exit 0;