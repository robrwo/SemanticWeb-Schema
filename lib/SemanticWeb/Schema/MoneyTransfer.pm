use utf8;

package SemanticWeb::Schema::MoneyTransfer;

# ABSTRACT: The act of transferring money from one place to another place

use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'MoneyTransfer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of transferring money from one place to another place. This may
occur electronically or physically.




=head1 ATTRIBUTES


=head2 C<amount>



The amount of money.


A amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=cut

has amount => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'amount',
);


=head2 C<beneficiary_bank>

C<beneficiaryBank>

A bank or bankâs branch, financial institution or international financial
institution operating the beneficiaryâs bank account or releasing funds
for the beneficiary


A beneficiary_bank should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BankOrCreditUnion']>

=item C<Str>

=back

=cut

has beneficiary_bank => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'beneficiaryBank',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
