# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
use List::Util qw/reduce/;


sub smallestDiv {
    my $limit  = shift;
    return reduce { lcm($a, $b) } 1..($limit);
}

sub lcm {
    my ($a, $b) = @_;
    use integer;
    return ($a * $b) / gcd($a, $b);
}
sub gcd {
  my ($a, $b) = @_;
  ($a,$b) = ($b,$a) if $a > $b;
  while ($a) {
    ($a, $b) = ($b % $a, $a);
  }
  return $b;
}

print smallestDiv(20) . "\n";
