#!usr/bin/enc bash
#script using bwa mem to align example trimmed reads to ref_genome for L. lactis

mkdir ~/jeysson/results/alignment

bwa index ~/jeysson/data/ref_seq/llactis.fasta

for R1 in ~/jeysson/data/trimmed/*_R1_trimmed.fastq
do
R2=${R1%%_R1_trimmed.fastq}"_R2_trimmed.fastq"
srr=$(basename $R1 _R1_trimmed.fastq)
#echo ${R1}
bwa mem ~/jeysson/data/ref_seq/llactis.fasta \
${R1} \
${R2} > ~/jeysson/results/alignment/$(basename $R1 _R1_trimmed.fastq).sam \

done
