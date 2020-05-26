# Capsicum_GBS

This repository was created to analyze samples of *Capsicum annuum* var. *glabriusculum* or "chiltepín". The samples were
sequenced by Illumina High Throughput Sequencing, by GBS technique these samples are paired-end, and the enzime for the
cutter site was ApeKI.


In the `/bin` directory you will find:

* 1_clean_adapters.sh: script that uses Trimmomatic to trim adapters.

* 2_clean_demultiplex.sh: script to demultiplex data whit process radtags from Stacks.

* 3_ref_gen_download.sh : script to download the reference genome from GenBank

* 4_index_genome.sh: script that constructs the FM-index for the reference genome, what is necessary to run bwa 

* reads_perpopulation_plate1.R: script to graph in ggplot2 the reads by population of plate 1


`/meta` contains metadata:

* barcode_samples_plate1.txt: in this file we can find the barcodes and the samples name, what is requirement for demultiplexing with process radtags

* database_capsicum.txt: contains information about sampling locality, taxonomy, collectors. Promptly label **ID_LEV** is a global data base from *Capsicum*, **ID_LABORATORY** or tags used for DNA extraction from samples, **SAMPLE** names i'm going to use for analysis, **STATE** Mexican state in which the samples were collected, **LOCALITY** from which the samples come, **TYPE: WILD(W), ARVENSE(A), CULTIVATED (C)** indicates whether the sample is wild or has a certain degree of domestication, **VARIETY** names with which the samples are known locally, if there was no common name, we would label them with the scientific name, **LATITUDE**,	**LONGITUDE** and	**ELEVATION** are the coordinates and elevation of each of the samples, **INDIVIDUAL/REPLICATION** Individual, means there is only one sample from an individual; Repetition, it is a repetition of the same individual, and is recognized by the R at the end of SAMPLE; Lot, which corresponds to seed lot, where we start that the individuals sequenced probably come from different individuals and is recognized with _ after the sample number, **CONTACT** person who gave the samples to carry out this study, by last **BARCODE** important for the data cleaning stage.

* popmap_plate_1: this file contains the names of the samples and the the populations

* reads_processradtags_plate1.txt: this file it is necessary to run the r script reads_perpopulation_plate1.R
  

`/data` contains my data: In this directory are my samples of *Capsicum annuum* var. *glabriusculum*, which are labeled as Ca or *Capsicum annuum*, the next three letters indicate the population and the number indicates the individual.

You will find directory 

* alignmet: Contains a file called Capsicum_aligned.sam

* bwa: contains a directory called index_genome with the following files Capsicum.amb, Capsicum.ann, Capsicum.bwt, Capsicum.pac, Capsicum.sa, Capsicum_index_gen, this last file is necessary to run bwa

* clean: This directory contains the following files Pinero-Sept19_S59_L002_R1_001_clean.fastq.gz, Pinero-Sept19_S59_L002_R1_001_clean_fastqc.zip, Pinero-Sept19_S59_L002_R2_001_clean.fastq.gz, Pinero-Sept19_S59_L002_R2_001_clean_fastqc.zip, Pinero-Sept19_S59_L002_R1_001_clean_fastqc.html, Pinero-Sept19_S59_L002_R2_001_clean_fastqc.html, therefore we find samples without adapters Forward or R1 in format .zip and .fastq.gz, and the same for Reverse or R2 in format .zip and .fastq.gz, and in the html files we can find summary statistics for data quality.
This folder corresponds to the script output 1_clean_adapters.sh, who works with the program Trimmomatic

* raw: contains a subdirectory called plate1 than keeps to the following files:

**GBS-ApeKI-1-96_barcodes.txt**: which has information on the barcode and the position of the sample on the plate as given by the sequencing facility.

**_md5sum.txt**: test to check if data download was done without errors.

**_multiqc_report.html**: is an average quality report of the sequences 

**Pinero-Sept19_S59_L002_R1_001.fastq.gz**: contains the reads in .fastq.gz, only FORWARD 

**Pinero-Sept19_S59_L002_R2_001.fastq.gz**: contains the reads in .fastq.gz, only REVERSE

* ref_genome: in this directory we will find a file called GCA_002878395.2_UCD10Xv1.0_genomic.fna.gz what is the reference genome from scrip 3_ref_gen_download.sh

* samples: this directory contains each of the samples demultiplexed by process radtags


