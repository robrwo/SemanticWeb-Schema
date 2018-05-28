package LDF::Schema::DepositAccount;

# ABSTRACT: A type of Bank Account with a main purpose of depositing funds to gain interest or other benefits.

use Moo;

extends qw/ LDF::Schema::InvestmentOrDeposit LDF::Schema::BankAccount /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A type of Bank Account with a main purpose of depositing funds to gain
interest or other benefits.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DepositAccount' }



=head1 SEE ALSO



L<LDF::Schema::BankAccount>

=cut

1;
