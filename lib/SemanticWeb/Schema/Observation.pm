use utf8;

package SemanticWeb::Schema::Observation;

# ABSTRACT: Instances of the class [[Observation]] are used to specify observations about an entity at a particular time

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible SemanticWeb::Schema::QuantitativeValue /;


use MooX::JSON_LD 'Observation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

Instances of the class L<SemanticWeb::Schema::Observation> are used to specify observations about an entity at a particular time. The principal properties of an L<SemanticWeb::Schema::Observation> are [[observationAbout]], [[measuredProperty]], [[statType]], [[value] and [[observationDate]]  and [[measuredProperty]]. Some but not all Observations represent a L<SemanticWeb::Schema::QuantitativeValue>. Quantitative observations can be about a L<SemanticWeb::Schema::StatisticalVariable>, which is an abstract specification about which we can make observations that are grounded at a particular location and time. 

Observations can also encode a subset of simple RDF-like statements (its observationAbout, a StatisticalVariable, defining the measuredPoperty; its observationAbout property indicating the entity the statement is about, and [[value]] )

In the context of a quantitative knowledge graph, typical properties could include [[measuredProperty]], [[observationAbout]], [[observationDate]], [[value]], [[unitCode]], [[unitText]], [[measurementMethod]].



=head1 ATTRIBUTES


=head2 C<margin_of_error>

C<marginOfError>

A [[marginOfError]] for an L<SemanticWeb::Schema::Observation>.

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

The measuredProperty of an L<SemanticWeb::Schema::Observation>, typically via its L<SemanticWeb::Schema::StatisticalVariable>. There are various kinds of applicable L<SemanticWeb::Schema::Property>: a schema.org property, a property from other RDF-compatible systems, e.g. W3C RDF Data Cube, Data Commons, Wikidata, or schema.org extensions such as L<GS1's|https://www.gs1.org/voc/?show=properties>.

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


=head2 C<measurement_denominator>

C<measurementDenominator>

Identifies the denominator variable when an observation represents a ratio
or percentage.


A measurement_denominator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::StatisticalVariable']>

=back

=head2 C<_has_measurement_denominator>

A predicate for the L</measurement_denominator> attribute.

=cut

has measurement_denominator => (
    is        => 'rw',
    predicate => '_has_measurement_denominator',
    json_ld   => 'measurementDenominator',
);


=head2 C<measurement_method>

C<measurementMethod>

A subproperty of [[measurementTechnique]] that can be used for specifying specific methods, in particular via L<SemanticWeb::Schema::MeasurementMethodEnum>.

A measurement_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::MeasurementMethodEnum']>

=item C<Str>

=back

=head2 C<_has_measurement_method>

A predicate for the L</measurement_method> attribute.

=cut

has measurement_method => (
    is        => 'rw',
    predicate => '_has_measurement_method',
    json_ld   => 'measurementMethod',
);


=head2 C<measurement_qualifier>

C<measurementQualifier>

Provides additional qualification to an observation. For example, a GDP
observation measures the Nominal value.


A measurement_qualifier should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=back

=head2 C<_has_measurement_qualifier>

A predicate for the L</measurement_qualifier> attribute.

=cut

has measurement_qualifier => (
    is        => 'rw',
    predicate => '_has_measurement_qualifier',
    json_ld   => 'measurementQualifier',
);


=head2 C<measurement_technique>

C<measurementTechnique>

A technique, method or technology used in an L<SemanticWeb::Schema::Observation>, L<SemanticWeb::Schema::StatisticalVariable> or L<SemanticWeb::Schema::Dataset> (or L<SemanticWeb::Schema::DataDownload>, L<SemanticWeb::Schema::DataCatalog>), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using [[variableMeasured]]; for L<SemanticWeb::Schema::Observation>, a L<SemanticWeb::Schema::StatisticalVariable>). Often but not necessarily each [[variableMeasured]] will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and "knowledge graphs". In that case the subproperty of [[variableMeasured]] called [[measuredProperty]] is applicable.

The [[measurementTechnique]] property helps when extra clarification is needed about how a [[measuredProperty]] was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery. 

For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence". If the [[variableMeasured]] is "depression rating", the [[measurementTechnique]] could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory". 

If there are several [[variableMeasured]] properties recorded for some given data object, use a L<SemanticWeb::Schema::PropertyValue> for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]]. The value can also be from an enumeration, organized as a L<SemanticWeb::Schema::MeasurementMetholdEnumeration>.

A measurement_technique should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::MeasurementMethodEnum']>

=item C<Str>

=back

=head2 C<_has_measurement_technique>

A predicate for the L</measurement_technique> attribute.

=cut

has measurement_technique => (
    is        => 'rw',
    predicate => '_has_measurement_technique',
    json_ld   => 'measurementTechnique',
);


=head2 C<observation_about>

C<observationAbout>

The [[observationAbout]] property identifies an entity, often a L<SemanticWeb::Schema::Place>, associated with an L<SemanticWeb::Schema::Observation>.

A observation_about should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_observation_about>

A predicate for the L</observation_about> attribute.

=cut

has observation_about => (
    is        => 'rw',
    predicate => '_has_observation_about',
    json_ld   => 'observationAbout',
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


=head2 C<observation_period>

C<observationPeriod>

The length of time an Observation took place over. The format follows
`P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period 3
Months, P3h is Period 3 hours.


A observation_period should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_observation_period>

A predicate for the L</observation_period> attribute.

=cut

has observation_period => (
    is        => 'rw',
    predicate => '_has_observation_period',
    json_ld   => 'observationPeriod',
);


=head2 C<variable_measured>

C<variableMeasured>

The variableMeasured property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue, or more explicitly as a L<SemanticWeb::Schema::StatisticalVariable>.

A variable_measured should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<InstanceOf['SemanticWeb::Schema::StatisticalVariable']>

=item C<Str>

=back

=head2 C<_has_variable_measured>

A predicate for the L</variable_measured> attribute.

=cut

has variable_measured => (
    is        => 'rw',
    predicate => '_has_variable_measured',
    json_ld   => 'variableMeasured',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::QuantitativeValue>

=cut

1;
