# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw\sum\;

my $limit = 4000000;
my @arr = (1, 2);

sub fib {
    my $r = shift;
    my @arr = @$r;
    my $x3 = $arr[-1] + $arr[-2];
    # print "$x3\n";
    if ($x3 > $limit) {
        return sum(grep { $_ % 2 == 0 } @arr);
    } else {
        push @arr, $x3;
        fib(\@arr);
    }
}

my $sum = fib(\@arr);
print "Sum: $sum\n";
