use utf8;

package SemanticWeb::Schema::ProductModel;

# ABSTRACT: A datasheet or vendor specification of a product (in the sense of a prototypical description).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'ProductModel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A datasheet or vendor specification of a product (in the sense of a
prototypical description).




=head1 ATTRIBUTES


=head2 C<is_variant_of>

C<isVariantOf>

Indicates the kind of product that this is a variant of. In the case of L<SemanticWeb::Schema::ProductModel>, this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a L<SemanticWeb::Schema::ProductGroup>, the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with L<SemanticWeb::Schema::ProductGroup>, this property can apply to any L<SemanticWeb::Schema::Product> included in the group.

A is_variant_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductGroup']>

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=head2 C<_has_is_variant_of>

A predicate for the L</is_variant_of> attribute.

=cut

has is_variant_of => (
    is        => 'rw',
    predicate => '_has_is_variant_of',
    json_ld   => 'isVariantOf',
);


=head2 C<predecessor_of>

C<predecessorOf>

A pointer from a previous, often discontinued variant of the product to its
newer variant.


A predecessor_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=head2 C<_has_predecessor_of>

A predicate for the L</predecessor_of> attribute.

=cut

has predecessor_of => (
    is        => 'rw',
    predicate => '_has_predecessor_of',
    json_ld   => 'predecessorOf',
);


=head2 C<successor_of>

C<successorOf>

A pointer from a newer variant of a product to its previous, often
discontinued predecessor.


A successor_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=head2 C<_has_successor_of>

A predicate for the L</successor_of> attribute.

=cut

has successor_of => (
    is        => 'rw',
    predicate => '_has_successor_of',
    json_ld   => 'successorOf',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
