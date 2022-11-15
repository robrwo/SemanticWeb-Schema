use utf8;

package SemanticWeb::Schema::Accommodation;

# ABSTRACT: An accommodation is a place that can accommodate human beings

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'Accommodation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An accommodation is a place that can accommodate human beings, e.g. a
hotel room, a camping pitch, or a meeting room. Many accommodations are for
overnight stays, but this is not a mandatory requirement. For more specific
types of accommodations not defined in schema.org, one can use
additionalType with external vocabularies. <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>. </p>

=end html




=head1 ATTRIBUTES


=head2 C<accommodation_category>

C<accommodationCategory>

Category of an L<SemanticWeb::Schema::Accommodation>, following real estate conventions, e.g. RESO (see L<PropertySubType|https://ddwiki.reso.org/display/DDW17/PropertySubType+Field>, and L<PropertyType|https://ddwiki.reso.org/display/DDW17/PropertyType+Field> fields  for suggested values).

A accommodation_category should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_accommodation_category>

A predicate for the L</accommodation_category> attribute.

=cut

has accommodation_category => (
    is        => 'rw',
    predicate => '_has_accommodation_category',
    json_ld   => 'accommodationCategory',
);


=head2 C<accommodation_floor_plan>

C<accommodationFloorPlan>

A floorplan of some L<SemanticWeb::Schema::Accommodation>.

A accommodation_floor_plan should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::FloorPlan']>

=back

=head2 C<_has_accommodation_floor_plan>

A predicate for the L</accommodation_floor_plan> attribute.

=cut

has accommodation_floor_plan => (
    is        => 'rw',
    predicate => '_has_accommodation_floor_plan',
    json_ld   => 'accommodationFloorPlan',
);


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


=head2 C<floor_level>

C<floorLevel>

The floor level for an L<SemanticWeb::Schema::Accommodation> in a multi-storey building. Since counting
  systems L<vary internationally|https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations>, the local system should be used where possible.

A floor_level should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_floor_level>

A predicate for the L</floor_level> attribute.

=cut

has floor_level => (
    is        => 'rw',
    predicate => '_has_floor_level',
    json_ld   => 'floorLevel',
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


=head2 C<lease_length>

C<leaseLength>

Length of the lease for some L<SemanticWeb::Schema::Accommodation>, either particular to some L<SemanticWeb::Schema::Offer> or in some cases intrinsic to the property.

A lease_length should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_lease_length>

A predicate for the L</lease_length> attribute.

=cut

has lease_length => (
    is        => 'rw',
    predicate => '_has_lease_length',
    json_ld   => 'leaseLength',
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

Number of full bathrooms - The total number of full and Â¾ bathrooms in an L<SemanticWeb::Schema::Accommodation>. This corresponds to the L<BathroomsFull field in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field>.

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

Number of partial bathrooms - The total number of half and Â¼ bathrooms in an L<SemanticWeb::Schema::Accommodation>. This corresponds to the L<BathroomsPartial field in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field>. 

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


=head2 C<permitted_usage>

C<permittedUsage>

Indications regarding the permitted usage of the accommodation.


A permitted_usage should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_permitted_usage>

A predicate for the L</permitted_usage> attribute.

=cut

has permitted_usage => (
    is        => 'rw',
    predicate => '_has_permitted_usage',
    json_ld   => 'permittedUsage',
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


=head2 C<tour_booking_page>

C<tourBookingPage>

A page providing information on how to book a tour of some L<SemanticWeb::Schema::Place>, such as an L<SemanticWeb::Schema::Accommodation> or L<SemanticWeb::Schema::ApartmentComplex> in a real estate setting, as well as other kinds of tours as appropriate.

A tour_booking_page should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_tour_booking_page>

A predicate for the L</tour_booking_page> attribute.

=cut

has tour_booking_page => (
    is        => 'rw',
    predicate => '_has_tour_booking_page',
    json_ld   => 'tourBookingPage',
);


=head2 C<year_built>

C<yearBuilt>

The year an L<SemanticWeb::Schema::Accommodation> was constructed. This corresponds to the L<YearBuilt field in RESO|https://ddwiki.reso.org/display/DDW17/YearBuilt+Field>. 

A year_built should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_year_built>

A predicate for the L</year_built> attribute.

=cut

has year_built => (
    is        => 'rw',
    predicate => '_has_year_built',
    json_ld   => 'yearBuilt',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
