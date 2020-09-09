use utf8;

package SemanticWeb::Schema::Airport;

# ABSTRACT: An airport.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Airport';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

An airport.




=head1 ATTRIBUTES


=head2 C<iata_code>

C<iataCode>

IATA identifier for an airline or airport.


A iata_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_iata_code>

A predicate for the L</iata_code> attribute.

=cut

has iata_code => (
    is        => 'rw',
    predicate => '_has_iata_code',
    json_ld   => 'iataCode',
);


=head2 C<icao_code>

C<icaoCode>

ICAO identifier for an airport.


A icao_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_icao_code>

A predicate for the L</icao_code> attribute.

=cut

has icao_code => (
    is        => 'rw',
    predicate => '_has_icao_code',
    json_ld   => 'icaoCode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
