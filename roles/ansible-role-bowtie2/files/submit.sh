#!/bin/bash

for file in "$1"/merging/out/*extendedFrags.fastq.;
    do sbatch "$1"/bowtie2/bowtie2.sh "$file" "$1";
done;

exit 0;
