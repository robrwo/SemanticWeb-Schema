package SemanticWeb::Schema::Invoice;

# ABSTRACT: A statement of the money due for goods or services; a bill.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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
    json_ld_serializer => \&_serialize_account_id,
);

sub _serialize_account_id { $_[0]->_serializer('account_id') }


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
    json_ld_serializer => \&_serialize_billing_period,
);

sub _serialize_billing_period { $_[0]->_serializer('billing_period') }


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


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'category',
    json_ld_serializer => \&_serialize_category,
);

sub _serialize_category { $_[0]->_serializer('category') }


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


=head2 C<minimum_payment_due>

C<minimumPaymentDue>

The minimum payment required at this time.


A minimum_payment_due should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has minimum_payment_due => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'minimumPaymentDue',
    json_ld_serializer => \&_serialize_minimum_payment_due,
);

sub _serialize_minimum_payment_due { $_[0]->_serializer('minimum_payment_due') }


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


=head2 C<payment_status>

C<paymentStatus>

The status of payment; whether the invoice has been paid or not.


A payment_status should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::PaymentStatusType']>

=back

=cut

has payment_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'paymentStatus',
    json_ld_serializer => \&_serialize_payment_status,
);

sub _serialize_payment_status { $_[0]->_serializer('payment_status') }


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
    json_ld_serializer => \&_serialize_provider,
);

sub _serialize_provider { $_[0]->_serializer('provider') }


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
    json_ld_serializer => \&_serialize_references_order,
);

sub _serialize_references_order { $_[0]->_serializer('references_order') }


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
    json_ld_serializer => \&_serialize_scheduled_payment_date,
);

sub _serialize_scheduled_payment_date { $_[0]->_serializer('scheduled_payment_date') }


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
    json_ld_serializer => \&_serialize_total_payment_due,
);

sub _serialize_total_payment_due { $_[0]->_serializer('total_payment_due') }




around json_ld_type => sub { return 'Invoice' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'accountId' => \&_serialize_account_id,
       'billingPeriod' => \&_serialize_billing_period,
       'broker' => \&_serialize_broker,
       'category' => \&_serialize_category,
       'confirmationNumber' => \&_serialize_confirmation_number,
       'customer' => \&_serialize_customer,
       'minimumPaymentDue' => \&_serialize_minimum_payment_due,
       'paymentDue' => \&_serialize_payment_due,
       'paymentDueDate' => \&_serialize_payment_due_date,
       'paymentMethod' => \&_serialize_payment_method,
       'paymentMethodId' => \&_serialize_payment_method_id,
       'paymentStatus' => \&_serialize_payment_status,
       'provider' => \&_serialize_provider,
       'referencesOrder' => \&_serialize_references_order,
       'scheduledPaymentDate' => \&_serialize_scheduled_payment_date,
       'totalPaymentDue' => \&_serialize_total_payment_due,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
