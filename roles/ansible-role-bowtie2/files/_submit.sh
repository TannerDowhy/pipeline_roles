#!/bin/bash

for file in "$1"/merging/output/*extendedFrags.fastq;
    do sbatch --output="$1"/bowtie2 --account="$3" --dependency=singleton "$1"/bowtie2/bowtie2.sh "$file" "$1";
done;

exit 0;
