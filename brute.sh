echo "Enter sample Password"
read passwd
echo Password is: $passwd
rand=$(($RANDOM%10))
#echo $rand
if [ $passwd == $rand ]; then 
  echo $rand                                                                                                                                              
else
  rand=$(($RANDOM%10))
fi
#printf \\$(printf "%o" $oct)
