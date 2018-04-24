#!/bin/bash


for file in "$1";
do
  inp="$file";
  file_name=${inp##*/};
  touch "$1"/adapter_removal/output/"$filename";
done

exit 0;
