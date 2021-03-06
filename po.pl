#!/export/home/sras/autodx/common/qe/perl5/bin/perl
# PartOverride Parser by Tony Haddaway and Don Armstead
# v1.0 10/3/18

use strict ;
use warnings ;

my $count = 0 ;
my $result ;
my $word = "\<result\>" ;

$result = qx{java -jar /autodx/prevalent_services/PartOverrideLookup.jar $ARGV[0]} ;

my @count = $result =~ /$word/g;

if (scalar(@count) == 0) {
    print "Error. No part numbers found.\n" ;
} elsif (scalar(@count) == 1) {
    print "Single part number found.\n" ;
} elsif (scalar(@count) > 1) {
    print "Multiple part numbers.\n" ;
}

