use utf8;

package SemanticWeb::Schema::ApartmentComplex;

# ABSTRACT: Residence type: Apartment complex.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Residence /;


use MooX::JSON_LD 'ApartmentComplex';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

Residence type: Apartment complex.




=head1 ATTRIBUTES


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




=head1 SEE ALSO



L<SemanticWeb::Schema::Residence>

=cut

1;
