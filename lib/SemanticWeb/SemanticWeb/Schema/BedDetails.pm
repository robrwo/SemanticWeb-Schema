package SemanticWeb::Schema::BedDetails;

# ABSTRACT: An entity holding detailed information about the available bed types

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An entity holding detailed information about the available bed types, e.g.
the quantity of twin beds for a hotel room. For the single case of just one
bed of a certain type, you can use bed directly with a text. See also <a
class="localLink" href="http://schema.org/BedType">BedType</a> (under
development).

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

=cut

has number_of_beds => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<type_of_bed>

C<typeOfBed>

The type of bed to which the BedDetail refers, i.e. the type of bed
available in the quantity indicated by quantity.


A type_of_bed should be one of the following types:

=over

=item C<Str>

=back

=cut

has type_of_bed => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BedDetails' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'numberOfBeds' => $self->curry::_serializer('number_of_beds'),
       'typeOfBed' => $self->curry::_serializer('type_of_bed'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
