#!/bin/bash

module load bowtie2

bowtie2-build "$2" "$1"/bowtie2/contaminants_indx

for file in "$1"/merging/output/*extendedFrags.fastq;
    do sbatch "$1"/bowtie2/bowtie2.sh "$file" "$1";
done;

exit 0;
