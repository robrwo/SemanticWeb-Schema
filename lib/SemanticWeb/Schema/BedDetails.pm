use utf8;

package SemanticWeb::Schema::BedDetails;

# ABSTRACT: An entity holding detailed information about the available bed types

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'BedDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An entity holding detailed information about the available bed types,
e.g. the quantity of twin beds for a hotel room. For the single case of
just one bed of a certain type, you can use bed directly with a text. See
also <a class="localLink" href="http://schema.org/BedType">BedType</a>
(under development).<p>

=end html




=head1 ATTRIBUTES


=head2 C<number_of_beds>

C<numberOfBeds>

The quantity of the given bed type available in the HotelRoom, Suite,
House, or Apartment.


A number_of_beds should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_number_of_beds>

A predicate for the L</number_of_beds> attribute.

=cut

has number_of_beds => (
    is        => 'rw',
    predicate => '_has_number_of_beds',
    json_ld   => 'numberOfBeds',
);


=head2 C<type_of_bed>

C<typeOfBed>

The type of bed to which the BedDetail refers, i.e. the type of bed
available in the quantity indicated by quantity.


A type_of_bed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BedType']>

=item C<Str>

=back

=head2 C<_has_type_of_bed>

A predicate for the L</type_of_bed> attribute.

=cut

has type_of_bed => (
    is        => 'rw',
    predicate => '_has_type_of_bed',
    json_ld   => 'typeOfBed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
