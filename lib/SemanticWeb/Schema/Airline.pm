use utf8;

package SemanticWeb::Schema::Airline;

# ABSTRACT: An organization that provides flights for passengers.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'Airline';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

An organization that provides flights for passengers.




=head1 ATTRIBUTES


=head2 C<boarding_policy>

C<boardingPolicy>

The type of boarding policy used by the airline (e.g. zone-based or
group-based).


A boarding_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BoardingPolicyType']>

=back

=head2 C<_has_boarding_policy>

A predicate for the L</boarding_policy> attribute.

=cut

has boarding_policy => (
    is        => 'rw',
    predicate => '_has_boarding_policy',
    json_ld   => 'boardingPolicy',
);


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




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
