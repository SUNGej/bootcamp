#! /bin/bash
end=10
for number in $(seq 1 $end)
do
  if [ `expr $number % 2` -eq 0 ]; then
    echo "${number} is even number"
  fi
done
