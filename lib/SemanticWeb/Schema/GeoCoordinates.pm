use utf8;

package SemanticWeb::Schema::GeoCoordinates;

# ABSTRACT: The geographic coordinates of a place or event.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'GeoCoordinates';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

The geographic coordinates of a place or event.




=head1 ATTRIBUTES


=head2 C<address>



Physical address of the item.


A address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<Str>

=back

=cut

has address => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'address',
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

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=item C<Str>

=back

=cut

has address_country => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'addressCountry',
);


=head2 C<elevation>



=begin html

The elevation of a location (<a
href="https://en.wikipedia.org/wiki/World_Geodetic_System">WGS 84</a>).
Values may be of the form 'NUMBER UNIT<em>OF</em>MEASUREMENT' (e.g., '1,000
m', '3,200 ft') while numbers alone should be assumed to be a value in
meters.

=end html


A elevation should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has elevation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'elevation',
);


=head2 C<latitude>



=begin html

The latitude of a location. For example <code>37.42242</code> (<a
href="https://en.wikipedia.org/wiki/World_Geodetic_System">WGS 84</a>).

=end html


A latitude should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has latitude => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'latitude',
);


=head2 C<longitude>



=begin html

The longitude of a location. For example <code>-122.08585</code> (<a
href="https://en.wikipedia.org/wiki/World_Geodetic_System">WGS 84</a>).

=end html


A longitude should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has longitude => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'longitude',
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
    json_ld   => 'postalCode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
