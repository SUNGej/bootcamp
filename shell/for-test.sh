#! /bin/bash

#print 1 to 5
for number in 1 2 3 4 5
do
  echo $number
done

#print 1 to 5 use seq
for number in $(seq 5)
do
  echo $number
done

end=5
for number in $(seq 1 $end) 
do
  echo $number
done
