use utf8;

package SemanticWeb::Schema::Accommodation;

# ABSTRACT: An accommodation is a place that can accommodate human beings

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'Accommodation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An accommodation is a place that can accommodate human beings, e.g. a
hotel room, a camping pitch, or a meeting room. Many accommodations are for
overnight stays, but this is not a mandatory requirement. For more specific
types of accommodations not defined in schema.org, one can use
additionalType with external vocabularies. <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<accommodation_category>

C<accommodationCategory>

=begin html

<p>Category of an <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>, following real
estate conventions e.g. RESO (see <a
href="https://ddwiki.reso.org/display/DDW17/PropertySubType+Field">Property
SubType</a>, and <a
href="https://ddwiki.reso.org/display/DDW17/PropertyType+Field">PropertyTyp
e</a> fields for suggested values).<p>

=end html


A accommodation_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has accommodation_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'accommodationCategory',
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


=head2 C<floor_level>

C<floorLevel>

=begin html

<p>The floor level for an <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a> in a multi-storey
building. Since counting systems <a
href="https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designa
tions">vary internationally</a>, the local system should be used where
possible.<p>

=end html


A floor_level should be one of the following types:

=over

=item C<Str>

=back

=cut

has floor_level => (
    is        => 'rw',
    predicate => 1,
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

=cut

has floor_size => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'floorSize',
);


=head2 C<lease_length>

C<leaseLength>

=begin html

<p>Length of the lease for some <a class="localLink"
href="http://schema.org/Accommodation">Accommodation</a>, either particular
to some <a class="localLink" href="http://schema.org/Offer">Offer</a> or in
some cases intrinsic to the property.<p>

=end html


A lease_length should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has lease_length => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'leaseLength',
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

=cut

has number_of_bathrooms_total => (
    is        => 'rw',
    predicate => 1,
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

=cut

has number_of_full_bathrooms => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfFullBathrooms',
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

=cut

has number_of_rooms => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfRooms',
);


=head2 C<permitted_usage>

C<permittedUsage>

Indications regarding the permitted usage of the accommodation.


A permitted_usage should be one of the following types:

=over

=item C<Str>

=back

=cut

has permitted_usage => (
    is        => 'rw',
    predicate => 1,
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

=cut

has pets_allowed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'petsAllowed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
