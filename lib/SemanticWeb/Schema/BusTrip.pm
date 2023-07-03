use utf8;

package SemanticWeb::Schema::BusTrip;

# ABSTRACT: A trip on a commercial bus line.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Trip /;


use MooX::JSON_LD 'BusTrip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A trip on a commercial bus line.




=head1 ATTRIBUTES


=head2 C<arrival_bus_stop>

C<arrivalBusStop>

The stop or station from which the bus arrives.


A arrival_bus_stop should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BusStation']>

=item C<InstanceOf['SemanticWeb::Schema::BusStop']>

=back

=head2 C<_has_arrival_bus_stop>

A predicate for the L</arrival_bus_stop> attribute.

=cut

has arrival_bus_stop => (
    is        => 'rw',
    predicate => '_has_arrival_bus_stop',
    json_ld   => 'arrivalBusStop',
);


=head2 C<bus_name>

C<busName>

The name of the bus (e.g. Bolt Express).


A bus_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_bus_name>

A predicate for the L</bus_name> attribute.

=cut

has bus_name => (
    is        => 'rw',
    predicate => '_has_bus_name',
    json_ld   => 'busName',
);


=head2 C<bus_number>

C<busNumber>

The unique identifier for the bus.


A bus_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_bus_number>

A predicate for the L</bus_number> attribute.

=cut

has bus_number => (
    is        => 'rw',
    predicate => '_has_bus_number',
    json_ld   => 'busNumber',
);


=head2 C<departure_bus_stop>

C<departureBusStop>

The stop or station from which the bus departs.


A departure_bus_stop should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BusStation']>

=item C<InstanceOf['SemanticWeb::Schema::BusStop']>

=back

=head2 C<_has_departure_bus_stop>

A predicate for the L</departure_bus_stop> attribute.

=cut

has departure_bus_stop => (
    is        => 'rw',
    predicate => '_has_departure_bus_stop',
    json_ld   => 'departureBusStop',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Trip>

=cut

1;
