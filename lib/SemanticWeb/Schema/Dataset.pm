package SemanticWeb::Schema::Dataset;

# ABSTRACT: A body of structured information describing some topic(s) of interest.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Dataset';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A body of structured information describing some topic(s) of interest.




=head1 ATTRIBUTES


=head2 C<catalog>



A data catalog which contains this dataset.


A catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataCatalog']>

=back

=cut

has catalog => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'catalog',
    json_ld_serializer => \&_serialize_catalog,
);

sub _serialize_catalog { $_[0]->_serializer('catalog') }


=head2 C<dataset_time_interval>

C<datasetTimeInterval>

The range of temporal applicability of a dataset, e.g. for a 2011 census
dataset, the year 2011 (in ISO 8601 time interval format).


A dataset_time_interval should be one of the following types:

=over

=item C<Str>

=back

=cut

has dataset_time_interval => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'datasetTimeInterval',
    json_ld_serializer => \&_serialize_dataset_time_interval,
);

sub _serialize_dataset_time_interval { $_[0]->_serializer('dataset_time_interval') }


=head2 C<distribution>



A downloadable form of this dataset, at a specific location, in a specific
format.


A distribution should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataDownload']>

=back

=cut

has distribution => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'distribution',
    json_ld_serializer => \&_serialize_distribution,
);

sub _serialize_distribution { $_[0]->_serializer('distribution') }


=head2 C<included_data_catalog>

C<includedDataCatalog>

A data catalog which contains this dataset (this property was previously
'catalog', preferred name is now 'includedInDataCatalog').


A included_data_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataCatalog']>

=back

=cut

has included_data_catalog => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'includedDataCatalog',
    json_ld_serializer => \&_serialize_included_data_catalog,
);

sub _serialize_included_data_catalog { $_[0]->_serializer('included_data_catalog') }


=head2 C<included_in_data_catalog>

C<includedInDataCatalog>

A data catalog which contains this dataset.


A included_in_data_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataCatalog']>

=back

=cut

has included_in_data_catalog => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'includedInDataCatalog',
    json_ld_serializer => \&_serialize_included_in_data_catalog,
);

sub _serialize_included_in_data_catalog { $_[0]->_serializer('included_in_data_catalog') }


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=cut

has issn => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'issn',
    json_ld_serializer => \&_serialize_issn,
);

sub _serialize_issn { $_[0]->_serializer('issn') }


=head2 C<spatial>



The range of spatial applicability of a dataset, e.g. for a dataset of New
York weather, the state of New York.


A spatial should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has spatial => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'spatial',
    json_ld_serializer => \&_serialize_spatial,
);

sub _serialize_spatial { $_[0]->_serializer('spatial') }


=head2 C<temporal>



The range of temporal applicability of a dataset, e.g. for a 2011 census
dataset, the year 2011 (in ISO 8601 time interval format).


A temporal should be one of the following types:

=over

=item C<Str>

=back

=cut

has temporal => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'temporal',
    json_ld_serializer => \&_serialize_temporal,
);

sub _serialize_temporal { $_[0]->_serializer('temporal') }




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
