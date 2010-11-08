#!/usr/pkg/bin/bash

for i in *;
do
  cd $i
  bash compile-all.sh
  cd ..
done
