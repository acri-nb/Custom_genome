# Code to get miRbase fastqs in correct format.
conda activate DERFINDER
cut -f1 -d' ' mature.fa | awk '{print $1}' | head
faidx mature.fa -g "hsa" > human_miR.fa
awk '/^[^>]/{gsub("U","T") }1' human_miR.fa > human_miR.1.fa
