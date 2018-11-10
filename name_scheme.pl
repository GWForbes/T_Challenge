#!/usr/bin/env perl

use strict;
use warnings;

my %last_name = (
    Mary      => "Li",
    James     => "O'Day",
    Thomas    => "Miller",
    William   => "Garcia",
    Elizabeth => "Davis",
);
foreach my $name (
    sort { length( $last_name{$a} ) <=> length( $last_name{$b} ) || $a cmp $b }
    keys %last_name )
{
    print "$name $last_name{$name}\n";
    #printf("%s %s\n", $name, $last_name{$name});
}
