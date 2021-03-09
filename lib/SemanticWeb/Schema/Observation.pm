use utf8;

package SemanticWeb::Schema::Observation;

# ABSTRACT: Instances of the class [[Observation]] are used to specify observations about an entity (which may or may not be an instance of a [[StatisticalPopulation]])

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Observation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

Instances of the class L<SemanticWeb::Schema::Observation> are used to specify observations about an entity (which may or may not be an instance of a L<SemanticWeb::Schema::StatisticalPopulation>), at a particular time. The principal properties of an L<SemanticWeb::Schema::Observation> are [[observedNode]], [[measuredProperty]], [[measuredValue]] (or [[median]], etc.) and [[observationDate]] ([[measuredProperty]] properties can, but need not always, be W3C RDF Data Cube "measure properties", as in the L<lifeExpectancy example|https://www.w3.org/TR/vocab-data-cube/#dsd-example>).
See also L<SemanticWeb::Schema::StatisticalPopulation>, and the L<data and datasets|/docs/data-and-datasets.html> overview for more details.



=head1 ATTRIBUTES


=head2 C<margin_of_error>

C<marginOfError>

A marginOfError for an L<SemanticWeb::Schema::Observation>.

A margin_of_error should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_margin_of_error>

A predicate for the L</margin_of_error> attribute.

=cut

has margin_of_error => (
    is        => 'rw',
    predicate => '_has_margin_of_error',
    json_ld   => 'marginOfError',
);


=head2 C<measured_property>

C<measuredProperty>

The measuredProperty of an L<SemanticWeb::Schema::Observation>, either a schema.org property, a property from other RDF-compatible systems e.g. W3C RDF Data Cube, or schema.org extensions such as L<GS1's|https://www.gs1.org/voc/?show=properties>.

A measured_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=back

=head2 C<_has_measured_property>

A predicate for the L</measured_property> attribute.

=cut

has measured_property => (
    is        => 'rw',
    predicate => '_has_measured_property',
    json_ld   => 'measuredProperty',
);


=head2 C<measured_value>

C<measuredValue>

The measuredValue of an L<SemanticWeb::Schema::Observation>.

A measured_value should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataType']>

=back

=head2 C<_has_measured_value>

A predicate for the L</measured_value> attribute.

=cut

has measured_value => (
    is        => 'rw',
    predicate => '_has_measured_value',
    json_ld   => 'measuredValue',
);


=head2 C<observation_date>

C<observationDate>

The observationDate of an L<SemanticWeb::Schema::Observation>.

A observation_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_observation_date>

A predicate for the L</observation_date> attribute.

=cut

has observation_date => (
    is        => 'rw',
    predicate => '_has_observation_date',
    json_ld   => 'observationDate',
);


=head2 C<observed_node>

C<observedNode>

The observedNode of an L<SemanticWeb::Schema::Observation>, often a L<SemanticWeb::Schema::StatisticalPopulation>.

A observed_node should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::StatisticalPopulation']>

=back

=head2 C<_has_observed_node>

A predicate for the L</observed_node> attribute.

=cut

has observed_node => (
    is        => 'rw',
    predicate => '_has_observed_node',
    json_ld   => 'observedNode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
