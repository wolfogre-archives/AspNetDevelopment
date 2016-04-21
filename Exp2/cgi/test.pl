# 显示与服务器有关的环境变量的CGI程序getenv1.pl
#!/usr/bin/perl

print "Content-type: text/html\n\n";
print "<HTML>";
print "<BODY>";
print "<H2>Environment Variables Relating to Server</H2>";
print "<HR>";
print "<B>";
print "GATEWAY_INTERFACE: ",$ENV{'GATEWAY_INTERFACE'},"<BR>";
print "SERVER_NAME: ",$ENV{'SERVER_NAME'},"<BR>";
print "SERVER_PORT: ",$ENV{'SERVER_PORT'},"<BR>";
print "SERVER_PROTOCOL: ",$ENV{'SERVER_PROTOCOL'},"<BR>";
print "SERVER_SOFTWARE: ",$ENV{'SERVER_SOFTWARE'};
print "</B>";
print "<HR>";

print "<H2>Environment Variables Relating to Client</H2>";
print "<HR>";
print "<B>";
print "HTTP_ACCEPT: ",$ENV{'HTTP_ACCEPT'},"<BR>";
print "HTTP_USER_AGENT: ",$ENV{'HTTP_USER_AGENT'},"<BR>";
print "HTTP_REFERER: ",$ENV{'HTTP_REFERER'};
print "</B>";
print "<HR>";

print "<H2>Environment Variables Relating to Request(GET)</H2>";
print "<HR>";
print "<B>";
print "CONTENT_TYPE: ",$ENV{'CONTENT_TYPE'},"<BR>";
print "CONTENT_LENGTH: ",$ENV{'CONTENT_LENGTH'},"<BR>";
print "QUERY_STRING: ",$ENV{'QUERY_STRING'},"<BR>";
print "REQUEST_METHOD: ",$ENV{'REQUEST_METHOD'};
print "<HR>";

print "</BODY>";
print "</HTML>";

# End getenv1.pl