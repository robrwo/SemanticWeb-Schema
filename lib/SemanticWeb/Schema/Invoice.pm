use utf8;

package SemanticWeb::Schema::Invoice;

# ABSTRACT: A statement of the money due for goods or services; a bill.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Invoice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

A statement of the money due for goods or services; a bill.




=head1 ATTRIBUTES


=head2 C<account_id>

C<accountId>

The identifier for the account the payment will be applied to.


A account_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has account_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'accountId',
);


=head2 C<billing_period>

C<billingPeriod>

The time interval used to compute the invoice.


A billing_period should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has billing_period => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'billingPeriod',
);


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
);


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=back

=cut

has category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'category',
);


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
);


=head2 C<customer>



Party placing the order or paying the invoice.


A customer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has customer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'customer',
);


=head2 C<minimum_payment_due>

C<minimumPaymentDue>

The minimum payment required at this time.


A minimum_payment_due should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=cut

has minimum_payment_due => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'minimumPaymentDue',
);


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
);


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
);


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
);


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
);


=head2 C<payment_status>

C<paymentStatus>

The status of payment; whether the invoice has been paid or not.


A payment_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PaymentStatusType']>

=item C<Str>

=back

=cut

has payment_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentStatus',
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
);


=head2 C<references_order>

C<referencesOrder>

The Order(s) related to this Invoice. One or more Orders may be combined
into a single Invoice.


A references_order should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Order']>

=back

=cut

has references_order => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'referencesOrder',
);


=head2 C<scheduled_payment_date>

C<scheduledPaymentDate>

The date the invoice is scheduled to be paid.


A scheduled_payment_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has scheduled_payment_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'scheduledPaymentDate',
);


=head2 C<total_payment_due>

C<totalPaymentDue>

The total amount due.


A total_payment_due should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has total_payment_due => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'totalPaymentDue',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
