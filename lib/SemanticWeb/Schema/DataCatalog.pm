use utf8;

package SemanticWeb::Schema::DataCatalog;

# ABSTRACT: A collection of datasets.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'DataCatalog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A collection of datasets.




=head1 ATTRIBUTES


=head2 C<dataset>



A dataset contained in this catalog.


A dataset should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Dataset']>

=back

=head2 C<_has_dataset>

A predicate for the L</dataset> attribute.

=cut

has dataset => (
    is        => 'rw',
    predicate => '_has_dataset',
    json_ld   => 'dataset',
);


=head2 C<measurement_technique>

C<measurementTechnique>

A technique or technology used in a L<SemanticWeb::Schema::Dataset> (or L<SemanticWeb::Schema::DataDownload>, L<SemanticWeb::Schema::DataCatalog>),
corresponding to the method used for measuring the corresponding variable(s) (described using [[variableMeasured]]). This is oriented towards scientific and scholarly dataset publication but may have broader applicability; it is not intended as a full representation of measurement, but rather as a high level summary for dataset discovery.

For example, if [[variableMeasured]] is: molecule concentration, [[measurementTechnique]] could be: "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or "immunofluorescence".

If the [[variableMeasured]] is "depression rating", the [[measurementTechnique]] could be "Zung Scale" or "HAM-D" or "Beck Depression Inventory".

If there are several [[variableMeasured]] properties recorded for some given data object, use a L<SemanticWeb::Schema::PropertyValue> for each [[variableMeasured]] and attach the corresponding [[measurementTechnique]].

A measurement_technique should be one of the following types:

=over

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



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
