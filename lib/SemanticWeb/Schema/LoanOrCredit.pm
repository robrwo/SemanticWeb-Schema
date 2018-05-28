package SemanticWeb::Schema::LoanOrCredit;

# ABSTRACT: A financial product for the loaning of an amount of money under agreed terms and charges.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'LoanOrCredit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A financial product for the loaning of an amount of money under agreed
terms and charges.




=head1 ATTRIBUTES


=head2 C<amount>



The amount of money.


A amount should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has amount => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'amount',
    json_ld_serializer => \&_serialize_amount,
);

sub _serialize_amount { $_[0]->_serializer('amount') }


=head2 C<loan_term>

C<loanTerm>

The duration of the loan or credit agreement.


A loan_term should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has loan_term => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loanTerm',
    json_ld_serializer => \&_serialize_loan_term,
);

sub _serialize_loan_term { $_[0]->_serializer('loan_term') }


=head2 C<required_collateral>

C<requiredCollateral>

Assets required to secure loan or credit repayments. It may take form of
third party pledge, goods, financial instruments (cash, securities, etc.)


A required_collateral should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=cut

has required_collateral => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredCollateral',
    json_ld_serializer => \&_serialize_required_collateral,
);

sub _serialize_required_collateral { $_[0]->_serializer('required_collateral') }




=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
