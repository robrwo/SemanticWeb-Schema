package LDF::Schema::Accommodation;

# ABSTRACT: An accommodation is a place that can accommodate human beings

use Moo;

extends qw/ LDF::Schema::Place /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An accommodation is a place that can accommodate human beings, e.g. a hotel
room, a camping pitch, or a meeting room. Many accommodations are for
overnight stays, but this is not a mandatory requirement. For more specific
types of accommodations not defined in schema.org, one can use
additionalType with external vocabularies. <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<amenity_feature>

C<amenityFeature>

An amenity feature (e.g. a characteristic or service) of the Accommodation.
This generic property does not make a statement about whether the feature
is included in an offer for the main accommodation or available at extra
costs.


A amenity_feature should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::LocationFeatureSpecification']>

=back

=cut

has amenity_feature => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<floor_size>

C<floorSize>

The size of the accommodation, e.g. in square meter or squarefoot. Typical
unit code(s): MTK for square meter, FTK for square foot, or YDK for square
yard


A floor_size should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has floor_size => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_rooms>

C<numberOfRooms>

The number of rooms (excluding bathrooms and closets) of the acccommodation
or lodging business. Typical unit code(s): ROM for room or C62 for no unit.
The type of room can be put in the unitText property of the
QuantitativeValue.


A number_of_rooms should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has number_of_rooms => (
    is        => 'rw',
    predicate => 1,
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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Accommodation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { amenityFeature => 'amenity_feature' },
      { floorSize => 'floor_size' },
      { numberOfRooms => 'number_of_rooms' },
      { permittedUsage => 'permitted_usage' },
      { petsAllowed => 'pets_allowed' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Place>

=cut

1;
