use utf8;

package SemanticWeb::Schema::DataDownload;

# ABSTRACT: All or part of a [[Dataset]] in downloadable form

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'DataDownload';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

All or part of a L<SemanticWeb::Schema::Dataset> in downloadable form. 



=head1 ATTRIBUTES


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




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
