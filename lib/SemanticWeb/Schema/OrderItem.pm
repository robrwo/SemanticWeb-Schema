use utf8;

package SemanticWeb::Schema::OrderItem;

# ABSTRACT: An order item is a line of an order

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'OrderItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

An order item is a line of an order. It includes the quantity and shipping
details of a bought offer.




=head1 ATTRIBUTES


=head2 C<order_delivery>

C<orderDelivery>

The delivery of the parcel related to this order or order item.


A order_delivery should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ParcelDelivery']>

=back

=head2 C<_has_order_delivery>

A predicate for the L</order_delivery> attribute.

=cut

has order_delivery => (
    is        => 'rw',
    predicate => '_has_order_delivery',
    json_ld   => 'orderDelivery',
);


=head2 C<order_item_number>

C<orderItemNumber>

The identifier of the order item.


A order_item_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_order_item_number>

A predicate for the L</order_item_number> attribute.

=cut

has order_item_number => (
    is        => 'rw',
    predicate => '_has_order_item_number',
    json_ld   => 'orderItemNumber',
);


=head2 C<order_item_status>

C<orderItemStatus>

The current status of the order item.


A order_item_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OrderStatus']>

=back

=head2 C<_has_order_item_status>

A predicate for the L</order_item_status> attribute.

=cut

has order_item_status => (
    is        => 'rw',
    predicate => '_has_order_item_status',
    json_ld   => 'orderItemStatus',
);


=head2 C<order_quantity>

C<orderQuantity>

The number of the item ordered. If the property is not set, assume the
quantity is one.


A order_quantity should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_order_quantity>

A predicate for the L</order_quantity> attribute.

=cut

has order_quantity => (
    is        => 'rw',
    predicate => '_has_order_quantity',
    json_ld   => 'orderQuantity',
);


=head2 C<ordered_item>

C<orderedItem>

The item ordered.


A ordered_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OrderItem']>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=head2 C<_has_ordered_item>

A predicate for the L</ordered_item> attribute.

=cut

has ordered_item => (
    is        => 'rw',
    predicate => '_has_ordered_item',
    json_ld   => 'orderedItem',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
