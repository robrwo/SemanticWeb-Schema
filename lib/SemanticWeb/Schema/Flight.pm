use utf8;

package SemanticWeb::Schema::Flight;

# ABSTRACT: An airline flight.

use Moo;

extends qw/ SemanticWeb::Schema::Trip /;


use MooX::JSON_LD 'Flight';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.1';

=encoding utf8

=head1 DESCRIPTION

An airline flight.




=head1 ATTRIBUTES


=head2 C<aircraft>



The kind of aircraft (e.g., "Boeing 747").


A aircraft should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Vehicle']>

=back

=cut

has aircraft => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'aircraft',
);


=head2 C<arrival_airport>

C<arrivalAirport>

The airport where the flight terminates.


A arrival_airport should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Airport']>

=back

=cut

has arrival_airport => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalAirport',
);


=head2 C<arrival_gate>

C<arrivalGate>

Identifier of the flight's arrival gate.


A arrival_gate should be one of the following types:

=over

=item C<Str>

=back

=cut

has arrival_gate => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalGate',
);


=head2 C<arrival_terminal>

C<arrivalTerminal>

Identifier of the flight's arrival terminal.


A arrival_terminal should be one of the following types:

=over

=item C<Str>

=back

=cut

has arrival_terminal => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalTerminal',
);


=head2 C<boarding_policy>

C<boardingPolicy>

The type of boarding policy used by the airline (e.g. zone-based or
group-based).


A boarding_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BoardingPolicyType']>

=back

=cut

has boarding_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'boardingPolicy',
);


=head2 C<carrier>



'carrier' is an out-dated term indicating the 'provider' for parcel
delivery and flights.


A carrier should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has carrier => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'carrier',
);


=head2 C<departure_airport>

C<departureAirport>

The airport where the flight originates.


A departure_airport should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Airport']>

=back

=cut

has departure_airport => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departureAirport',
);


=head2 C<departure_gate>

C<departureGate>

Identifier of the flight's departure gate.


A departure_gate should be one of the following types:

=over

=item C<Str>

=back

=cut

has departure_gate => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departureGate',
);


=head2 C<departure_terminal>

C<departureTerminal>

Identifier of the flight's departure terminal.


A departure_terminal should be one of the following types:

=over

=item C<Str>

=back

=cut

has departure_terminal => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departureTerminal',
);


=head2 C<estimated_flight_duration>

C<estimatedFlightDuration>

The estimated time the flight will take.


A estimated_flight_duration should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has estimated_flight_duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'estimatedFlightDuration',
);


=head2 C<flight_distance>

C<flightDistance>

The distance of the flight.


A flight_distance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<Str>

=back

=cut

has flight_distance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'flightDistance',
);


=head2 C<flight_number>

C<flightNumber>

The unique identifier for a flight including the airline IATA code. For
example, if describing United flight 110, where the IATA code for United is
'UA', the flightNumber is 'UA110'.


A flight_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has flight_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'flightNumber',
);


=head2 C<meal_service>

C<mealService>

Description of the meals that will be provided or available for purchase.


A meal_service should be one of the following types:

=over

=item C<Str>

=back

=cut

has meal_service => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'mealService',
);


=head2 C<seller>



An entity which offers (sells / leases / lends / loans) the services /
goods. A seller may also be a provider.


A seller should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has seller => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seller',
);


=head2 C<web_checkin_time>

C<webCheckinTime>

The time when a passenger can check into the flight online.


A web_checkin_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has web_checkin_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'webCheckinTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Trip>

=cut

1;
