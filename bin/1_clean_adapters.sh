#!/bin/sh


#SBATCH -p cluster
#SBATCH -w nodo4

#This sript removes adapters


#Create../data/ directory for output
mkdir -p ../data/clean

#For R1 or Forward
java -jar Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 8 ../data/raw/plate1/Pinero-Sept19_S59_L002_R1_001.fastq.gz ../data/clean/Pinero-Sept19_S59_L002_R1_001_clean.fastq.gz ILLUMINACLIP:Trimmomatic-0.39/adapters/TruSeq3-SE.fa:2:30:10 MINLEN:70

#For R2 or Reverse
java -jar Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 8 ../data/raw/plate1/Pinero-Sept19_S59_L002_R2_001.fastq.gz ../data/clean/Pinero-Sept19_S59_L002_R2_001_clean.fastq.gz ILLUMINACLIP:Trimmomatic-0.39/adapters/TruSeq3-SE.fa:2:30:10 MINLEN:70

#check output with FastQC
fastqc ../data/clean/Pinero-Sept19_S59_L002_R1_001_clean.fastq.gz
fastqc ../data/clean/Pinero-Sept19_S59_L002_R2_001_clean.fastq.gz

