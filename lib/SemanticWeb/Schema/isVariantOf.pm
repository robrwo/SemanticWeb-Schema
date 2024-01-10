use utf8;

package SemanticWeb::Schema::isVariantOf;

# ABSTRACT: Indicates the kind of product that this is a variant of

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isVariantOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the kind of product that this is a variant of. In the case of L<SemanticWeb::Schema::ProductModel>, this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a L<SemanticWeb::Schema::ProductGroup>, the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with L<SemanticWeb::Schema::ProductGroup>, this property can apply to any L<SemanticWeb::Schema::Product> included in the group.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
