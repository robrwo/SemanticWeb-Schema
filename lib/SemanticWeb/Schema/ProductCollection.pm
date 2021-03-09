use utf8;

package SemanticWeb::Schema::ProductCollection;

# ABSTRACT: A set of products (either [[ProductGroup]]s or specific variants) that are listed together e

use Moo;

extends qw/ SemanticWeb::Schema::Collection SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'ProductCollection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

A set of products (either L<SemanticWeb::Schema::ProductGroup>s or specific variants) that are listed together e.g. in an L<SemanticWeb::Schema::Offer>.



=head1 ATTRIBUTES


=head2 C<includes_object>

C<includesObject>

This links to a node or nodes indicating the exact quantity of the products included in  an L<SemanticWeb::Schema::Offer> or L<SemanticWeb::Schema::ProductCollection>.

A includes_object should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TypeAndQuantityNode']>

=back

=head2 C<_has_includes_object>

A predicate for the L</includes_object> attribute.

=cut

has includes_object => (
    is        => 'rw',
    predicate => '_has_includes_object',
    json_ld   => 'includesObject',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
