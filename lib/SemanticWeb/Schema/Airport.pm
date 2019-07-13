use utf8;

package SemanticWeb::Schema::Airport;

# ABSTRACT: An airport.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'Airport';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

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

=cut

has iata_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'iataCode',
);


=head2 C<icao_code>

C<icaoCode>

ICAO identifier for an airport.


A icao_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has icao_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'icaoCode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
