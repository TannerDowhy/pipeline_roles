#!/bin/bash

while true
do
    if ["$(squeue -u "$2" | wc -l)" == "1"]
    then
        break;
    fi
    sleep 10;
done

cat "$1"/bowtie2/output/*.fastq > "$1"/dada/combined.fastq;
sh "$1"/software/bbmap/readlength.sh in="$1"/dada/combined.fastq out="$1"/dada/hist.txt bin=1;
len="$(python "$1"/dada/read_length.py -f "$1"/dada/hist.txt)";

sh _submit.sh "$1" "$2" "$len";

exit 0;
