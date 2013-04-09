#!/usr/bin/perl -w

use strict;

my $in = $ARGV[0];

chomp $in;
if ($in =~ m|\/emailAddress=(.+?)\/CN=(.+?)\/|)
{

    my $out= "$2 <$1>";

    print $out;

} else {
    #just echoing the output won't work for x509 authors
    #print $in;

    #uncomment this if you want success even if author unidentified
    #print "Snafu <snafu\@example.com>";
    die 1;
}
exit 0;
