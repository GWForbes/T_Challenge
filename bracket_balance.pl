#!/usr/bin/env perl

use strict;
use warnings;

my $result = is_balanced($ARGV[0]) ? "Yes" : "No";
print "\n\nBalanced: $result\n";

sub is_balanced {
    my $raw_brackets = shift;
    # return immediately if an odd-length comes in
    # That means a bracket is already not matched
    return 0 if ( length($raw_brackets) % 2 != 0 );

    #return if the first brack is a closing bracket
    if($raw_brackets =~ m/^(\]|\}|\))/){
        return 0;
    }

    #If a matching pair are right next to each other
    #Strip em out. No need for them to move on.
    #they match and would not change the outcome
    while($raw_brackets =~ m/(\(\)|\[\]|\{\})/g){
        $raw_brackets =~ s/(\(\)|\[\]|\{\})//g;
    }

    return $raw_brackets eq '' ? 1 : 0;
}
