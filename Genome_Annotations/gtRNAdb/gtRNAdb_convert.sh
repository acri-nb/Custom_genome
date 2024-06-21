cut -f1 -d' ' hg38-tRNAs.fa | awk '{print $1}' > tRNA.1.fa
faidx tRNA.1.fa -g "[-][a-zA-Z]{1,}[-][a-zA-Z]{1,}[-][a-zA-Z0-9]{1,}[-][1]" > tRNA.2.fa
