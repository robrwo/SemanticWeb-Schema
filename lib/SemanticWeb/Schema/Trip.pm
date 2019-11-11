use utf8;

package SemanticWeb::Schema::Trip;

# ABSTRACT: A trip or journey

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Trip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

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

=cut

has arrival_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'arrivalTime',
);


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
);


=head2 C<itinerary>



=begin html

<p>Destination(s) ( <a class="localLink"
href="http://schema.org/Place">Place</a> ) that make up a trip. For a trip
where destination order is important use <a class="localLink"
href="http://schema.org/ItemList">ItemList</a> to specify that order (see
examples).<p>

=end html


A itinerary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has itinerary => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'itinerary',
);


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offers',
);


=head2 C<part_of_trip>

C<partOfTrip>

=begin html

<p>Identifies that this <a class="localLink"
href="http://schema.org/Trip">Trip</a> is a subTrip of another Trip. For
example Day 1, Day 2, etc. of a multi-day trip.<p>

=end html


A part_of_trip should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Trip']>

=back

=cut

has part_of_trip => (
    is        => 'rw',
    predicate => 1,
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

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
);


=head2 C<sub_trip>

C<subTrip>

=begin html

<p>Identifies a <a class="localLink" href="http://schema.org/Trip">Trip</a>
that is a subTrip of this Trip. For example Day 1, Day 2, etc. of a
multi-day trip.<p>

=end html


A sub_trip should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Trip']>

=back

=cut

has sub_trip => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subTrip',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
