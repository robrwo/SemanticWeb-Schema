package SemanticWeb::Schema::GeoCircle;

# ABSTRACT: A GeoCircle is a GeoShape representing a circular geographic area

use Moo;

extends qw/ SemanticWeb::Schema::GeoShape /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A GeoCircle is a GeoShape representing a circular geographic area. As it is
a GeoShape it provides the simple textual property 'circle', but also
allows the combination of postalCode alongside geoRadius. The center of the
circle can be indicated via the 'geoMidpoint' property, or more
approximately using 'address', 'postalCode'.




=head1 ATTRIBUTES


=head2 C<geo_midpoint>

C<geoMidpoint>

Indicates the GeoCoordinates at the centre of a GeoShape e.g. GeoCircle.


A geo_midpoint should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoCoordinates']>

=back

=cut

has geo_midpoint => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<geo_radius>

C<geoRadius>

Indicates the approximate radius of a GeoCircle (metres unless indicated
otherwise via Distance notation).


A geo_radius should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<Str>

=back

=cut

has geo_radius => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'GeoCircle' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'geoMidpoint' => $self->curry::_serializer('geo_midpoint'),
       'geoRadius' => $self->curry::_serializer('geo_radius'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::GeoShape>

=cut

1;
