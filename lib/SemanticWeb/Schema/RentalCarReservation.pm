use utf8;

package SemanticWeb::Schema::RentalCarReservation;

# ABSTRACT: A reservation for a rental car

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'RentalCarReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A reservation for a rental car. Note: This type is for information about
actual reservations, e.g. in confirmation emails or HTML pages with
individual confirmations of reservations.




=head1 ATTRIBUTES


=head2 C<dropoff_location>

C<dropoffLocation>

Where a rental car can be dropped off.


A dropoff_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_dropoff_location>

A predicate for the L</dropoff_location> attribute.

=cut

has dropoff_location => (
    is        => 'rw',
    predicate => '_has_dropoff_location',
    json_ld   => 'dropoffLocation',
);


=head2 C<dropoff_time>

C<dropoffTime>

When a rental car can be dropped off.


A dropoff_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_dropoff_time>

A predicate for the L</dropoff_time> attribute.

=cut

has dropoff_time => (
    is        => 'rw',
    predicate => '_has_dropoff_time',
    json_ld   => 'dropoffTime',
);


=head2 C<pickup_location>

C<pickupLocation>

Where a taxi will pick up a passenger or a rental car can be picked up.


A pickup_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_pickup_location>

A predicate for the L</pickup_location> attribute.

=cut

has pickup_location => (
    is        => 'rw',
    predicate => '_has_pickup_location',
    json_ld   => 'pickupLocation',
);


=head2 C<pickup_time>

C<pickupTime>

When a taxi will pickup a passenger or a rental car can be picked up.


A pickup_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_pickup_time>

A predicate for the L</pickup_time> attribute.

=cut

has pickup_time => (
    is        => 'rw',
    predicate => '_has_pickup_time',
    json_ld   => 'pickupTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
