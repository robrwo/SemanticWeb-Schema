use utf8;

package SemanticWeb::Schema::MortgageLoan;

# ABSTRACT: A loan in which property or real estate is used as collateral

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::LoanOrCredit /;


use MooX::JSON_LD 'MortgageLoan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A loan in which property or real estate is used as collateral. (A loan
securitized against some real estate.)




=head1 ATTRIBUTES


=head2 C<domiciled_mortgage>

C<domiciledMortgage>

Whether borrower is a resident of the jurisdiction where the property is
located.


A domiciled_mortgage should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_domiciled_mortgage>

A predicate for the L</domiciled_mortgage> attribute.

=cut

has domiciled_mortgage => (
    is        => 'rw',
    predicate => '_has_domiciled_mortgage',
    json_ld   => 'domiciledMortgage',
);


=head2 C<loan_mortgage_mandate_amount>

C<loanMortgageMandateAmount>

Amount of mortgage mandate that can be converted into a proper mortgage at
a later stage.


A loan_mortgage_mandate_amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=head2 C<_has_loan_mortgage_mandate_amount>

A predicate for the L</loan_mortgage_mandate_amount> attribute.

=cut

has loan_mortgage_mandate_amount => (
    is        => 'rw',
    predicate => '_has_loan_mortgage_mandate_amount',
    json_ld   => 'loanMortgageMandateAmount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LoanOrCredit>

=cut

1;
