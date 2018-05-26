package LDF::Schema::GeoShape;

# ABSTRACT: The geographic shape of a place

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The geographic shape of a place. A GeoShape can be described using several
properties whose values are based on latitude/longitude pairs. Either
whitespace or commas can be used to separate latitude and longitude;
whitespace should be used when writing a list of several such points.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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


=head2 C<box>



A box is the area enclosed by the rectangle formed by two points. The first
point is the lower corner, the second point is the upper corner. A box is
expressed as two points separated by a space character.


A box should be one of the following types:

=over

=item C<Str>

=back

=cut

has box => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<circle>



A circle is the circular region of a specified radius centered at a
specified latitude and longitude. A circle is expressed as a pair followed
by a radius in meters.


A circle should be one of the following types:

=over

=item C<Str>

=back

=cut

has circle => (
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


=head2 C<line>



A line is a point-to-point path consisting of two or more points. A line is
expressed as a series of two or more point objects separated by space.


A line should be one of the following types:

=over

=item C<Str>

=back

=cut

has line => (
    is        => 'rw',
    predicate => 1,
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

=cut

has polygon => (
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

sub json_ld_type { 'GeoShape' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { address => 'address' },
      { addressCountry => 'address_country' },
      { box => 'box' },
      { circle => 'circle' },
      { elevation => 'elevation' },
      { line => 'line' },
      { polygon => 'polygon' },
      { postalCode => 'postal_code' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
