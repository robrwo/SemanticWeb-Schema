package LDF::Schema::GeoCoordinates;

# ABSTRACT: The geographic coordinates of a place or event.

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The geographic coordinates of a place or event.




=head1 ATTRIBUTES


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=back

=cut

has address => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<address_country>

C<addressCountry>

=begin html

The country. For example, USA. You can also provide the two-letter <a
href="http://en.wikipedia.org/wiki/ISO_3166-1">ISO 3166-1 alpha-2 country
code</a>.

=end html


A address_country should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Country']>

=item C<Str>

=back

=cut

has address_country => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<elevation>



=begin html

The elevation of a location (<a
href="https://en.wikipedia.org/wiki/World_Geodetic_System">WGS 84</a>).

=end html


A elevation should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has elevation => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<latitude>



=begin html

The latitude of a location. For example <code>37.42242</code> (<a
href="https://en.wikipedia.org/wiki/World_Geodetic_System">WGS 84</a>).

=end html


A latitude should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has latitude => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<longitude>



=begin html

The longitude of a location. For example <code>-122.08585</code> (<a
href="https://en.wikipedia.org/wiki/World_Geodetic_System">WGS 84</a>).

=end html


A longitude should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has longitude => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<postal_code>

C<postalCode>

The postal code. For example, 94043.


A postal_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has postal_code => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'GeoCoordinates' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'address' => $self->curry::_serializer('address'),
       'addressCountry' => $self->curry::_serializer('address_country'),
       'elevation' => $self->curry::_serializer('elevation'),
       'latitude' => $self->curry::_serializer('latitude'),
       'longitude' => $self->curry::_serializer('longitude'),
       'postalCode' => $self->curry::_serializer('postal_code'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
