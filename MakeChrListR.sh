FILE=$1
awk '{ printf "%s\n", $0 }' $FILE
