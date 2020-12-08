use utf8;

package SemanticWeb::Schema::Dataset;

# ABSTRACT: A body of structured information describing some topic(s) of interest.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Dataset';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

A body of structured information describing some topic(s) of interest.




=head1 ATTRIBUTES


=head2 C<catalog>



A data catalog which contains this dataset.


A catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataCatalog']>

=back

=head2 C<_has_catalog>

A predicate for the L</catalog> attribute.

=cut

has catalog => (
    is        => 'rw',
    predicate => '_has_catalog',
    json_ld   => 'catalog',
);


=head2 C<dataset_time_interval>

C<datasetTimeInterval>

The range of temporal applicability of a dataset, e.g. for a 2011 census
dataset, the year 2011 (in ISO 8601 time interval format).


A dataset_time_interval should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_dataset_time_interval>

A predicate for the L</dataset_time_interval> attribute.

=cut

has dataset_time_interval => (
    is        => 'rw',
    predicate => '_has_dataset_time_interval',
    json_ld   => 'datasetTimeInterval',
);


=head2 C<distribution>



A downloadable form of this dataset, at a specific location, in a specific
format.


A distribution should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataDownload']>

=back

=head2 C<_has_distribution>

A predicate for the L</distribution> attribute.

=cut

has distribution => (
    is        => 'rw',
    predicate => '_has_distribution',
    json_ld   => 'distribution',
);


=head2 C<included_data_catalog>

C<includedDataCatalog>

A data catalog which contains this dataset (this property was previously
'catalog', preferred name is now 'includedInDataCatalog').


A included_data_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataCatalog']>

=back

=head2 C<_has_included_data_catalog>

A predicate for the L</included_data_catalog> attribute.

=cut

has included_data_catalog => (
    is        => 'rw',
    predicate => '_has_included_data_catalog',
    json_ld   => 'includedDataCatalog',
);


=head2 C<included_in_data_catalog>

C<includedInDataCatalog>

A data catalog which contains this dataset.


A included_in_data_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataCatalog']>

=back

=head2 C<_has_included_in_data_catalog>

A predicate for the L</included_in_data_catalog> attribute.

=cut

has included_in_data_catalog => (
    is        => 'rw',
    predicate => '_has_included_in_data_catalog',
    json_ld   => 'includedInDataCatalog',
);


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_issn>

A predicate for the L</issn> attribute.

=cut

has issn => (
    is        => 'rw',
    predicate => '_has_issn',
    json_ld   => 'issn',
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


=head2 C<variable_measured>

C<variableMeasured>

The variableMeasured property can indicate (repeated as necessary) the
variables that are measured in some dataset, either described as text or as
pairs of identifier and description using PropertyValue.


A variable_measured should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

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


=head2 C<variables_measured>

C<variablesMeasured>

Originally named [[variablesMeasured]], The [[variableMeasured]] property can indicate (repeated as necessary) the  variables that are measured in some dataset, either described as text or as pairs of identifier and description using PropertyValue.

A variables_measured should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_variables_measured>

A predicate for the L</variables_measured> attribute.

=cut

has variables_measured => (
    is        => 'rw',
    predicate => '_has_variables_measured',
    json_ld   => 'variablesMeasured',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
