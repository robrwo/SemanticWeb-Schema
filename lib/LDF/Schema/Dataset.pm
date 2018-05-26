package LDF::Schema::Dataset;

# ABSTRACT: A body of structured information describing some topic(s) of interest.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A body of structured information describing some topic(s) of interest.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<catalog>



A data catalog which contains this dataset.


A catalog should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DataCatalog']>

=back

=cut

has catalog => (
    is        => 'rw',
    predicate => 1,
);


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
);


=head2 C<distribution>



A downloadable form of this dataset, at a specific location, in a specific
format.


A distribution should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DataDownload']>

=back

=cut

has distribution => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<included_data_catalog>

C<includedDataCatalog>

A data catalog which contains this dataset (this property was previously
'catalog', preferred name is now 'includedInDataCatalog').


A included_data_catalog should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DataCatalog']>

=back

=cut

has included_data_catalog => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<included_in_data_catalog>

C<includedInDataCatalog>

A data catalog which contains this dataset.


A included_in_data_catalog should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DataCatalog']>

=back

=cut

has included_in_data_catalog => (
    is        => 'rw',
    predicate => 1,
);


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
);


=head2 C<spatial>



The range of spatial applicability of a dataset, e.g. for a dataset of New
York weather, the state of New York.


A spatial should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has spatial => (
    is        => 'rw',
    predicate => 1,
);


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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Dataset' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { catalog => 'catalog' },
      { datasetTimeInterval => 'dataset_time_interval' },
      { distribution => 'distribution' },
      { includedDataCatalog => 'included_data_catalog' },
      { includedInDataCatalog => 'included_in_data_catalog' },
      { issn => 'issn' },
      { spatial => 'spatial' },
      { temporal => 'temporal' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
