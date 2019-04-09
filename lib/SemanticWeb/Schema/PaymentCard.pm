use utf8;

package SemanticWeb::Schema::PaymentCard;

# ABSTRACT: A payment method using a credit

use Moo;

extends qw/ SemanticWeb::Schema::PaymentMethod SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'PaymentCard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.1';

=encoding utf8

=head1 DESCRIPTION

A payment method using a credit, debit, store or other card to associate
the payment with an account.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
