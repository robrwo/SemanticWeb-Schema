use utf8;

package SemanticWeb::Schema::MedicalScholarlyArticle;

# ABSTRACT: A scholarly article in the medical domain.

use Moo;

extends qw/ SemanticWeb::Schema::ScholarlyArticle /;


use MooX::JSON_LD 'MedicalScholarlyArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A scholarly article in the medical domain.




=head1 ATTRIBUTES


=head2 C<publication_type>

C<publicationType>

The type of the medical article, taken from the US NLM MeSH publication
type catalog. See also [MeSH
documentation](http://www.nlm.nih.gov/mesh/pubtypes.html).


A publication_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_publication_type>

A predicate for the L</publication_type> attribute.

=cut

has publication_type => (
    is        => 'rw',
    predicate => '_has_publication_type',
    json_ld   => 'publicationType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ScholarlyArticle>

=cut

1;
