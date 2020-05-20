#!/bin/bash

perl -pe '/^=head1 DESCRIPTION/ and print <STDIN>' lib/Linux/Smaps.pm >README.pod <<EOF
=head1 INSTALLATION

 perl Makefile.PL
 make
 make test
 make install

=head1 DISTRIBUTION

 perl Makefile.PL
 make manifest
 make dist

EOF

perldoc -tU README.pod >README
rm README.pod
