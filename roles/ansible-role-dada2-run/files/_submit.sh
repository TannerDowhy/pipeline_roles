#!/bin/bash

jid4=$(sbatch --account="$2" --output="$1"/data/dada/sample_inference.out --dependency=singleton "$1"/data/dada/dada_sample_inference.sh "$1"/data/bowtie2/out "$3" "$1"/data/dada/plot.png "$1"/data/dada/seq_tab.csv "$1"/data/dada/seq_tab.rds);

jid5=$(sbatch --account="$2" --output="$1"/data/dada/chimera_taxonomy.out --dependency=singleton "$1"/data/dada/dada_chimera_taxonomy.sh "$1"/data/dada/seq_tab.rds "$1"/data/dada/seqtab_final.csv "$1"/data/dada/tax_final.csv "$1"/data/dada/seqtab_final.rds "$1"/data/dada/tax_final.rds);

exit 0;
