use utf8;

package SemanticWeb::Schema::TaxiReservation;

# ABSTRACT: A reservation for a taxi

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'TaxiReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A reservation for a taxi.<br/><br/> Note: This type is for information
about actual reservations, e.g. in confirmation emails or HTML pages with
individual confirmations of reservations. For offers of tickets, use <a
class="localLink" href="http://schema.org/Offer">Offer</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<party_size>

C<partySize>

Number of people the reservation should accommodate.


A party_size should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_party_size>

A predicate for the L</party_size> attribute.

=cut

has party_size => (
    is        => 'rw',
    predicate => '_has_party_size',
    json_ld   => 'partySize',
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
