use utf8;

package SemanticWeb::Schema::measurementTechnique;

# ABSTRACT: A technique

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'measurementTechnique';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A technique, method or technology used in an L<SemanticWeb::Schema::Observation>, L<SemanticWeb::Schema::StatisticalVariable> or L<SemanticWeb::Schema::Dataset> (or L<SemanticWeb::Schema::DataDownload>, L<SemanticWeb::Schema::DataCatalog>), corresponding to the method used for measuring the corresponding variable(s) (for datasets, described using [[variableMeasured]]; for L<SemanticWeb::Schema::Observation>, a L<SemanticWeb::Schema::StatisticalVariable>). Often but not necessarily each [[variableMeasured]] will have an explicit representation as (or mapping to) an property such as those defined in Schema.org, or other RDF vocabularies and "knowledge graphs". In that case the subproperty of [[variableMeasured]] called [[measuredProperty]] is applicable.

The [[measurementTechnique]] property helps when extra clarification is needed about how a [[measuredProperty]] was measured. This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but can often serve as a high level summary for dataset discovery. 

For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence". If the [[variableMeasured]] is "depression rating", the [[measurementTechnique]] could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory". 

If there are several [[variableMeasured]] properties recorded for some given data object, use a L<SemanticWeb::Schema::PropertyValue> for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]]. The value can also be from an enumeration, organized as a L<SemanticWeb::Schema::MeasurementMetholdEnumeration>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
