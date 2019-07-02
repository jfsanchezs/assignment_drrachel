#!/usr/bin/env bash
# variant calling

#Sam to BAM
for file in ~/jeysson/results/alignment/*.sam
do
#echo ${file}

samtools view -S -b ${file} > ~/jeysson/results/alignment/$(basename ${file} .sam).bam 
samtools sort -o ~/jeysson/results/alignment/$(basename ${file} .sam).sorted.bam ~/jeysson/results/alignment/$(basename ${file} .sam).bam 
samtools index ~/jeysson/results/alignment/$(basename ${file} .sam).bam

done