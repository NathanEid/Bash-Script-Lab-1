#01-------------------------------------------------------------------

#awk -F : '{print $5}' /etc/passwd

#02-------------------------------------------------------------------

<<Comment
awk ' BEGIN {FS=":"}
{print NR , "---" , $1 , "---" $5 , "---" , $6}' /etc/passwd
Comment

#03-------------------------------------------------------------------

<<Comment
awk ' BEGIN {FS=":"}
{
	if($3>500){print $1 , "---" , $3 , "---" , $5}

}' /etc/passwd
Comment

#04-------------------------------------------------------------------

<<Comment
awk ' BEGIN {FS=":"}
{
	if($3==500){print $1 , "---" , $3 , "---" , $5}
}' /etc/passwd
Comment

#05-------------------------------------------------------------------

<<Comment
awk ' BEGIN {FS=":"}
{
	if(NR>=5 && NR<=15){print $0}
}' /etc/passwd
Comment

#06-------------------------------------------------------------------

<<Comment
awk ' BEGIN {FS=":"}
{
	if($1=="lp"){$1="mylp" ; print $0}
}' /etc/passwd
Comment

<<Comment
awk -F: '{ i=1; while (i<=NF)
	{
	if($i=="lp") {$i="mylp"}
	i++;
	}
	print $0;
}' /etc/passwd
Comment

#07-------------------------------------------------------------------

#awk -F: '{print $3,$1}' /etc/passwd | sort -n | tail -n 1

#08-------------------------------------------------------------------

awk -F: '{sum+=$3;} END{print sum;}' /etc/passwd




