package SemanticWeb::Schema::OrderItem;

# ABSTRACT: An order item is a line of an order

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'OrderItem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has order_delivery => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderDelivery',
    json_ld_serializer => \&_serialize_order_delivery,
);

sub _serialize_order_delivery { $_[0]->_serializer('order_delivery') }


=head2 C<order_item_number>

C<orderItemNumber>

The identifier of the order item.


A order_item_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has order_item_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderItemNumber',
    json_ld_serializer => \&_serialize_order_item_number,
);

sub _serialize_order_item_number { $_[0]->_serializer('order_item_number') }


=head2 C<order_item_status>

C<orderItemStatus>

The current status of the order item.


A order_item_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OrderStatus']>

=back

=cut

has order_item_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderItemStatus',
    json_ld_serializer => \&_serialize_order_item_status,
);

sub _serialize_order_item_status { $_[0]->_serializer('order_item_status') }


=head2 C<order_quantity>

C<orderQuantity>

The number of the item ordered. If the property is not set, assume the
quantity is one.


A order_quantity should be one of the following types:

=over

=item C<Num>

=back

=cut

has order_quantity => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderQuantity',
    json_ld_serializer => \&_serialize_order_quantity,
);

sub _serialize_order_quantity { $_[0]->_serializer('order_quantity') }


=head2 C<ordered_item>

C<orderedItem>

The item ordered.


A ordered_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::OrderItem']>

=back

=cut

has ordered_item => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderedItem',
    json_ld_serializer => \&_serialize_ordered_item,
);

sub _serialize_ordered_item { $_[0]->_serializer('ordered_item') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
