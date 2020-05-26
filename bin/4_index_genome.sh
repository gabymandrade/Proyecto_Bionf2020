#!/bin/sh

#SBATCH -p cluster
#SBATCH -w nodo4


#This script construct the FM-index for the reference genome, what is necessary to run bwa 


#Create directory for my output
mkdir ../data/bwa/index_genome


#Define variables
ref_gen=../data/ref_genome/GCA_002878395.2_UCD10Xv1.0_genomic.fna.gz  #Path from bin to my reference genome
prefix=../data/bwa/index_genome/Capsicum  #Index database sequences in the FASTA format
output=../data/bwa/index_genome	  #Path to my output


#Run BWA with bwtsw algoritm, beceause **Capsicum** has a large genome
bwa index -p $prefix -a bwtsw $ref_gen > $output/Capsicum_index_gen

