#!/bin/bash

wordlist="<wordlist>"
start=$(date +%s)

bruteforce()
{
limit=10000
pas=10000
size=$(wc -l $wordlist | grep -o '[0-9]*' | head -1)
finished=false
iteration=0
found=''

while [ "$finished" = false ]; do
  limit=$(($limit + $pas))

  if [ "$limit" -ge "$size" ]; then
     finished=true
  fi

  task=($(head -$limit $wordlist | tail -$pas))
  task=("${task[@]%%:*}")

  for i in "${task[@]}"; do

     ((iteration++))

      data=$(python bruteforce.py $i 2> /dev/null)
      if [ -n "$data" ]; then
	finished=true
	found="$i"
      fi
  done

done

echo -e "$iteration\n$found" > "$(pwd)/temp_bruteforce"
}

spinner()
{
    local pid=$1
    local delay=0.75
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

( bruteforce ) &
spinner $!


readarray -t result < "$(pwd)/temp_bruteforce" 

end=$(date +%s)
runtime=$((end-start))

if [ -n "${result[1]}" ]; then
   echo -e "The password is \033[1;31m${result[1]}\033[0m. The program ran during $(date -d@$runtime -u +%H:%M:%S) and did ${result[0]} attempts."
else
   echo "The password hasn't been found. The program ran for $(date -d@$runtime -u +%H:%M:%S) and did ${result[0]} attempts."
fi

rm -rf "$(pwd)/temp_bruteforce"
