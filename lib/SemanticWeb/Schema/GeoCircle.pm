use utf8;

package SemanticWeb::Schema::GeoCircle;

# ABSTRACT: A GeoCircle is a GeoShape representing a circular geographic area

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::GeoShape /;


use MooX::JSON_LD 'GeoCircle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A GeoCircle is a GeoShape representing a circular geographic area. As it is
a GeoShape it provides the simple textual property 'circle', but also
allows the combination of postalCode alongside geoRadius. The center of the
circle can be indicated via the 'geoMidpoint' property, or more
approximately using 'address', 'postalCode'. 




=head1 ATTRIBUTES


=head2 C<geo_midpoint>

C<geoMidpoint>

Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle.


A geo_midpoint should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoCoordinates']>

=back

=head2 C<_has_geo_midpoint>

A predicate for the L</geo_midpoint> attribute.

=cut

has geo_midpoint => (
    is        => 'rw',
    predicate => '_has_geo_midpoint',
    json_ld   => 'geoMidpoint',
);


=head2 C<geo_radius>

C<geoRadius>

Indicates the approximate radius of a GeoCircle (metres unless indicated
otherwise via Distance notation).


A geo_radius should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<Num>

=item C<Str>

=back

=head2 C<_has_geo_radius>

A predicate for the L</geo_radius> attribute.

=cut

has geo_radius => (
    is        => 'rw',
    predicate => '_has_geo_radius',
    json_ld   => 'geoRadius',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::GeoShape>

=cut

1;
