package SemanticWeb::Schema::PaymentCard;

# ABSTRACT: A payment method using a credit

use Moo;

extends qw/ SemanticWeb::Schema::PaymentMethod SemanticWeb::Schema::FinancialProduct /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A payment method using a credit, debit, store or other card to associate
the payment with an account.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PaymentCard' }



=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
