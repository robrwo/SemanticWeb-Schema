use utf8;

package SemanticWeb::Schema::RepaymentSpecification;

# ABSTRACT: A structured value representing repayment.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'RepaymentSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

A structured value representing repayment.




=head1 ATTRIBUTES


=head2 C<down_payment>

C<downPayment>

a type of payment made in cash during the onset of the purchase of an
expensive good/service. The payment typically represents only a percentage
of the full purchase price.


A down_payment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=cut

has down_payment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'downPayment',
);


=head2 C<early_prepayment_penalty>

C<earlyPrepaymentPenalty>

The amount to be paid as a penalty in the event of early payment of the
loan.


A early_prepayment_penalty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has early_prepayment_penalty => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'earlyPrepaymentPenalty',
);


=head2 C<loan_payment_amount>

C<loanPaymentAmount>

The amount of money to pay in a single payment.


A loan_payment_amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has loan_payment_amount => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loanPaymentAmount',
);


=head2 C<loan_payment_frequency>

C<loanPaymentFrequency>

Frequency of payments due, i.e. number of months between payments. This is
defined as a frequency, i.e. the reciprocal of a period of time.


A loan_payment_frequency should be one of the following types:

=over

=item C<Num>

=back

=cut

has loan_payment_frequency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loanPaymentFrequency',
);


=head2 C<number_of_loan_payments>

C<numberOfLoanPayments>

The number of payments contractually required at origination to repay the
loan. For monthly paying loans this is the number of months from the
contractual first payment date to the maturity date.


A number_of_loan_payments should be one of the following types:

=over

=item C<Num>

=back

=cut

has number_of_loan_payments => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfLoanPayments',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
