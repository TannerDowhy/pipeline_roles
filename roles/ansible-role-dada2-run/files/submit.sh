#!/bin/bash

cat "$1"/data/bowtie2/out/*.fastq > "$1"/data/dada/combined.fastq;
sh "$1"/software/bbmap/readlength.sh in="$1"/data/dada/combined.fastq out="$1"/data/dada/hist.txt bin=1;
len="$(python "$1"/data/dada/read_length.py -f "$1"/data/dada/hist.txt

jid4=$(sbatch -A "$2" --output="$1"/data/dada/sample_inference.out --dependency=singleton "$1"/data/dada/dada_sample_inference.sh "$1"/data/bowtie2/out "$len" "$1"/data/dada/plot.png "$1"/data/dada/seq_tab.csv "$1"/data/dada/seq_tab.rds);

jid5=$(sbatch -A "$2" --output="$1"/data/dada/chimera_taxonomy.out --dependency=singleton "$1"/data/dada/dada_chimera_taxonomy.sh "$1"/data/dada/seq_tab.rds "$1"/data/dada/seqtab_final.csv "$1"/data/dada/tax_final.csv "$1"/data/dada/seqtab_final.rds "$1"/data/dada/tax_final.rds);
