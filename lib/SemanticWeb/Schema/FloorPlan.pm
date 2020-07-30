use utf8;

package SemanticWeb::Schema::FloorPlan;

# ABSTRACT: A FloorPlan is an explicit representation of a collection of similar accommodations

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'FloorPlan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

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


=head2 C<amenity_feature>

C<amenityFeature>

An amenity feature (e.g. a characteristic or service) of the Accommodation.
This generic property does not make a statement about whether the feature
is included in an offer for the main accommodation or available at extra
costs.


A amenity_feature should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::LocationFeatureSpecification']>

=back

=head2 C<_has_amenity_feature>

A predicate for the L</amenity_feature> attribute.

=cut

has amenity_feature => (
    is        => 'rw',
    predicate => '_has_amenity_feature',
    json_ld   => 'amenityFeature',
);


=head2 C<floor_size>

C<floorSize>

The size of the accommodation, e.g. in square meter or squarefoot. Typical
unit code(s): MTK for square meter, FTK for square foot, or YDK for square
yard


A floor_size should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_floor_size>

A predicate for the L</floor_size> attribute.

=cut

has floor_size => (
    is        => 'rw',
    predicate => '_has_floor_size',
    json_ld   => 'floorSize',
);


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


=head2 C<number_of_bedrooms>

C<numberOfBedrooms>

=begin html

<p>The total integer number of bedrooms in a some <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>, <a
class="localLink"
href="http://schema.org/ApartmentComplex">ApartmentComplex</a> or <a
class="localLink" href="http://schema.org/FloorPlan">FloorPlan</a>.<p>

=end html


A number_of_bedrooms should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_number_of_bedrooms>

A predicate for the L</number_of_bedrooms> attribute.

=cut

has number_of_bedrooms => (
    is        => 'rw',
    predicate => '_has_number_of_bedrooms',
    json_ld   => 'numberOfBedrooms',
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


=head2 C<pets_allowed>

C<petsAllowed>

Indicates whether pets are allowed to enter the accommodation or lodging
business. More detailed information can be put in a text value.


A pets_allowed should be one of the following types:

=over

=item C<Bool>

=item C<Str>

=back

=head2 C<_has_pets_allowed>

A predicate for the L</pets_allowed> attribute.

=cut

has pets_allowed => (
    is        => 'rw',
    predicate => '_has_pets_allowed',
    json_ld   => 'petsAllowed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
