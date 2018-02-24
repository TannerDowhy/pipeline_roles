#!/bin/bash

for file in "$1"/primer_removal/*_R1*.fastq.gz;
    do sbatch "$1"/merging/merge.sh "$file" "$1";
done;

exit 0;
