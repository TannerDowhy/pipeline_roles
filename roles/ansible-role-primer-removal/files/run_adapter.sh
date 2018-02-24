#!/bin/bash

#SBATCH --account=def-linksm
#SBATCH --time=00:10:00
#SBATCH --job-name=classified

python "$3"/primer_removal/adapter_removal.py -a "$1" -b "$3" -f "$2"

exit 0
