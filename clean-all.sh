for i in *;
do
  cd $i
  bash clean-all.sh
  cd ..
done
