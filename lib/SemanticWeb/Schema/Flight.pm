package SemanticWeb::Schema::Flight;

# ABSTRACT: An airline flight.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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
    json_ld_serializer => \&_serialize_aircraft,
);

sub _serialize_aircraft { $_[0]->_serializer('aircraft') }


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
    json_ld_serializer => \&_serialize_arrival_airport,
);

sub _serialize_arrival_airport { $_[0]->_serializer('arrival_airport') }


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
    json_ld_serializer => \&_serialize_arrival_gate,
);

sub _serialize_arrival_gate { $_[0]->_serializer('arrival_gate') }


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
    json_ld_serializer => \&_serialize_arrival_terminal,
);

sub _serialize_arrival_terminal { $_[0]->_serializer('arrival_terminal') }


=head2 C<arrival_time>

C<arrivalTime>

The expected arrival time.


A arrival_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has arrival_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalTime',
    json_ld_serializer => \&_serialize_arrival_time,
);

sub _serialize_arrival_time { $_[0]->_serializer('arrival_time') }


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
    json_ld_serializer => \&_serialize_boarding_policy,
);

sub _serialize_boarding_policy { $_[0]->_serializer('boarding_policy') }


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
    json_ld_serializer => \&_serialize_carrier,
);

sub _serialize_carrier { $_[0]->_serializer('carrier') }


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
    json_ld_serializer => \&_serialize_departure_airport,
);

sub _serialize_departure_airport { $_[0]->_serializer('departure_airport') }


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
    json_ld_serializer => \&_serialize_departure_gate,
);

sub _serialize_departure_gate { $_[0]->_serializer('departure_gate') }


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
    json_ld_serializer => \&_serialize_departure_terminal,
);

sub _serialize_departure_terminal { $_[0]->_serializer('departure_terminal') }


=head2 C<departure_time>

C<departureTime>

The expected departure time.


A departure_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has departure_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'departureTime',
    json_ld_serializer => \&_serialize_departure_time,
);

sub _serialize_departure_time { $_[0]->_serializer('departure_time') }


=head2 C<estimated_flight_duration>

C<estimatedFlightDuration>

The estimated time the flight will take.


A estimated_flight_duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<Str>

=back

=cut

has estimated_flight_duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'estimatedFlightDuration',
    json_ld_serializer => \&_serialize_estimated_flight_duration,
);

sub _serialize_estimated_flight_duration { $_[0]->_serializer('estimated_flight_duration') }


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
    json_ld_serializer => \&_serialize_flight_distance,
);

sub _serialize_flight_distance { $_[0]->_serializer('flight_distance') }


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
    json_ld_serializer => \&_serialize_flight_number,
);

sub _serialize_flight_number { $_[0]->_serializer('flight_number') }


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
    json_ld_serializer => \&_serialize_meal_service,
);

sub _serialize_meal_service { $_[0]->_serializer('meal_service') }


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
    json_ld_serializer => \&_serialize_provider,
);

sub _serialize_provider { $_[0]->_serializer('provider') }


=head2 C<seller>



An entity which offers (sells / leases / lends / loans) the services /
goods. A seller may also be a provider.


A seller should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has seller => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seller',
    json_ld_serializer => \&_serialize_seller,
);

sub _serialize_seller { $_[0]->_serializer('seller') }


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
    json_ld_serializer => \&_serialize_web_checkin_time,
);

sub _serialize_web_checkin_time { $_[0]->_serializer('web_checkin_time') }




around json_ld_type => sub { return 'Flight' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'aircraft' => \&_serialize_aircraft,
       'arrivalAirport' => \&_serialize_arrival_airport,
       'arrivalGate' => \&_serialize_arrival_gate,
       'arrivalTerminal' => \&_serialize_arrival_terminal,
       'arrivalTime' => \&_serialize_arrival_time,
       'boardingPolicy' => \&_serialize_boarding_policy,
       'carrier' => \&_serialize_carrier,
       'departureAirport' => \&_serialize_departure_airport,
       'departureGate' => \&_serialize_departure_gate,
       'departureTerminal' => \&_serialize_departure_terminal,
       'departureTime' => \&_serialize_departure_time,
       'estimatedFlightDuration' => \&_serialize_estimated_flight_duration,
       'flightDistance' => \&_serialize_flight_distance,
       'flightNumber' => \&_serialize_flight_number,
       'mealService' => \&_serialize_meal_service,
       'provider' => \&_serialize_provider,
       'seller' => \&_serialize_seller,
       'webCheckinTime' => \&_serialize_web_checkin_time,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
