use utf8;

package SemanticWeb::Schema::Place;

# ABSTRACT: Entities that have a somewhat fixed

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Place';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

Entities that have a somewhat fixed, physical extension.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

A property-value pair representing an additional characteristics of the
entitity, e.g. a product feature or another characteristic for which there
is no matching property in schema.org. Note: Publishers should be aware
that applications designed to use specific schema.org properties (e.g.
http://schema.org/width, http://schema.org/color, http://schema.org/gtin13,
...) will typically expect such data to be provided using those properties,
rather than using the generic property/value mechanism. 


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=head2 C<_has_additional_property>

A predicate for the L</additional_property> attribute.

=cut

has additional_property => (
    is        => 'rw',
    predicate => '_has_additional_property',
    json_ld   => 'additionalProperty',
);


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<Str>

=back

=head2 C<_has_address>

A predicate for the L</address> attribute.

=cut

has address => (
    is        => 'rw',
    predicate => '_has_address',
    json_ld   => 'address',
);


=head2 C<aggregate_rating>

C<aggregateRating>

The overall rating, based on a collection of reviews or ratings, of the
item.


A aggregate_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AggregateRating']>

=back

=head2 C<_has_aggregate_rating>

A predicate for the L</aggregate_rating> attribute.

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => '_has_aggregate_rating',
    json_ld   => 'aggregateRating',
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


=head2 C<branch_code>

C<branchCode>

A short textual code (also called "store code") that uniquely identifies a
place of business. The code is typically assigned by the parentOrganization
and used in structured URLs. For example, in the URL
http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is
a branchCode for a particular branch. 


A branch_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_branch_code>

A predicate for the L</branch_code> attribute.

=cut

has branch_code => (
    is        => 'rw',
    predicate => '_has_branch_code',
    json_ld   => 'branchCode',
);


=head2 C<contained_in>

C<containedIn>

The basic containment relation between a place and one that contains it.


A contained_in should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_contained_in>

A predicate for the L</contained_in> attribute.

=cut

has contained_in => (
    is        => 'rw',
    predicate => '_has_contained_in',
    json_ld   => 'containedIn',
);


=head2 C<contained_in_place>

C<containedInPlace>

The basic containment relation between a place and one that contains it.


A contained_in_place should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_contained_in_place>

A predicate for the L</contained_in_place> attribute.

=cut

has contained_in_place => (
    is        => 'rw',
    predicate => '_has_contained_in_place',
    json_ld   => 'containedInPlace',
);


=head2 C<contains_place>

C<containsPlace>

The basic containment relation between a place and another that it
contains.


A contains_place should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_contains_place>

A predicate for the L</contains_place> attribute.

=cut

has contains_place => (
    is        => 'rw',
    predicate => '_has_contains_place',
    json_ld   => 'containsPlace',
);


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=head2 C<_has_event>

A predicate for the L</event> attribute.

=cut

has event => (
    is        => 'rw',
    predicate => '_has_event',
    json_ld   => 'event',
);


=head2 C<events>



Upcoming or past events associated with this place or organization.


A events should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=head2 C<_has_events>

A predicate for the L</events> attribute.

=cut

has events => (
    is        => 'rw',
    predicate => '_has_events',
    json_ld   => 'events',
);


=head2 C<fax_number>

C<faxNumber>

The fax number.


A fax_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_fax_number>

A predicate for the L</fax_number> attribute.

=cut

has fax_number => (
    is        => 'rw',
    predicate => '_has_fax_number',
    json_ld   => 'faxNumber',
);


=head2 C<geo>



The geo coordinates of the place.


A geo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoCoordinates']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=back

=head2 C<_has_geo>

A predicate for the L</geo> attribute.

=cut

has geo => (
    is        => 'rw',
    predicate => '_has_geo',
    json_ld   => 'geo',
);


=head2 C<geo_contains>

C<geoContains>

Represents a relationship between two geometries (or the places they
represent), relating a containing geometry to a contained geometry. "a
contains b iff no points of b lie in the exterior of a, and at least one
point of the interior of b lies in the interior of a". As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_contains should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_contains>

A predicate for the L</geo_contains> attribute.

=cut

has geo_contains => (
    is        => 'rw',
    predicate => '_has_geo_contains',
    json_ld   => 'geoContains',
);


=head2 C<geo_covered_by>

C<geoCoveredBy>

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that covers it. As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_covered_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_covered_by>

A predicate for the L</geo_covered_by> attribute.

=cut

has geo_covered_by => (
    is        => 'rw',
    predicate => '_has_geo_covered_by',
    json_ld   => 'geoCoveredBy',
);


=head2 C<geo_covers>

C<geoCovers>

Represents a relationship between two geometries (or the places they
represent), relating a covering geometry to a covered geometry. "Every
point of b is a point of (the interior or boundary of) a". As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_covers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_covers>

A predicate for the L</geo_covers> attribute.

=cut

has geo_covers => (
    is        => 'rw',
    predicate => '_has_geo_covers',
    json_ld   => 'geoCovers',
);


=head2 C<geo_crosses>

C<geoCrosses>

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that crosses it: "a crosses b:
they have some but not all interior points in common, and the dimension of
the intersection is less than that of at least one of them". As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_crosses should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_crosses>

A predicate for the L</geo_crosses> attribute.

=cut

has geo_crosses => (
    is        => 'rw',
    predicate => '_has_geo_crosses',
    json_ld   => 'geoCrosses',
);


=head2 C<geo_disjoint>

C<geoDisjoint>

Represents spatial relations in which two geometries (or the places they
represent) are topologically disjoint: they have no point in common. They
form a set of disconnected geometries." (a symmetric relationship, as
defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM))


A geo_disjoint should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_disjoint>

A predicate for the L</geo_disjoint> attribute.

=cut

has geo_disjoint => (
    is        => 'rw',
    predicate => '_has_geo_disjoint',
    json_ld   => 'geoDisjoint',
);


=head2 C<geo_equals>

C<geoEquals>

Represents spatial relations in which two geometries (or the places they
represent) are topologically equal, as defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). "Two geometries are
topologically equal if their interiors intersect and no part of the
interior or boundary of one geometry intersects the exterior of the other"
(a symmetric relationship)


A geo_equals should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_equals>

A predicate for the L</geo_equals> attribute.

=cut

has geo_equals => (
    is        => 'rw',
    predicate => '_has_geo_equals',
    json_ld   => 'geoEquals',
);


=head2 C<geo_intersects>

C<geoIntersects>

Represents spatial relations in which two geometries (or the places they
represent) have at least one point in common. As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_intersects should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_intersects>

A predicate for the L</geo_intersects> attribute.

=cut

has geo_intersects => (
    is        => 'rw',
    predicate => '_has_geo_intersects',
    json_ld   => 'geoIntersects',
);


=head2 C<geo_overlaps>

C<geoOverlaps>

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that geospatially overlaps it,
i.e. they have some but not all points in common. As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_overlaps should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_overlaps>

A predicate for the L</geo_overlaps> attribute.

=cut

has geo_overlaps => (
    is        => 'rw',
    predicate => '_has_geo_overlaps',
    json_ld   => 'geoOverlaps',
);


=head2 C<geo_touches>

C<geoTouches>

Represents spatial relations in which two geometries (or the places they
represent) touch: they have at least one boundary point in common, but no
interior points." (a symmetric relationship, as defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM) )


A geo_touches should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_touches>

A predicate for the L</geo_touches> attribute.

=cut

has geo_touches => (
    is        => 'rw',
    predicate => '_has_geo_touches',
    json_ld   => 'geoTouches',
);


=head2 C<geo_within>

C<geoWithin>

Represents a relationship between two geometries (or the places they
represent), relating a geometry to one that contains it, i.e. it is inside
(i.e. within) its interior. As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).


A geo_within should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_geo_within>

A predicate for the L</geo_within> attribute.

=cut

has geo_within => (
    is        => 'rw',
    predicate => '_has_geo_within',
    json_ld   => 'geoWithin',
);


=head2 C<global_location_number>

C<globalLocationNumber>

The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also
referred to as International Location Number or ILN) of the respective
organization, person, or place. The GLN is a 13-digit number used to
identify parties and physical locations.


A global_location_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_global_location_number>

A predicate for the L</global_location_number> attribute.

=cut

has global_location_number => (
    is        => 'rw',
    predicate => '_has_global_location_number',
    json_ld   => 'globalLocationNumber',
);


=head2 C<has_drive_through_service>

C<hasDriveThroughService>

Indicates whether some facility (e.g. L<SemanticWeb::Schema::FoodEstablishment>, L<SemanticWeb::Schema::CovidTestingFacility>) offers a service that can be used by driving through in a car. In the case of L<SemanticWeb::Schema::CovidTestingFacility> such facilities could potentially help with social distancing from other potentially-infected users.

A has_drive_through_service should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_has_drive_through_service>

A predicate for the L</has_drive_through_service> attribute.

=cut

has has_drive_through_service => (
    is        => 'rw',
    predicate => '_has_has_drive_through_service',
    json_ld   => 'hasDriveThroughService',
);


=head2 C<has_map>

C<hasMap>

A URL to a map of the place.


A has_map should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Map']>

=item C<Str>

=back

=head2 C<_has_has_map>

A predicate for the L</has_map> attribute.

=cut

has has_map => (
    is        => 'rw',
    predicate => '_has_has_map',
    json_ld   => 'hasMap',
);


=head2 C<is_accessible_for_free>

C<isAccessibleForFree>

A flag to signal that the item, event, or place is accessible for free.


A is_accessible_for_free should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_is_accessible_for_free>

A predicate for the L</is_accessible_for_free> attribute.

=cut

has is_accessible_for_free => (
    is        => 'rw',
    predicate => '_has_is_accessible_for_free',
    json_ld   => 'isAccessibleForFree',
);


=head2 C<isic_v4>

C<isicV4>

The International Standard of Industrial Classification of All Economic
Activities (ISIC), Revision 4 code for a particular organization, business
person, or place.


A isic_v4 should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_isic_v4>

A predicate for the L</isic_v4> attribute.

=cut

has isic_v4 => (
    is        => 'rw',
    predicate => '_has_isic_v4',
    json_ld   => 'isicV4',
);


=head2 C<latitude>



The latitude of a location. For example ```37.42242``` ([WGS
84](https://en.wikipedia.org/wiki/World_Geodetic_System)).


A latitude should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_latitude>

A predicate for the L</latitude> attribute.

=cut

has latitude => (
    is        => 'rw',
    predicate => '_has_latitude',
    json_ld   => 'latitude',
);


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=head2 C<_has_logo>

A predicate for the L</logo> attribute.

=cut

has logo => (
    is        => 'rw',
    predicate => '_has_logo',
    json_ld   => 'logo',
);


=head2 C<longitude>



The longitude of a location. For example ```-122.08585``` ([WGS
84](https://en.wikipedia.org/wiki/World_Geodetic_System)).


A longitude should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_longitude>

A predicate for the L</longitude> attribute.

=cut

has longitude => (
    is        => 'rw',
    predicate => '_has_longitude',
    json_ld   => 'longitude',
);


=head2 C<map>



A URL to a map of the place.


A map should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_map>

A predicate for the L</map> attribute.

=cut

has map => (
    is        => 'rw',
    predicate => '_has_map',
    json_ld   => 'map',
);


=head2 C<maps>



A URL to a map of the place.


A maps should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_maps>

A predicate for the L</maps> attribute.

=cut

has maps => (
    is        => 'rw',
    predicate => '_has_maps',
    json_ld   => 'maps',
);


=head2 C<maximum_attendee_capacity>

C<maximumAttendeeCapacity>

The total number of individuals that may attend an event or venue.


A maximum_attendee_capacity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_maximum_attendee_capacity>

A predicate for the L</maximum_attendee_capacity> attribute.

=cut

has maximum_attendee_capacity => (
    is        => 'rw',
    predicate => '_has_maximum_attendee_capacity',
    json_ld   => 'maximumAttendeeCapacity',
);


=head2 C<opening_hours_specification>

C<openingHoursSpecification>

The opening hours of a certain place.


A opening_hours_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=head2 C<_has_opening_hours_specification>

A predicate for the L</opening_hours_specification> attribute.

=cut

has opening_hours_specification => (
    is        => 'rw',
    predicate => '_has_opening_hours_specification',
    json_ld   => 'openingHoursSpecification',
);


=head2 C<photo>



A photograph of this place.


A photo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<InstanceOf['SemanticWeb::Schema::Photograph']>

=back

=head2 C<_has_photo>

A predicate for the L</photo> attribute.

=cut

has photo => (
    is        => 'rw',
    predicate => '_has_photo',
    json_ld   => 'photo',
);


=head2 C<photos>



Photographs of this place.


A photos should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<InstanceOf['SemanticWeb::Schema::Photograph']>

=back

=head2 C<_has_photos>

A predicate for the L</photos> attribute.

=cut

has photos => (
    is        => 'rw',
    predicate => '_has_photos',
    json_ld   => 'photos',
);


=head2 C<public_access>

C<publicAccess>

A flag to signal that the L<SemanticWeb::Schema::Place> is open to public visitors.  If this property is omitted there is no assumed default boolean value

A public_access should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_public_access>

A predicate for the L</public_access> attribute.

=cut

has public_access => (
    is        => 'rw',
    predicate => '_has_public_access',
    json_ld   => 'publicAccess',
);


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_review>

A predicate for the L</review> attribute.

=cut

has review => (
    is        => 'rw',
    predicate => '_has_review',
    json_ld   => 'review',
);


=head2 C<reviews>



Review of the item.


A reviews should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_reviews>

A predicate for the L</reviews> attribute.

=cut

has reviews => (
    is        => 'rw',
    predicate => '_has_reviews',
    json_ld   => 'reviews',
);


=head2 C<slogan>



A slogan or motto associated with the item.


A slogan should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_slogan>

A predicate for the L</slogan> attribute.

=cut

has slogan => (
    is        => 'rw',
    predicate => '_has_slogan',
    json_ld   => 'slogan',
);


=head2 C<smoking_allowed>

C<smokingAllowed>

Indicates whether it is allowed to smoke in the place, e.g. in the
restaurant, hotel or hotel room.


A smoking_allowed should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_smoking_allowed>

A predicate for the L</smoking_allowed> attribute.

=cut

has smoking_allowed => (
    is        => 'rw',
    predicate => '_has_smoking_allowed',
    json_ld   => 'smokingAllowed',
);


=head2 C<special_opening_hours_specification>

C<specialOpeningHoursSpecification>

The special opening hours of a certain place.

Use this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]].

A special_opening_hours_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=head2 C<_has_special_opening_hours_specification>

A predicate for the L</special_opening_hours_specification> attribute.

=cut

has special_opening_hours_specification => (
    is        => 'rw',
    predicate => '_has_special_opening_hours_specification',
    json_ld   => 'specialOpeningHoursSpecification',
);


=head2 C<telephone>



The telephone number.


A telephone should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_telephone>

A predicate for the L</telephone> attribute.

=cut

has telephone => (
    is        => 'rw',
    predicate => '_has_telephone',
    json_ld   => 'telephone',
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




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
