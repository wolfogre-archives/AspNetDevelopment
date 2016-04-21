#!/usr/bin/perl
print "Content-type: text/html \n\n";
print "<html>";
print "<body>";
if($ENV{'REQUEST_METHOD'} eq "POST")
{
	read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});
}
elsif($ENV{'REQUEST_METHOD'} eq "GET")
{
$	buffer=$ENV{'QUERY_STRING'};
}
#分割用户提交数据
@pairs=split(/&/,$buffer);

#对用户提交数据进行解码
foreach $pair(@pairs)
{
	($name1,$value)=split(/=/,$pair);
	$value=~tr/+/ /; #注意最后两个斜线之间是有一个空格的.
	$value=~s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;
	$name1=~tr/+/ /; #注意最后两个斜线之间是有一个空格的.
	$name1=~s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;
	if($FORM1{$name1} eq ""){
		$FORM1{$name1}=$value;
	}
	else{
		$FORM1{$name1}=$FORM1{$name1}.",".$value;
	}
}
my $filename ="cgi/user.txt";
open(my $FILE1,">>",$filename) || die "Could not open this file '$filename' $!\n";
print $FILE1 "姓名：".$FORM1{'name'},"\n";
print $FILE1 "邮箱：".$FORM1{'email'},"\n";
print $FILE1 "性别：".$FORM1{'sex'},"\n";
print $FILE1 "爱好：".$FORM1{'hobby'},"\n";
print $FILE1 "留言：".$FORM1{'message'},"\n";
print $FILE1 "<hr/>\n";
close($FILE1);
open($FILE1,"<",$filename);
while($line=<$FILE1>){
print $line,"<br/>";
}
close($FILE1);
print "</body>";
print "</html>";

# End