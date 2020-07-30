use utf8;

package SemanticWeb::Schema::SomeProducts;

# ABSTRACT: A placeholder for multiple similar products of the same kind.

use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'SomeProducts';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

A placeholder for multiple similar products of the same kind.




=head1 ATTRIBUTES


=head2 C<inventory_level>

C<inventoryLevel>

The current approximate inventory level for the item or items.


A inventory_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_inventory_level>

A predicate for the L</inventory_level> attribute.

=cut

has inventory_level => (
    is        => 'rw',
    predicate => '_has_inventory_level',
    json_ld   => 'inventoryLevel',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
