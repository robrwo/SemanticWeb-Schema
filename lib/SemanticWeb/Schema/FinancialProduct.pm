use utf8;

package SemanticWeb::Schema::FinancialProduct;

# ABSTRACT: A product provided to consumers and businesses by financial institutions such as banks

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'FinancialProduct';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A product provided to consumers and businesses by financial institutions
such as banks, insurance companies, brokerage firms, consumer finance
companies, and investment companies which comprise the financial services
industry.




=head1 ATTRIBUTES


=head2 C<annual_percentage_rate>

C<annualPercentageRate>

The annual rate that is charged for borrowing (or made by investing),
expressed as a single percentage number that represents the actual yearly
cost of funds over the term of a loan. This includes any fees or additional
costs associated with the transaction.


A annual_percentage_rate should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_annual_percentage_rate>

A predicate for the L</annual_percentage_rate> attribute.

=cut

has annual_percentage_rate => (
    is        => 'rw',
    predicate => '_has_annual_percentage_rate',
    json_ld   => 'annualPercentageRate',
);


=head2 C<fees_and_commissions_specification>

C<feesAndCommissionsSpecification>

Description of fees, commissions, and other terms applied either to a class
of financial product, or by a financial service organization.


A fees_and_commissions_specification should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_fees_and_commissions_specification>

A predicate for the L</fees_and_commissions_specification> attribute.

=cut

has fees_and_commissions_specification => (
    is        => 'rw',
    predicate => '_has_fees_and_commissions_specification',
    json_ld   => 'feesAndCommissionsSpecification',
);


=head2 C<interest_rate>

C<interestRate>

The interest rate, charged or paid, applicable to the financial product.
Note: This is different from the calculated annualPercentageRate.


A interest_rate should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=head2 C<_has_interest_rate>

A predicate for the L</interest_rate> attribute.

=cut

has interest_rate => (
    is        => 'rw',
    predicate => '_has_interest_rate',
    json_ld   => 'interestRate',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
