use utf8;

package SemanticWeb::Schema::FloorPlan;

# ABSTRACT: A FloorPlan is an explicit representation of a collection of similar accommodations

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'FloorPlan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A FloorPlan is an explicit representation of a collection of similar accommodations, allowing the provision of common information (room counts, sizes, layout diagrams) and offers for rental or sale. In typical use, some L<SemanticWeb::Schema::ApartmentComplex> has an [[accommodationFloorPlan]] which is a L<SemanticWeb::Schema::FloorPlan>.  A FloorPlan is always in the context of a particular place, either a larger L<SemanticWeb::Schema::ApartmentComplex> or a single L<SemanticWeb::Schema::Apartment>. The visual/spatial aspects of a floor plan (i.e. room layout, L<see wikipedia|https://en.wikipedia.org/wiki/Floor_plan>) can be indicated using [[image]]. 



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
yard.


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


=head2 C<layout_image>

C<layoutImage>

A schematic image showing the floorplan layout.


A layout_image should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=head2 C<_has_layout_image>

A predicate for the L</layout_image> attribute.

=cut

has layout_image => (
    is        => 'rw',
    predicate => '_has_layout_image',
    json_ld   => 'layoutImage',
);


=head2 C<number_of_accommodation_units>

C<numberOfAccommodationUnits>

Indicates the total (available plus unavailable) number of accommodation units in an L<SemanticWeb::Schema::ApartmentComplex>, or the number of accommodation units for a specific L<SemanticWeb::Schema::FloorPlan> (within its specific L<SemanticWeb::Schema::ApartmentComplex>). See also [[numberOfAvailableAccommodationUnits]].

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

Indicates the number of available accommodation units in an L<SemanticWeb::Schema::ApartmentComplex>, or the number of accommodation units for a specific L<SemanticWeb::Schema::FloorPlan> (within its specific L<SemanticWeb::Schema::ApartmentComplex>). See also [[numberOfAccommodationUnits]].

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

The total integer number of bathrooms in some L<SemanticWeb::Schema::Accommodation>, following real estate conventions as L<documented in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field>: "The simple sum of the number of bathrooms. For example for a property with two Full Bathrooms and one Half Bathroom, the Bathrooms Total Integer will be 3.". See also [[numberOfRooms]].

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

The total integer number of bedrooms in a some L<SemanticWeb::Schema::Accommodation>, L<SemanticWeb::Schema::ApartmentComplex> or L<SemanticWeb::Schema::FloorPlan>.

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

Number of full bathrooms - The total number of full and ¾ bathrooms in an L<SemanticWeb::Schema::Accommodation>. This corresponds to the L<BathroomsFull field in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field>.

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

Number of partial bathrooms - The total number of half and ¼ bathrooms in an L<SemanticWeb::Schema::Accommodation>. This corresponds to the L<BathroomsPartial field in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field>. 

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
