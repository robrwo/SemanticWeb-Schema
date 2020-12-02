use utf8;

package SemanticWeb::Schema::ProductGroup;

# ABSTRACT: A ProductGroup represents a group of [[Product]]s that vary only in certain well-described ways

use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'ProductGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A ProductGroup represents a group of [[Product]]s that vary only in certain
well-described ways, such as by [[size]], [[color]], [[material]] etc.
While a ProductGroup itself is not directly offered for sale, the various
varying products that it represents can be. The ProductGroup serves as a
prototype or template, standing in for all of the products who have an
[[isVariantOf]] relationship to it. As such, properties (including
additional types) can be applied to the ProductGroup to represent
characteristics shared by each of the (possibly very many) variants.
Properties that reference a ProductGroup are not included in this
mechanism; neither are the following specific properties [[variesBy]],
[[hasVariant]], [[url]]. 




=head1 ATTRIBUTES


=head2 C<has_variant>

C<hasVariant>

Indicates a [[Product]] that is a member of this [[ProductGroup]] (or
[[ProductModel]]).


A has_variant should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=head2 C<_has_has_variant>

A predicate for the L</has_variant> attribute.

=cut

has has_variant => (
    is        => 'rw',
    predicate => '_has_has_variant',
    json_ld   => 'hasVariant',
);


=head2 C<product_group_id>

C<productGroupID>

Indicates a textual identifier for a ProductGroup.


A product_group_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_product_group_id>

A predicate for the L</product_group_id> attribute.

=cut

has product_group_id => (
    is        => 'rw',
    predicate => '_has_product_group_id',
    json_ld   => 'productGroupID',
);


=head2 C<varies_by>

C<variesBy>

Indicates the property or properties by which the variants in a
[[ProductGroup]] vary, e.g. their size, color etc. Schema.org properties
can be referenced by their short name e.g. "color"; terms defined elsewhere
can be referenced with their URIs.


A varies_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_varies_by>

A predicate for the L</varies_by> attribute.

=cut

has varies_by => (
    is        => 'rw',
    predicate => '_has_varies_by',
    json_ld   => 'variesBy',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
