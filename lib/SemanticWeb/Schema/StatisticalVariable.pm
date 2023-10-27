use utf8;

package SemanticWeb::Schema::StatisticalVariable;

# ABSTRACT: [[StatisticalVariable]] represents any type of statistical metric that can be measured at a place and time

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ConstraintNode /;


use MooX::JSON_LD 'StatisticalVariable';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

L<SemanticWeb::Schema::StatisticalVariable> represents any type of statistical metric that can be measured at a place and time. The usage pattern for L<SemanticWeb::Schema::StatisticalVariable> is typically expressed using L<SemanticWeb::Schema::Observation> with an explicit [[populationType]], which is a type, typically drawn from Schema.org. Each L<SemanticWeb::Schema::StatisticalVariable> is marked as a L<SemanticWeb::Schema::ConstraintNode>, meaning that some properties (those listed using [[constraintProperty]]) serve in this setting solely to define the statistical variable rather than literally describe a specific person, place or thing. For example, a L<SemanticWeb::Schema::StatisticalVariable> MedianI<Height>Person_Female representing the median height of women, could be written as follows: the population type is L<SemanticWeb::Schema::Person>; the measuredProperty [[height]]; the [[statType]] [[median]]; the [[gender]] L<SemanticWeb::Schema::Female>. It is important to note that there are many kinds of scientific quantitative observation which are not fully, perfectly or unambiguously described following this pattern, or with solely Schema.org terminology. The approach taken here is designed to allow partial, incremental or minimal description of L<SemanticWeb::Schema::StatisticalVariable>s, and the use of detailed sets of entity and property IDs from external repositories. The [[measurementMethod]], [[unitCode]] and [[unitText]] properties can also be used to clarify the specific nature and notation of an observed measurement. 



=head1 ATTRIBUTES


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


=head2 C<population_type>

C<populationType>

Indicates the populationType common to all members of a L<SemanticWeb::Schema::StatisticalPopulation> or all cases within the scope of a L<SemanticWeb::Schema::StatisticalVariable>.

A population_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Class']>

=back

=head2 C<_has_population_type>

A predicate for the L</population_type> attribute.

=cut

has population_type => (
    is        => 'rw',
    predicate => '_has_population_type',
    json_ld   => 'populationType',
);


=head2 C<stat_type>

C<statType>

Indicates the kind of statistic represented by a L<SemanticWeb::Schema::StatisticalVariable>, e.g. mean, count etc. The value of statType is a property, either from within Schema.org (e.g. [[count]], [[median]], [[marginOfError]], [[maxValue]], [[minValue]]) or from other compatible (e.g. RDF) systems such as DataCommons.org or Wikidata.org. 

A stat_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Property']>

=item C<Str>

=back

=head2 C<_has_stat_type>

A predicate for the L</stat_type> attribute.

=cut

has stat_type => (
    is        => 'rw',
    predicate => '_has_stat_type',
    json_ld   => 'statType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ConstraintNode>

=cut

1;
