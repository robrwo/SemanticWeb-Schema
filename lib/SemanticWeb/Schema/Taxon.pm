use utf8;

package SemanticWeb::Schema::Taxon;

# ABSTRACT: A set of organisms asserted to represent a natural cohesive biological unit.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Taxon';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A set of organisms asserted to represent a natural cohesive biological
unit.




=head1 ATTRIBUTES


=head2 C<child_taxon>

C<childTaxon>

Closest child taxa of the taxon in question.


A child_taxon should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Taxon']>

=item C<Str>

=back

=head2 C<_has_child_taxon>

A predicate for the L</child_taxon> attribute.

=cut

has child_taxon => (
    is        => 'rw',
    predicate => '_has_child_taxon',
    json_ld   => 'childTaxon',
);


=head2 C<has_defined_term>

C<hasDefinedTerm>

A Defined Term contained in this term set.


A has_defined_term should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=back

=head2 C<_has_has_defined_term>

A predicate for the L</has_defined_term> attribute.

=cut

has has_defined_term => (
    is        => 'rw',
    predicate => '_has_has_defined_term',
    json_ld   => 'hasDefinedTerm',
);


=head2 C<parent_taxon>

C<parentTaxon>

Closest parent taxon of the taxon in question.


A parent_taxon should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Taxon']>

=item C<Str>

=back

=head2 C<_has_parent_taxon>

A predicate for the L</parent_taxon> attribute.

=cut

has parent_taxon => (
    is        => 'rw',
    predicate => '_has_parent_taxon',
    json_ld   => 'parentTaxon',
);


=head2 C<taxon_rank>

C<taxonRank>

The taxonomic rank of this taxon given preferably as a URI from a
controlled vocabulary – typically the ranks from TDWG TaxonRank ontology or
equivalent Wikidata URIs.


A taxon_rank should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<Str>

=back

=head2 C<_has_taxon_rank>

A predicate for the L</taxon_rank> attribute.

=cut

has taxon_rank => (
    is        => 'rw',
    predicate => '_has_taxon_rank',
    json_ld   => 'taxonRank',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
