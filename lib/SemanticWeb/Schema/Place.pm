use utf8;

package SemanticWeb::Schema::Place;

# ABSTRACT: Entities that have a somewhat fixed

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Place';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

=head1 DESCRIPTION

Entities that have a somewhat fixed, physical extension.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

=begin html

A property-value pair representing an additional characteristics of the
entitity, e.g. a product feature or another characteristic for which there
is no matching property in schema.org.<br/><br/> Note: Publishers should be
aware that applications designed to use specific schema.org properties
(e.g. http://schema.org/width, http://schema.org/color,
http://schema.org/gtin13, ...) will typically expect such data to be
provided using those properties, rather than using the generic
property/value mechanism.

=end html


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=cut

has additional_property => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalProperty',
);


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=back

=cut

has address => (
    is        => 'rw',
    predicate => 1,
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

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => 1,
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

=cut

has amenity_feature => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'amenityFeature',
);


=head2 C<branch_code>

C<branchCode>

=begin html

A short textual code (also called "store code") that uniquely identifies a
place of business. The code is typically assigned by the parentOrganization
and used in structured URLs.<br/><br/> For example, in the URL
http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is
a branchCode for a particular branch.

=end html


A branch_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has branch_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'branchCode',
);


=head2 C<contained_in>

C<containedIn>

The basic containment relation between a place and one that contains it.


A contained_in should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has contained_in => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'containedIn',
);


=head2 C<contained_in_place>

C<containedInPlace>

The basic containment relation between a place and one that contains it.


A contained_in_place should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has contained_in_place => (
    is        => 'rw',
    predicate => 1,
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

=cut

has contains_place => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'containsPlace',
);


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'event',
);


=head2 C<events>



Upcoming or past events associated with this place or organization.


A events should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has events => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'events',
);


=head2 C<fax_number>

C<faxNumber>

The fax number.


A fax_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has fax_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'faxNumber',
);


=head2 C<geo>



The geo coordinates of the place.


A geo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoCoordinates']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=back

=cut

has geo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geo',
);


=head2 C<global_location_number>

C<globalLocationNumber>

=begin html

The <a href="http://www.gs1.org/gln">Global Location Number</a> (GLN,
sometimes also referred to as International Location Number or ILN) of the
respective organization, person, or place. The GLN is a 13-digit number
used to identify parties and physical locations.

=end html


A global_location_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has global_location_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'globalLocationNumber',
);


=head2 C<has_map>

C<hasMap>

A URL to a map of the place.


A has_map should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Map']>

=item C<Str>

=back

=cut

has has_map => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasMap',
);


=head2 C<is_accessible_for_free>

C<isAccessibleForFree>

A flag to signal that the item, event, or place is accessible for free.


A is_accessible_for_free should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_accessible_for_free => (
    is        => 'rw',
    predicate => 1,
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

=cut

has isic_v4 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isicV4',
);


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=cut

has logo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'logo',
);


=head2 C<map>



A URL to a map of the place.


A map should be one of the following types:

=over

=item C<Str>

=back

=cut

has map => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'map',
);


=head2 C<maps>



A URL to a map of the place.


A maps should be one of the following types:

=over

=item C<Str>

=back

=cut

has maps => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'maps',
);


=head2 C<maximum_attendee_capacity>

C<maximumAttendeeCapacity>

The total number of individuals that may attend an event or venue.


A maximum_attendee_capacity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has maximum_attendee_capacity => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'maximumAttendeeCapacity',
);


=head2 C<opening_hours_specification>

C<openingHoursSpecification>

The opening hours of a certain place.


A opening_hours_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=cut

has opening_hours_specification => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'openingHoursSpecification',
);


=head2 C<photo>



A photograph of this place.


A photo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Photograph']>

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=cut

has photo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'photo',
);


=head2 C<photos>



Photographs of this place.


A photos should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<InstanceOf['SemanticWeb::Schema::Photograph']>

=back

=cut

has photos => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'photos',
);


=head2 C<public_access>

C<publicAccess>

=begin html

A flag to signal that the <a class="localLink"
href="http://schema.org/Place">Place</a> is open to public visitors. If
this property is omitted there is no assumed default boolean value

=end html


A public_access should be one of the following types:

=over

=item C<Bool>

=back

=cut

has public_access => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'publicAccess',
);


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has review => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'review',
);


=head2 C<reviews>



Review of the item.


A reviews should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has reviews => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reviews',
);


=head2 C<smoking_allowed>

C<smokingAllowed>

Indicates whether it is allowed to smoke in the place, e.g. in the
restaurant, hotel or hotel room.


A smoking_allowed should be one of the following types:

=over

=item C<Bool>

=back

=cut

has smoking_allowed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'smokingAllowed',
);


=head2 C<special_opening_hours_specification>

C<specialOpeningHoursSpecification>

=begin html

The special opening hours of a certain place.<br/><br/> Use this to
explicitly override general opening hours brought in scope by <a
class="localLink"
href="http://schema.org/openingHoursSpecification">openingHoursSpecificatio
n</a> or <a class="localLink"
href="http://schema.org/openingHours">openingHours</a>.

=end html


A special_opening_hours_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=cut

has special_opening_hours_specification => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'specialOpeningHoursSpecification',
);


=head2 C<telephone>



The telephone number.


A telephone should be one of the following types:

=over

=item C<Str>

=back

=cut

has telephone => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'telephone',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
