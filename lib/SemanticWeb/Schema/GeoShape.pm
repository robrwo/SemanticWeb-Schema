use utf8;

package SemanticWeb::Schema::GeoShape;

# ABSTRACT: The geographic shape of a place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'GeoShape';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

The geographic shape of a place. A GeoShape can be described using several
properties whose values are based on latitude/longitude pairs. Either
whitespace or commas can be used to separate latitude and longitude;
whitespace should be used when writing a list of several such points.




=head1 ATTRIBUTES


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


=head2 C<address_country>

C<addressCountry>

The country. For example, USA. You can also provide the two-letter [ISO
3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1).


A address_country should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=item C<Str>

=back

=head2 C<_has_address_country>

A predicate for the L</address_country> attribute.

=cut

has address_country => (
    is        => 'rw',
    predicate => '_has_address_country',
    json_ld   => 'addressCountry',
);


=head2 C<box>



A box is the area enclosed by the rectangle formed by two points. The first
point is the lower corner, the second point is the upper corner. A box is
expressed as two points separated by a space character.


A box should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_box>

A predicate for the L</box> attribute.

=cut

has box => (
    is        => 'rw',
    predicate => '_has_box',
    json_ld   => 'box',
);


=head2 C<circle>



A circle is the circular region of a specified radius centered at a
specified latitude and longitude. A circle is expressed as a pair followed
by a radius in meters.


A circle should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_circle>

A predicate for the L</circle> attribute.

=cut

has circle => (
    is        => 'rw',
    predicate => '_has_circle',
    json_ld   => 'circle',
);


=head2 C<elevation>



The elevation of a location ([WGS
84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of
the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while
numbers alone should be assumed to be a value in meters.


A elevation should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_elevation>

A predicate for the L</elevation> attribute.

=cut

has elevation => (
    is        => 'rw',
    predicate => '_has_elevation',
    json_ld   => 'elevation',
);


=head2 C<line>



A line is a point-to-point path consisting of two or more points. A line is
expressed as a series of two or more point objects separated by space.


A line should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_line>

A predicate for the L</line> attribute.

=cut

has line => (
    is        => 'rw',
    predicate => '_has_line',
    json_ld   => 'line',
);


=head2 C<polygon>



A polygon is the area enclosed by a point-to-point path for which the
starting and ending points are the same. A polygon is expressed as a series
of four or more space delimited points where the first and final points are
identical.


A polygon should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_polygon>

A predicate for the L</polygon> attribute.

=cut

has polygon => (
    is        => 'rw',
    predicate => '_has_polygon',
    json_ld   => 'polygon',
);


=head2 C<postal_code>

C<postalCode>

The postal code. For example, 94043.


A postal_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_postal_code>

A predicate for the L</postal_code> attribute.

=cut

has postal_code => (
    is        => 'rw',
    predicate => '_has_postal_code',
    json_ld   => 'postalCode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
