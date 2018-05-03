#!/bin/bash

#SBATCH --time=12:00:00
#SBATCH --job-name=classified
#SBATCH --mem=64G
#SBATCH --nodes=8
#SBATCH --tasks-per-node=32

module load r;
`Rscript $6/dada/dada_sample_inference.R $1 $2 $3 $4 $5`;

exit 0;
