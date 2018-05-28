package SemanticWeb::Schema::RentalCarReservation;

# ABSTRACT: A reservation for a rental car

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use curry;
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
);


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
);


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
);


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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'RentalCarReservation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'dropoffLocation' => $self->curry::_serializer('dropoff_location'),
       'dropoffTime' => $self->curry::_serializer('dropoff_time'),
       'pickupLocation' => $self->curry::_serializer('pickup_location'),
       'pickupTime' => $self->curry::_serializer('pickup_time'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
