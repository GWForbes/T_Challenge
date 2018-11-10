#!/usr/bin/env perl

use strict;
use warnings;

my $string = $ARGV[0]
  or die qq{usage: perl histogram "<TEXT STRING>"\n};

my @characters = split( '', $string );

my $tracker;

foreach my $char (@characters) {
    $tracker->{$char} += 1;
}

#The second compare is there because, though it isn't stated,
#the list of chars is in alphabetical order after order of frequency

foreach my $char (
    reverse sort { $tracker->{$a} <=> $tracker->{$b} || $b cmp $a }
    keys %$tracker
  )
{
    print "$char: " . ( "#" x $tracker->{$char} ) . "\n";
}
