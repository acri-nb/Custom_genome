#From SNODB
awk 'BEGIN{FS=OFS="\t"}{$1="snoDB"$1}1' csv > csv1.txt
cut -f5,6,7 csv1.txt | sed 's/^/chr/' > sno.bed
tail -n+2 sno.bed | sed '/^chrCHR/d' > sno.1.bed
tail -n +2 csv1.txt |  sort -k55  | uniq -f54 > snoRNA_unique.tsv
cut -f1,55 -d$'\t' snoRNA_unique.tsv | awk '{print ">"$1"\n"$2}' > sno.fa

