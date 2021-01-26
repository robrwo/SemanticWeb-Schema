use utf8;

package SemanticWeb::Schema::PaymentChargeSpecification;

# ABSTRACT: The costs of settling the payment using a particular payment method.

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use MooX::JSON_LD 'PaymentChargeSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

The costs of settling the payment using a particular payment method.




=head1 ATTRIBUTES


=head2 C<applies_to_delivery_method>

C<appliesToDeliveryMethod>

The delivery method(s) to which the delivery charge or payment charge
specification applies.


A applies_to_delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=head2 C<_has_applies_to_delivery_method>

A predicate for the L</applies_to_delivery_method> attribute.

=cut

has applies_to_delivery_method => (
    is        => 'rw',
    predicate => '_has_applies_to_delivery_method',
    json_ld   => 'appliesToDeliveryMethod',
);


=head2 C<applies_to_payment_method>

C<appliesToPaymentMethod>

The payment method(s) to which the payment charge specification applies.


A applies_to_payment_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PaymentMethod']>

=back

=head2 C<_has_applies_to_payment_method>

A predicate for the L</applies_to_payment_method> attribute.

=cut

has applies_to_payment_method => (
    is        => 'rw',
    predicate => '_has_applies_to_payment_method',
    json_ld   => 'appliesToPaymentMethod',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
