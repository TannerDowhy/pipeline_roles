#!/bin/bash

#SBATCH --account=def-linksm
#SBATCH --time=30:00
#SBATCH --job-name=classified
#SBATCH --mem=2G

inp="$1";
file=${inp##*/};
base=${file%*.extended*};
path=$(dirname "${1}")

module load bowtie2
bowtie2 -x ./contaminants_indx "$1" --un out/phix_"$base".fastq > sam/"$base".out

exit 0;
