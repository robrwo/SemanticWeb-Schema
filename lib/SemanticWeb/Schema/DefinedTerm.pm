use utf8;

package SemanticWeb::Schema::DefinedTerm;

# ABSTRACT: A word, name, acronym, phrase, etc

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'DefinedTerm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A word, name, acronym, phrase, etc. with a formal definition. Often used in
the context of category or subject classification, glossaries or
dictionaries, product or creative work types, etc. Use the name property
for the term being defined, use termCode if the term has an alpha-numeric
code allocated, use description to provide the definition of the term.




=head1 ATTRIBUTES


=head2 C<in_defined_term_set>

C<inDefinedTermSet>

A L<SemanticWeb::Schema::DefinedTermSet> that contains this term.

A in_defined_term_set should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTermSet']>

=item C<Str>

=back

=head2 C<_has_in_defined_term_set>

A predicate for the L</in_defined_term_set> attribute.

=cut

has in_defined_term_set => (
    is        => 'rw',
    predicate => '_has_in_defined_term_set',
    json_ld   => 'inDefinedTermSet',
);


=head2 C<term_code>

C<termCode>

A code that identifies this L<SemanticWeb::Schema::DefinedTerm> within a L<SemanticWeb::Schema::DefinedTermSet>

A term_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_term_code>

A predicate for the L</term_code> attribute.

=cut

has term_code => (
    is        => 'rw',
    predicate => '_has_term_code',
    json_ld   => 'termCode',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
