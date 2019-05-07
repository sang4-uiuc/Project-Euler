#!/usr/bin/perl

#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.


use strict;
use warnings;

my $limit;
while (my $arg = shift @ARGV) {
    $limit = $arg, next unless defined $limit;
    die "Unexpected arg: '$arg'";
}

sub foo {
    my $l = shift @_;
    my $total;
    foreach (1..($l-1)) {
        if ($_ % 3 == 0 || $_ % 5 == 0) {
            $total += $_;
        }
    }
    print "$total\n";
}

foo $limit;
