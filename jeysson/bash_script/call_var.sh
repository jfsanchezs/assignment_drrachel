for file in ~/jeysson/results/alignment/*.sorted.bam
do
#echo ${file}
#variant calling
bcftools mpileup -O b -o $(basename ${file} .sorted.bam).bcf -f ~/jeysson/data/ref_seq/bmegaterium.fasta ${file}
bcftools call --ploidy 1 -m -v -o $(basename ${file} .sorted.bam)_variants.bcf $(basename ${file} .sorted.bam).bcf
vcfutils.pl varFilter $(basename ${file} .sorted.bam)_variants.bcf > $(basename ${file} .sorted.bam)_final_variants.vcf
done
