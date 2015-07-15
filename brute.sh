echo "Enter 1 digit Password:"
read passwd
for i in `seq 32 127`; do
  oct=$(printf \\$(printf "%o" $i))
  if [ $passwd == $oct ]; then                                                                                                                            
    echo Password is: $oct
  fi  
done
