package SemanticWeb::Schema::FlightReservation;

# ABSTRACT: A reservation for air travel

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A reservation for air travel.</p> <p>Note: This type is for information
about actual reservations, e.g. in confirmation emails or HTML pages with
individual confirmations of reservations. For offers of tickets, use <a
class="localLink" href="http://schema.org/Offer">Offer</a>.

=end html




=head1 ATTRIBUTES


=head2 C<boarding_group>

C<boardingGroup>

The airline-specific indicator of boarding order / preference.


A boarding_group should be one of the following types:

=over

=item C<Str>

=back

=cut

has boarding_group => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'boardingGroup',
    json_ld_serializer => \&_serialize_boarding_group,
);

sub _serialize_boarding_group { $_[0]->_serializer('boarding_group') }


=head2 C<passenger_priority_status>

C<passengerPriorityStatus>

The priority status assigned to a passenger for security or boarding (e.g.
FastTrack or Priority).


A passenger_priority_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=cut

has passenger_priority_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'passengerPriorityStatus',
    json_ld_serializer => \&_serialize_passenger_priority_status,
);

sub _serialize_passenger_priority_status { $_[0]->_serializer('passenger_priority_status') }


=head2 C<passenger_sequence_number>

C<passengerSequenceNumber>

The passenger's sequence number as assigned by the airline.


A passenger_sequence_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has passenger_sequence_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'passengerSequenceNumber',
    json_ld_serializer => \&_serialize_passenger_sequence_number,
);

sub _serialize_passenger_sequence_number { $_[0]->_serializer('passenger_sequence_number') }


=head2 C<security_screening>

C<securityScreening>

The type of security screening the passenger is subject to.


A security_screening should be one of the following types:

=over

=item C<Str>

=back

=cut

has security_screening => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'securityScreening',
    json_ld_serializer => \&_serialize_security_screening,
);

sub _serialize_security_screening { $_[0]->_serializer('security_screening') }




around json_ld_type => sub { return 'FlightReservation' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'boardingGroup' => \&_serialize_boarding_group,
       'passengerPriorityStatus' => \&_serialize_passenger_priority_status,
       'passengerSequenceNumber' => \&_serialize_passenger_sequence_number,
       'securityScreening' => \&_serialize_security_screening,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
