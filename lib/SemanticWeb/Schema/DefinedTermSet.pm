use utf8;

package SemanticWeb::Schema::DefinedTermSet;

# ABSTRACT: A set of defined terms for example a set of categories or a classification scheme

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'DefinedTermSet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

A set of defined terms for example a set of categories or a classification
scheme, a glossary, dictionary or enumeration.




=head1 ATTRIBUTES


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




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
