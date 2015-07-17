echo "Enter Password:"                                                                                                                                      
read passwd
passlen=${#passwd}
for ((j=0;j<$passlen;j++)); do
  for i in `seq 32 127`; do
    oct=$(printf \\$(printf "%o" $i))
    echo $oct
    if [ ${passwd} == "$oct" ]; then
      cracked+=$oct
    fi
  done
  if [ -n "$cracked" ]; then
    echo "Password is: $cracked"
    exit
  else
    for i in `seq 32 127`; do
      for j in `seq 32 127`; do
        oct=$(printf \\$(printf "%o" $i))$(printf \\$(printf "%o" $j))
        echo $oct
        if [ ${passwd} == "$oct" ]; then
          cracked+=$oct
        fi
      done
    done
  fi
  if [ -n "$cracked" ]; then
    echo "Password is: $cracked"
    exit
  else
    for i in `seq 32 127`; do
      for j in `seq 32 127`; do
        for k in `seq 32 127`; do
          oct=$(printf \\$(printf "%o" $i))$(printf \\$(printf "%o" $j))$(printf \\$(printf "%o" $k))
          echo $oct
          if [ ${passwd} == "$oct" ]; then
            echo $oct
            cracked+=$oct
            echo "Password is: $cracked"
            exit
          fi
        done
      done
    done
  fi
done
