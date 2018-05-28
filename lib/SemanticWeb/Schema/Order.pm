package SemanticWeb::Schema::Order;

# ABSTRACT: An order is a confirmation of a transaction (a receipt)

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Order';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An order is a confirmation of a transaction (a receipt), which can contain
multiple line items, each represented by an Offer that has been accepted by
the customer.




=head1 ATTRIBUTES


=head2 C<accepted_offer>

C<acceptedOffer>

The offer(s) -- e.g., product, quantity and price combinations -- included
in the order.


A accepted_offer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has accepted_offer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'acceptedOffer',
    json_ld_serializer => \&_serialize_accepted_offer,
);

sub _serialize_accepted_offer { $_[0]->_serializer('accepted_offer') }


=head2 C<billing_address>

C<billingAddress>

The billing address for the order.


A billing_address should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=back

=cut

has billing_address => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'billingAddress',
    json_ld_serializer => \&_serialize_billing_address,
);

sub _serialize_billing_address { $_[0]->_serializer('billing_address') }


=head2 C<broker>



An entity that arranges for an exchange between a buyer and a seller. In
most cases a broker never acquires or releases ownership of a product or
service involved in an exchange. If it is not clear whether an entity is a
broker, seller, or buyer, the latter two terms are preferred.


A broker should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has broker => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broker',
    json_ld_serializer => \&_serialize_broker,
);

sub _serialize_broker { $_[0]->_serializer('broker') }


=head2 C<confirmation_number>

C<confirmationNumber>

A number that confirms the given order or payment has been received.


A confirmation_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has confirmation_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'confirmationNumber',
    json_ld_serializer => \&_serialize_confirmation_number,
);

sub _serialize_confirmation_number { $_[0]->_serializer('confirmation_number') }


=head2 C<customer>



Party placing the order or paying the invoice.


A customer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has customer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'customer',
    json_ld_serializer => \&_serialize_customer,
);

sub _serialize_customer { $_[0]->_serializer('customer') }


=head2 C<discount>



Any discount applied (to an Order).


A discount should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has discount => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'discount',
    json_ld_serializer => \&_serialize_discount,
);

sub _serialize_discount { $_[0]->_serializer('discount') }


=head2 C<discount_code>

C<discountCode>

Code used to redeem a discount.


A discount_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has discount_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'discountCode',
    json_ld_serializer => \&_serialize_discount_code,
);

sub _serialize_discount_code { $_[0]->_serializer('discount_code') }


=head2 C<discount_currency>

C<discountCurrency>

The currency (in 3-letter ISO 4217 format) of the discount.


A discount_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has discount_currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'discountCurrency',
    json_ld_serializer => \&_serialize_discount_currency,
);

sub _serialize_discount_currency { $_[0]->_serializer('discount_currency') }


=head2 C<is_gift>

C<isGift>

Was the offer accepted as a gift for someone other than the buyer.


A is_gift should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_gift => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isGift',
    json_ld_serializer => \&_serialize_is_gift,
);

sub _serialize_is_gift { $_[0]->_serializer('is_gift') }


=head2 C<merchant>



'merchant' is an out-dated term for 'seller'.


A merchant should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has merchant => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'merchant',
    json_ld_serializer => \&_serialize_merchant,
);

sub _serialize_merchant { $_[0]->_serializer('merchant') }


=head2 C<order_date>

C<orderDate>

Date order was placed.


A order_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has order_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderDate',
    json_ld_serializer => \&_serialize_order_date,
);

sub _serialize_order_date { $_[0]->_serializer('order_date') }


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


=head2 C<order_number>

C<orderNumber>

The identifier of the transaction.


A order_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has order_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderNumber',
    json_ld_serializer => \&_serialize_order_number,
);

sub _serialize_order_number { $_[0]->_serializer('order_number') }


=head2 C<order_status>

C<orderStatus>

The current status of the order.


A order_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OrderStatus']>

=back

=cut

has order_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'orderStatus',
    json_ld_serializer => \&_serialize_order_status,
);

sub _serialize_order_status { $_[0]->_serializer('order_status') }


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


=head2 C<part_of_invoice>

C<partOfInvoice>

The order is being paid as part of the referenced Invoice.


A part_of_invoice should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Invoice']>

=back

=cut

has part_of_invoice => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'partOfInvoice',
    json_ld_serializer => \&_serialize_part_of_invoice,
);

sub _serialize_part_of_invoice { $_[0]->_serializer('part_of_invoice') }


=head2 C<payment_due>

C<paymentDue>

The date that payment is due.


A payment_due should be one of the following types:

=over

=item C<Str>

=back

=cut

has payment_due => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentDue',
    json_ld_serializer => \&_serialize_payment_due,
);

sub _serialize_payment_due { $_[0]->_serializer('payment_due') }


=head2 C<payment_due_date>

C<paymentDueDate>

The date that payment is due.


A payment_due_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has payment_due_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentDueDate',
    json_ld_serializer => \&_serialize_payment_due_date,
);

sub _serialize_payment_due_date { $_[0]->_serializer('payment_due_date') }


=head2 C<payment_method>

C<paymentMethod>

The name of the credit card or other method of payment for the order.


A payment_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PaymentMethod']>

=back

=cut

has payment_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentMethod',
    json_ld_serializer => \&_serialize_payment_method,
);

sub _serialize_payment_method { $_[0]->_serializer('payment_method') }


=head2 C<payment_method_id>

C<paymentMethodId>

An identifier for the method of payment used (e.g. the last 4 digits of the
credit card).


A payment_method_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has payment_method_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentMethodId',
    json_ld_serializer => \&_serialize_payment_method_id,
);

sub _serialize_payment_method_id { $_[0]->_serializer('payment_method_id') }


=head2 C<payment_url>

C<paymentUrl>

The URL for sending a payment.


A payment_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has payment_url => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentUrl',
    json_ld_serializer => \&_serialize_payment_url,
);

sub _serialize_payment_url { $_[0]->_serializer('payment_url') }


=head2 C<seller>



An entity which offers (sells / leases / lends / loans) the services /
goods. A seller may also be a provider.


A seller should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has seller => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seller',
    json_ld_serializer => \&_serialize_seller,
);

sub _serialize_seller { $_[0]->_serializer('seller') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
