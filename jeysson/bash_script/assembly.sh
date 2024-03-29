#!/usr/bin/env bash
#try different values of k for abyss assembly with test data

for k in `seq 15 3 45`; do
  abyss-pe k=$k name=testk$k in='A012_S19_R1_trimmed.fastq A012_S19_R2_trimmed.fastq'
done
head -1 testk15-stats > allteststats
grep 'scaffolds.fa' test*stats >> allteststats