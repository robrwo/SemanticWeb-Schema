use utf8;

package SemanticWeb::Schema::GeospatialGeometry;

# ABSTRACT: (Eventually to be defined as) a supertype of GeoShape designed to accommodate definitions from Geo-Spatial best practices.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'GeospatialGeometry';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

(Eventually to be defined as) a supertype of GeoShape designed to
accommodate definitions from Geo-Spatial best practices.




=head1 ATTRIBUTES


=head2 C<geo_contains>

C<geoContains>

=begin html

Represents a relationship between two geometries (or the places they
represent), relating a containing geometry to a contained geometry. "a
contains b iff no points of b lie in the exterior of a, and at least one
point of the interior of b lies in the interior of a". As defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_contains should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_contains => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoContains',
);


=head2 C<geo_covered_by>

C<geoCoveredBy>

=begin html

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that covers it. As defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_covered_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_covered_by => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoCoveredBy',
);


=head2 C<geo_covers>

C<geoCovers>

=begin html

Represents a relationship between two geometries (or the places they
represent), relating a covering geometry to a covered geometry. "Every
point of b is a point of (the interior or boundary of) a". As defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_covers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_covers => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoCovers',
);


=head2 C<geo_crosses>

C<geoCrosses>

=begin html

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that crosses it: "a crosses b:
they have some but not all interior points in common, and the dimension of
the intersection is less than that of at least one of them". As defined in
<a href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_crosses should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_crosses => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoCrosses',
);


=head2 C<geo_disjoint>

C<geoDisjoint>

=begin html

Represents spatial relations in which two geometries (or the places they
represent) are topologically disjoint: they have no point in common. They
form a set of disconnected geometries." (a symmetric relationship, as
defined in <a href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>)

=end html


A geo_disjoint should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_disjoint => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoDisjoint',
);


=head2 C<geo_equals>

C<geoEquals>

=begin html

Represents spatial relations in which two geometries (or the places they
represent) are topologically equal, as defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>. "Two geometries are
topologically equal if their interiors intersect and no part of the
interior or boundary of one geometry intersects the exterior of the other"
(a symmetric relationship)

=end html


A geo_equals should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_equals => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoEquals',
);


=head2 C<geo_intersects>

C<geoIntersects>

=begin html

Represents spatial relations in which two geometries (or the places they
represent) have at least one point in common. As defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_intersects should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_intersects => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoIntersects',
);


=head2 C<geo_overlaps>

C<geoOverlaps>

=begin html

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that geospatially overlaps it,
i.e. they have some but not all points in common. As defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_overlaps should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_overlaps => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoOverlaps',
);


=head2 C<geo_touches>

C<geoTouches>

=begin html

Represents spatial relations in which two geometries (or the places they
represent) touch: they have at least one boundary point in common, but no
interior points." (a symmetric relationship, as defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a> )

=end html


A geo_touches should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_touches => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoTouches',
);


=head2 C<geo_within>

C<geoWithin>

=begin html

Represents a relationship between two geometries (or the places they
represent), relating a geometry to one that contains it, i.e. it is inside
(i.e. within) its interior. As defined in <a
href="https://en.wikipedia.org/wiki/DE-9IM">DE-9IM</a>.

=end html


A geo_within should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeospatialGeometry']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has geo_within => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'geoWithin',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
