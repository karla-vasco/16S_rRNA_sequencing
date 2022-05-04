#!/bin/sh

######### Assign path variables ########
INPUT_DIRECTORY=/mnt/home/vascokar/16s_project/raw_sequences
OUTPUT_DIRECTORY=/mnt/home/vascokar/16s_project/fastqc

########## Modules to Load ##########

module purge
module load FastQC/0.11.7-Java-1.8.0_162

###### Runinng FastQC #########
fastqc $INPUT_DIRECTORY/*.fastq.gz -o $OUTPUT_DIRECTORY -t 8
