# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

#!/usr/bin/perl
use Math::Complex;
use strict;
use warnings;
use feature qw/say/;

sub findLargestPrime {
    my $n = shift;
    my $maxPrime = -1;
    while ($n % 2 == 0) {
        $maxPrime = 2;
        $n /= 2;
    }
    for (my $i = 3; $i < sqrt($n); $i += 2) {
        while ($n % $i == 0) {
            $maxPrime = $i;
            $n /= $i;
        }
    }
    if ($n > 2) {
        $maxPrime = $n;
    }
    $n;
}

say findLargestPrime 600851475143;