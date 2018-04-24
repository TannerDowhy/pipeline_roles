#!/bin/bash


for file in "$1"/*_R1_.fastq.gz;
do
  inp="$file";
  file_name=${inp##*/};
  base=${file_name%_R*.*};
  touch "$1"/merging/output/"$base".extendedFrags.fastq;
done

exit 0;