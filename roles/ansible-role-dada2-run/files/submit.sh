#!/bin/bash

cat "$1"/data/bowtie2/out/*.fastq > "$1"/data/dada/combined.fastq;
sh "$1"/software/bbmap/readlength.sh in="$1"/data/dada/combined.fastq out="$1"/data/dada/hist.txt bin=1;
len="$(python "$1"/data/dada/read_length.py -f "$1"/data/dada/hist.txt'i);

sh _submit.sh "$1" "$2" "$len";

exit 0;
