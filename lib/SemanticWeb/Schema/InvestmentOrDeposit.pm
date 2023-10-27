use utf8;

package SemanticWeb::Schema::InvestmentOrDeposit;

# ABSTRACT: A type of financial product that typically requires the client to transfer funds to a financial service in return for potential beneficial financial return.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'InvestmentOrDeposit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A type of financial product that typically requires the client to transfer
funds to a financial service in return for potential beneficial financial
return.




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




=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
