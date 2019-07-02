#!usr/bin/env bash
#Script to trim fastq 1st fastq pair  w  trimmomatic

mkdir ~/jeysson/data/trimmed

for R1 in ~/jeysson/data/untrimmed/*_R1_001.fastq
do
R2=${R1%%_R1_001.fastq}"_R2_001.fastq"
srr=$(basename $R1 _R1_001.fastq)
#echo $R1
#echo $R2
#echo $srr

trimmomatic PE \
$R1 $R2 \
~/jeysson/data/trimmed/${srr}_R1_trimmed.fastq ~/jeysson/data/trimmed/${srr}_R1_untrimmed.fastq \
~/jeysson/data/trimmed/${srr}_R2_trimmed.fastq ~/jeysson/data/trimmed/${srr}_R2_untrimmed.fastq \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36

done
