#!/bin/sh


#SBATCH -p cluster
#SBATCH -w nodo4

#This sript alignment against the reference genome

#Create directory for output
mkdir -p ../data/alignment


#Define variables 
  fq_file=../data/samples/${CanChihuahua_1.1.fq.gz CanChihuahua_1.2.fq.gz}
  ref_gen=../data/ref_genome/GCA_002878395.2_UCD10Xv1.0_genomic.fna.gz


#To run bwa
bwa bwasw - t 8 $ref_gen $fq_file > ../data/alignmet/Capsicum_aligned.sam

##
