use utf8;

package SemanticWeb::Schema::FloorPlan;

# ABSTRACT: A FloorPlan is an explicit representation of a collection of similar accommodations

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'FloorPlan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A FloorPlan is an explicit representation of a collection of similar
accommodations, allowing the provision of common information (room counts,
sizes, layout diagrams) and offers for rental or sale. In typical use, some
<a class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a> has an <a
class="localLink"
href="http://schema.org/accommodationFloorPlan">accommodationFloorPlan</a>
which is a <a class="localLink"
href="http://schema.org/FloorPlan">FloorPlan</a>. A FloorPlan is always in
the context of a particular place, either a larger <a class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a> or a single
<a class="localLink" href="http://schema.org/Apartment">Apartment</a>. The
visual/spatial aspects of a floor plan (i.e. room layout, <a
href="https://en.wikipedia.org/wiki/Floor_plan">see wikipedia</a>) can be
indicated using <a class="localLink"
href="http://schema.org/image">image</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<is_plan_for_apartment>

C<isPlanForApartment>

Indicates some accommodation that this floor plan describes.


A is_plan_for_apartment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Accommodation']>

=back

=head2 C<_has_is_plan_for_apartment>

A predicate for the L</is_plan_for_apartment> attribute.

=cut

has is_plan_for_apartment => (
    is        => 'rw',
    predicate => '_has_is_plan_for_apartment',
    json_ld   => 'isPlanForApartment',
);


=head2 C<number_of_accommodation_units>

C<numberOfAccommodationUnits>

=begin html

<p>Indicates the total (available plus unavailable) number of accommodation
units in an <a class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a>, or the
number of accommodation units for a specific <a class="localLink"
href="http://schema.org/FloorPlan">FloorPlan</a> (within its specific <a
class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a>). See also
<a class="localLink"
href="http://schema.org/numberOfAvailableAccommodationUnits">numberOfAvaila
bleAccommodationUnits</a>.<p>

=end html


A number_of_accommodation_units should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_number_of_accommodation_units>

A predicate for the L</number_of_accommodation_units> attribute.

=cut

has number_of_accommodation_units => (
    is        => 'rw',
    predicate => '_has_number_of_accommodation_units',
    json_ld   => 'numberOfAccommodationUnits',
);


=head2 C<number_of_available_accommodation_units>

C<numberOfAvailableAccommodationUnits>

=begin html

<p>Indicates the number of available accommodation units in an <a
class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a>, or the
number of accommodation units for a specific <a class="localLink"
href="http://schema.org/FloorPlan">FloorPlan</a> (within its specific <a
class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a>). See also
<a class="localLink"
href="http://schema.org/numberOfAccommodationUnits">numberOfAccommodationUn
its</a>.<p>

=end html


A number_of_available_accommodation_units should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_number_of_available_accommodation_units>

A predicate for the L</number_of_available_accommodation_units> attribute.

=cut

has number_of_available_accommodation_units => (
    is        => 'rw',
    predicate => '_has_number_of_available_accommodation_units',
    json_ld   => 'numberOfAvailableAccommodationUnits',
);


=head2 C<number_of_bathrooms_total>

C<numberOfBathroomsTotal>

=begin html

<p>The total integer number of bathrooms in a some <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>, following real
estate conventions as <a
href="https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field">do
cumented in RESO</a>: "The simple sum of the number of bathrooms. For
example for a property with two Full Bathrooms and one Half Bathroom, the
Bathrooms Total Integer will be 3.". See also <a class="localLink"
href="http://schema.org/numberOfRooms">numberOfRooms</a>.<p>

=end html


A number_of_bathrooms_total should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_number_of_bathrooms_total>

A predicate for the L</number_of_bathrooms_total> attribute.

=cut

has number_of_bathrooms_total => (
    is        => 'rw',
    predicate => '_has_number_of_bathrooms_total',
    json_ld   => 'numberOfBathroomsTotal',
);


=head2 C<number_of_full_bathrooms>

C<numberOfFullBathrooms>

=begin html

<p>Number of full bathrooms - The total number of full and Â¾ bathrooms in
an <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>. This corresponds
to the <a
href="https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field">BathroomsF
ull field in RESO</a>.<p>

=end html


A number_of_full_bathrooms should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_number_of_full_bathrooms>

A predicate for the L</number_of_full_bathrooms> attribute.

=cut

has number_of_full_bathrooms => (
    is        => 'rw',
    predicate => '_has_number_of_full_bathrooms',
    json_ld   => 'numberOfFullBathrooms',
);


=head2 C<number_of_partial_bathrooms>

C<numberOfPartialBathrooms>

=begin html

<p>Number of partial bathrooms - The total number of half and Â¼ bathrooms
in an <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>. This corresponds
to the <a
href="https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field">Bathroo
msPartial field in RESO</a>.<p>

=end html


A number_of_partial_bathrooms should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_number_of_partial_bathrooms>

A predicate for the L</number_of_partial_bathrooms> attribute.

=cut

has number_of_partial_bathrooms => (
    is        => 'rw',
    predicate => '_has_number_of_partial_bathrooms',
    json_ld   => 'numberOfPartialBathrooms',
);


=head2 C<number_of_rooms>

C<numberOfRooms>

The number of rooms (excluding bathrooms and closets) of the accommodation
or lodging business. Typical unit code(s): ROM for room or C62 for no unit.
The type of room can be put in the unitText property of the
QuantitativeValue.


A number_of_rooms should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_number_of_rooms>

A predicate for the L</number_of_rooms> attribute.

=cut

has number_of_rooms => (
    is        => 'rw',
    predicate => '_has_number_of_rooms',
    json_ld   => 'numberOfRooms',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
