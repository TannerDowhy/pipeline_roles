#!/bin/bash

sh queue.sh "$2"

cat "$1"/bowtie2/out/*.fastq > "$1"/dada/combined.fastq;
sh "$1"/software/bbmap/readlength.sh in="$1"/dada/combined.fastq out="$1"/dada/hist.txt bin=1;
len="$(python "$1"/dada/read_length.py -f "$1"/dada/hist.txt'i);

sh _submit.sh "$1" "$2" "$len";

exit 0;
