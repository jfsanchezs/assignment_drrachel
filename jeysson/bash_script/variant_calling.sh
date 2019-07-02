#!usr/bin/enc bash
#raw_data_folder=~data/untrimmed/
#ref_seq_folder= ~data/ref_seq/

#Unzip raw data and fastqc running

bash ~/jeysson/bash_script/fastqc.sh

#Trimmomatic running

bash ~/jeysson/bash_script/trim_scripts.sh

#Alignment against ref genome

bash ~/jeysson/bash_script/alignment.sh

#Change from SAM to BAM files

bash ~/jeysson/bash_script/bamfile.sh

#Variance calling

bash ~/jeysson/bash_script/call_var.sh