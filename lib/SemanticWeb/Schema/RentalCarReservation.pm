package SemanticWeb::Schema::RentalCarReservation;

# ABSTRACT: A reservation for a rental car

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A reservation for a rental car.</p> <p>Note: This type is for information
about actual reservations, e.g. in confirmation emails or HTML pages with
individual confirmations of reservations.

=end html




=head1 ATTRIBUTES


=head2 C<dropoff_location>

C<dropoffLocation>

Where a rental car can be dropped off.


A dropoff_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has dropoff_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dropoffLocation',
    json_ld_serializer => \&_serialize_dropoff_location,
);

sub _serialize_dropoff_location { $_[0]->_serializer('dropoff_location') }


=head2 C<dropoff_time>

C<dropoffTime>

When a rental car can be dropped off.


A dropoff_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has dropoff_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dropoffTime',
    json_ld_serializer => \&_serialize_dropoff_time,
);

sub _serialize_dropoff_time { $_[0]->_serializer('dropoff_time') }


=head2 C<pickup_location>

C<pickupLocation>

Where a taxi will pick up a passenger or a rental car can be picked up.


A pickup_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has pickup_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pickupLocation',
    json_ld_serializer => \&_serialize_pickup_location,
);

sub _serialize_pickup_location { $_[0]->_serializer('pickup_location') }


=head2 C<pickup_time>

C<pickupTime>

When a taxi will pickup a passenger or a rental car can be picked up.


A pickup_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has pickup_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pickupTime',
    json_ld_serializer => \&_serialize_pickup_time,
);

sub _serialize_pickup_time { $_[0]->_serializer('pickup_time') }




around json_ld_type => sub { return 'RentalCarReservation' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'dropoffLocation' => \&_serialize_dropoff_location,
       'dropoffTime' => \&_serialize_dropoff_time,
       'pickupLocation' => \&_serialize_pickup_location,
       'pickupTime' => \&_serialize_pickup_time,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
