use utf8;

package SemanticWeb::Schema::LoanOrCredit;

# ABSTRACT: A financial product for the loaning of an amount of money

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'LoanOrCredit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A financial product for the loaning of an amount of money, or line of
credit, under agreed terms and charges.




=head1 ATTRIBUTES


=head2 C<amount>



The amount of money.


A amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=head2 C<_has_amount>

A predicate for the L</amount> attribute.

=cut

has amount => (
    is        => 'rw',
    predicate => '_has_amount',
    json_ld   => 'amount',
);


=head2 C<currency>



The currency in which the monetary amount is expressed. Use standard
formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217)
e.g. "USD"; [Ticker
symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for
cryptocurrencies e.g. "BTC"; well known names for [Local Exchange Tradings
Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system)
(LETS) and other currency types e.g. "Ithaca HOUR".


A currency should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_currency>

A predicate for the L</currency> attribute.

=cut

has currency => (
    is        => 'rw',
    predicate => '_has_currency',
    json_ld   => 'currency',
);


=head2 C<grace_period>

C<gracePeriod>

The period of time after any due date that the borrower has to fulfil its
obligations before a default (failure to pay) is deemed to have occurred.


A grace_period should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_grace_period>

A predicate for the L</grace_period> attribute.

=cut

has grace_period => (
    is        => 'rw',
    predicate => '_has_grace_period',
    json_ld   => 'gracePeriod',
);


=head2 C<loan_repayment_form>

C<loanRepaymentForm>

A form of paying back money previously borrowed from a lender. Repayment
usually takes the form of periodic payments that normally include part
principal plus interest in each payment.


A loan_repayment_form should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RepaymentSpecification']>

=back

=head2 C<_has_loan_repayment_form>

A predicate for the L</loan_repayment_form> attribute.

=cut

has loan_repayment_form => (
    is        => 'rw',
    predicate => '_has_loan_repayment_form',
    json_ld   => 'loanRepaymentForm',
);


=head2 C<loan_term>

C<loanTerm>

The duration of the loan or credit agreement.


A loan_term should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_loan_term>

A predicate for the L</loan_term> attribute.

=cut

has loan_term => (
    is        => 'rw',
    predicate => '_has_loan_term',
    json_ld   => 'loanTerm',
);


=head2 C<loan_type>

C<loanType>

The type of a loan or credit.


A loan_type should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_loan_type>

A predicate for the L</loan_type> attribute.

=cut

has loan_type => (
    is        => 'rw',
    predicate => '_has_loan_type',
    json_ld   => 'loanType',
);


=head2 C<recourse_loan>

C<recourseLoan>

The only way you get the money back in the event of default is the
security. Recourse is where you still have the opportunity to go back to
the borrower for the rest of the money.


A recourse_loan should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_recourse_loan>

A predicate for the L</recourse_loan> attribute.

=cut

has recourse_loan => (
    is        => 'rw',
    predicate => '_has_recourse_loan',
    json_ld   => 'recourseLoan',
);


=head2 C<renegotiable_loan>

C<renegotiableLoan>

Whether the terms for payment of interest can be renegotiated during the
life of the loan.


A renegotiable_loan should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_renegotiable_loan>

A predicate for the L</renegotiable_loan> attribute.

=cut

has renegotiable_loan => (
    is        => 'rw',
    predicate => '_has_renegotiable_loan',
    json_ld   => 'renegotiableLoan',
);


=head2 C<required_collateral>

C<requiredCollateral>

Assets required to secure loan or credit repayments. It may take form of
third party pledge, goods, financial instruments (cash, securities, etc.)


A required_collateral should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_required_collateral>

A predicate for the L</required_collateral> attribute.

=cut

has required_collateral => (
    is        => 'rw',
    predicate => '_has_required_collateral',
    json_ld   => 'requiredCollateral',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
