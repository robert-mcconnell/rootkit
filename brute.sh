echo "Enter Password:"                                                                                                                                      
read passwd
passlen=${#passwd}
temp=""
for ((j=0;j<$passlen;j++)); do
  for i in `seq 32 127`; do
    oct=$(printf \\$(printf "%o" $i))
    if [ ${passwd} == "$temp" ]; then
      cracked+=$temp
    fi
  done
  if [ -n "$cracked" ]; then
    echo "Password is: $cracked"
  else
    temp+=$oct
  fi
done
