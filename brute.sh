echo "Enter sample Password"
read passwd
echo $passwd
printf \\$(printf "%o" $oct)
