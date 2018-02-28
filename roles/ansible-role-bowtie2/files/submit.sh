#!/bin/bash

module load bowtie2;

bowtie2-build "$2" "$1"/bowtie2/contaminants_indx;

sh "$1"/bowtie2/_submit.sh "$1"

exit 0;
