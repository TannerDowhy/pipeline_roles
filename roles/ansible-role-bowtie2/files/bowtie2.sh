#!/bin/bash

#SBATCH --time=30:00
#SBATCH --job-name=classified
#SBATCH --mem=2G

inp="$1";
file=${inp##*/};
base=${file%*.extended*};
path=$(dirname "${1}");

module load bowtie2;
bowtie2 -x "$2"/bowtie2/contaminants_indx "$1" --un "$2"/bowtie2/out/phix_"$base".fastq > "$2"/bowtie2/sam/"$base".out;

exit 0;
