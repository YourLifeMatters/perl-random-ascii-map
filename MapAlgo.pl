#!/usr/bin/perl
use strict;
use warnings;
my $width  = 60;
my $height = 60;
my @map;
my $colored;
for my $y (0..$height-1) {
    for my $x (0..$width-1) {
        $map[$y][$x] = ' ';
    }
}
sub add_room {
    my $w = int(rand(6)) + 8;
    my $h = int(rand(6)) + 7;
    my $x = int(rand($width - $w - 1)) + 1;
    my $y = int(rand($height - $h - 1)) + 1;

    for my $dy (0..$h-1) {
        for my $dx (0..$w-1) {
            $map[$y+$dy][$x+$dx] = '-';
        }
    }
}

for (1..10) {
    add_room();
	
}
for my $row (@map) { chomp($colored = int(rand(5)));
	system("color $colored"); print join('', @$row), "\n"; }
