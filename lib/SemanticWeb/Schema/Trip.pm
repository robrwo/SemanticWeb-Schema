use utf8;

package SemanticWeb::Schema::Trip;

# ABSTRACT: A trip or journey

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Trip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A trip or journey. An itinerary of visits to one or more places.




=head1 ATTRIBUTES


=head2 C<arrival_time>

C<arrivalTime>

The expected arrival time.


A arrival_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_arrival_time>

A predicate for the L</arrival_time> attribute.

=cut

has arrival_time => (
    is        => 'rw',
    predicate => '_has_arrival_time',
    json_ld   => 'arrivalTime',
);


=head2 C<departure_time>

C<departureTime>

The expected departure time.


A departure_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_departure_time>

A predicate for the L</departure_time> attribute.

=cut

has departure_time => (
    is        => 'rw',
    predicate => '_has_departure_time',
    json_ld   => 'departureTime',
);


=head2 C<itinerary>



Destination(s) ( L<SemanticWeb::Schema::Place> ) that make up a trip. For a trip where destination order is important use L<SemanticWeb::Schema::ItemList> to specify that order (see examples).

A itinerary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_itinerary>

A predicate for the L</itinerary> attribute.

=cut

has itinerary => (
    is        => 'rw',
    predicate => '_has_itinerary',
    json_ld   => 'itinerary',
);


=head2 C<offers>



An offer to provide this itemE<#x2014>for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a L<SemanticWeb::Schema::Demand>. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.

A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Demand']>

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=head2 C<_has_offers>

A predicate for the L</offers> attribute.

=cut

has offers => (
    is        => 'rw',
    predicate => '_has_offers',
    json_ld   => 'offers',
);


=head2 C<part_of_trip>

C<partOfTrip>

Identifies that this L<SemanticWeb::Schema::Trip> is a subTrip of another Trip.  For example Day 1, Day 2, etc. of a multi-day trip.

A part_of_trip should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Trip']>

=back

=head2 C<_has_part_of_trip>

A predicate for the L</part_of_trip> attribute.

=cut

has part_of_trip => (
    is        => 'rw',
    predicate => '_has_part_of_trip',
    json_ld   => 'partOfTrip',
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_provider>

A predicate for the L</provider> attribute.

=cut

has provider => (
    is        => 'rw',
    predicate => '_has_provider',
    json_ld   => 'provider',
);


=head2 C<sub_trip>

C<subTrip>

Identifies a L<SemanticWeb::Schema::Trip> that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip.

A sub_trip should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Trip']>

=back

=head2 C<_has_sub_trip>

A predicate for the L</sub_trip> attribute.

=cut

has sub_trip => (
    is        => 'rw',
    predicate => '_has_sub_trip',
    json_ld   => 'subTrip',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
