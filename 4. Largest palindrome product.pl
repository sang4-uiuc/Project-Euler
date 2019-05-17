# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw( min max );

sub findLargestPalindrome {
    my $num_digit = shift;
    my $limit = '9' x $num_digit;
    my $max = -1;
    my $iterations = 0;
    # my @arr;
    OUTER:
    # orinally thought I could short cut this problem by starting out from the largest number and going down and grab the first one that is a palindrome number.
    # but then it seems that the first number I get is not necessarily the largest palindrome, so I would still have to loop through everything to make sure.
    foreach my $i (reverse 100..$limit) {
        foreach my $j (reverse $i..$limit) {
            my $curr = $i * $j;
            $iterations++;
            # if (isPalindrome($curr) and $curr > $max) {
            if (isPalindrome($curr)) {
                # push @arr, $curr;
                $max = $curr;
                print "Iterations: $iterations\n";
                print "$curr\n";
                last OUTER;
            }
        }
    }
    # print "Iterations: $iterations\n";
    # $max = max @arr;
    # print "$max\n";
}

sub findLargestPalindrome2 {
    my $num_digit = shift;
    my $limit = '9' x $num_digit;
    my $max = -1;
    my $iterations = 0;
    foreach my $i (100..$limit) {
        foreach my $j ($i..$limit) {
            my $curr = $i * $j;
            $iterations++;
            if (isPalindrome($curr) and $curr > $max) {
                $max = $curr;
            }
        }
    }
    print "Iterations: $iterations\n";
    print "$max\n";
}

sub isPalindrome {
    my $num = shift;
    (scalar reverse $num) == $num ? 1 : 0;
}

findLargestPalindrome 3;
findLargestPalindrome2 3;