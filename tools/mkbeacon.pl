#!/usr/bin/perl

use strict;
use autodie;
use File::Temp 'tempfile';

my $timestamp = "2011-12-31";
my $time = $timestamp."0000";
$time =~ s/-//g;

foreach my $f (@ARGV) {
    next unless -f $f and $f =~ qr{^([a-z0-9.]+).*?(/([^/]+-[^/]+))?\.txt\.xz$};

    print "$f\n";

    my ($service, $set) = ($1,$3);
    my $from = "http://$service" . ($set ? " (set $set)" : "");

    my ($fh, $tmp) = tempfile();

    print $fh <<BEACON;
#FORMAT: BEACON
#CREATOR: URLTeam
#HOMEPAGE: http://urlte.am/
#RELATION: http://dbpedia.org/resource/HTTP_301
#DESCRIPTION: Shortened URLs from $from
#PREFIX: http://$service/
#SOURCE: http://$service/
#TIMESTAMP: $timestamp

BEACON
    close $fh;

    `xz -z $tmp`;
    `cat $f >> $tmp.xz`;
    `cat $tmp.xz > $f`;
    `touch -t $time $f`;
}

=head1 NAME

mkbeacon.pl - add metadata to .xz files from urlte.am

=head1 DESCRIPTION

This script prepends Beacon text format meta fields to link dumps provided by
L<http://urlea.am> beacuse metadata is crucial.

=head1 SEE ALSO

L<https://github.com/gbv/beaconspec>

=cut
