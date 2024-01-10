use utf8;

package SemanticWeb::Schema::callSign;

# ABSTRACT: A [callsign](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'callSign';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in
broadcasting and radio communications to identify people, radio and TV
stations, or vehicles.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
