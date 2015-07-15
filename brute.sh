echo "Enter 4 digit Password:"                                                                                                                              
read passwd
for i in `seq 1 9999`i; do
  if [ $passwd == $i ]; then
    echo Password is: $i
  fi
done
