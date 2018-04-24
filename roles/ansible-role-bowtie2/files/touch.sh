#!/bin/bash


for file in "$1"/*_R1_.fastq.gz;
do
  inp="$file";
  file_name=${inp##*/};
  base=${file_name%_R*.*};
  touch "$1"/bowtie2/output/"$base".fastq;
done

exit 0;