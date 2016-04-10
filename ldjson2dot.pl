#!/usr/bin/perl
use v5.14;
use JSON;
my %node;
binmode(STDOUT,':utf8');
say "digraph {";
say " node[shape=point]";
while (<>) {
    my $edge = decode_json($_);
    foreach (grep { !$node{$edge->{$_}} } qw(a b)) {
#        say $edge->{$_}, '[label="', $edge->{$_.'Label'}, '"]';
    }
    say $edge->{a}, ' -> ', $edge->{b};
}
say "}";
