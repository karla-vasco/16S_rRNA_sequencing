#!/bin/sh

######### Assign path variables ########
INPUT_DIRECTORY=/mnt/home/vascokar/mastitis_study/fastqc
OUTPUT_DIRECTORY=/mnt/home/vascokar/mastitis_study/multiqc

########## Modules to Load ##########

module purge
module load GNU/7.3.0-2.30 
module load OpenMPI/3.1.1 
module load MultiQC/1.7-Python-3.6.6

###### Runinng MultiQC #########
multiqc $INPUT_DIRECTORY -o $OUTPUT_DIRECTORY --filename multiqc_report_fastqc-raw
