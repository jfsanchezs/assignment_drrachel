#!usr/bin/enc bash
#script using bwa mem to align example trimmed reads to ref_genome for ecoli

mkdir ~/jeysson/results/fastqc

for R1 in ~/jeysson/data/untrimmed/*.gz
do

gunzip $R1

done

for R1 in ~/jeysson/data/untrimmed/*_001.fastq
do

#R2=${R1%%__R1_001.fastq}"_R2_001.fastq"
#srr=$(basename $R1 _R1_001.fastq.gz)
#echo $R1
fastqc $R1 -o ~/jeysson/results/fastqc/

done
