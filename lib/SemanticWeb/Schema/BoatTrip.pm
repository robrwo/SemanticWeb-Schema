use utf8;

package SemanticWeb::Schema::BoatTrip;

# ABSTRACT: A trip on a commercial ferry line.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Trip /;


use MooX::JSON_LD 'BoatTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A trip on a commercial ferry line.




=head1 ATTRIBUTES


=head2 C<arrival_boat_terminal>

C<arrivalBoatTerminal>

The terminal or port from which the boat arrives.


A arrival_boat_terminal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BoatTerminal']>

=back

=head2 C<_has_arrival_boat_terminal>

A predicate for the L</arrival_boat_terminal> attribute.

=cut

has arrival_boat_terminal => (
    is        => 'rw',
    predicate => '_has_arrival_boat_terminal',
    json_ld   => 'arrivalBoatTerminal',
);


=head2 C<departure_boat_terminal>

C<departureBoatTerminal>

The terminal or port from which the boat departs.


A departure_boat_terminal should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BoatTerminal']>

=back

=head2 C<_has_departure_boat_terminal>

A predicate for the L</departure_boat_terminal> attribute.

=cut

has departure_boat_terminal => (
    is        => 'rw',
    predicate => '_has_departure_boat_terminal',
    json_ld   => 'departureBoatTerminal',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Trip>

=cut

1;
