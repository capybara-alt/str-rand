# 正規表現からランダムで文字列を出力

use Exporter;

our @ISA= qw( Exporter );
our @EXPORT = qw( generate );

use strict;
use warnings;
use String::Random qw(random_regex);

sub generate {
    return random_regex($_[0]);
};

1;