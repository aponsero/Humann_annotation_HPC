#!/bin/bash

### Optional. Set the job name
#SBATCH --job-name=humann
### REQUIRED. Specify the PI group for this job
#SBATCH --account=bhurwitz
### REQUIRED. Set the partition for your job.
#SBATCH --partition=standard
### REQUIRED. Set the number of cores that will be used for this job.
#SBATCH --nodes=1
#SBATCH --ntasks=94
### REQUIRED. Set the memory required for this job.
#SBATCH --mem-per-cpu=5gb
### REQUIRED. Specify the time required for this job, hhh:mm:ss
#SBATCH --time=24:00:00

source activate humann

SAMPLE="input/file1_host_removed_R1_val_1.fq.gz"
OUTPUT_DIR="results"

humann --input $SAMPLE --output $OUTPUT_DIR


