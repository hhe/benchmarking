#!/usr/pkg/bin/bash


find . -name benchmark.txt -exec rm {} \;
rm benchmark-all.txt

for i in "MiBench" "SNU-real-time" "NPB2.3-omp-C";
do
  cd $i

  gcc run_test.c && ./a.out
  if [ $? -ne 0 ]; then exit -1; fi

  cd ..
done

find . -name benchmark.txt -exec cat {} >> benchmark-all.txt \;