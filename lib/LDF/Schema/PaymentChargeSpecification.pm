package LDF::Schema::PaymentChargeSpecification;

# ABSTRACT: The costs of settling the payment using a particular payment method.

use Moo;

extends qw/ LDF::Schema::PriceSpecification /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The costs of settling the payment using a particular payment method.




=head1 ATTRIBUTES


=head2 C<applies_to_delivery_method>

C<appliesToDeliveryMethod>

The delivery method(s) to which the delivery charge or payment charge
specification applies.


A applies_to_delivery_method should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DeliveryMethod']>

=back

=cut

has applies_to_delivery_method => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<applies_to_payment_method>

C<appliesToPaymentMethod>

The payment method(s) to which the payment charge specification applies.


A applies_to_payment_method should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::PaymentMethod']>

=back

=cut

has applies_to_payment_method => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PaymentChargeSpecification' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { appliesToDeliveryMethod => 'applies_to_delivery_method' },
      { appliesToPaymentMethod => 'applies_to_payment_method' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::PriceSpecification>

=cut

1;
