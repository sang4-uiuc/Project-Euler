#!/usr/bin/perl
use feature 'say';

print "Hello World!\n";
my $num = 1;
my $limit = '9' x $num;

# say "$limit";
# foreach (1..$limit) {
#     say $_;
# }
my $string = ( 45/2 ) x 4; # "22.522.522.522.5"
# my $string = 'how does this work';
say $string;

say scalar reverse($string);

foreach (99..1) {
    say $_;
}

foreach (reverse 1..11) {
    say $_;
}