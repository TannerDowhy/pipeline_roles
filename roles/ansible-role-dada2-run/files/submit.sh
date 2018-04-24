#!/bin/bash

while true
do
    if ["$(squeue -u "$2" | wc -l)" == "1"]
    then
        break;
    fi
    sleep 10;
done

echo "Queue empty..."

cat "$1"/bowtie2/output/*.fastq > "$1"/dada/combined.fastq;

echo "Combined..."

sh "$1"/software/bbmap/readlength.sh in="$1"/dada/combined.fastq out="$1"/dada/hist.txt bin=1;

echo "Hist..."

len="$(python "$1"/dada/read_length.py -f "$1"/dada/hist.txt)";

sh _submit.sh "$1" "$2" "$len";

exit 0;
