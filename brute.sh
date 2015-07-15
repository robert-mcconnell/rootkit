echo "Enter Password:"
read passwd
for ((j=0;j<${#passwd};j++)); do
  for i in `seq 32 127`; do
    oct=$(printf \\$(printf "%o" $i))
    pass[$j]="${passwd:j:1}"
    if [ ${pass[$j]} == "$oct" ]; then                                                                                                                  
      cracked+=$oct
    fi
  done
done
echo "Password is: $cracked"
