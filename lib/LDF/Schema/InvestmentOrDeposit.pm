package LDF::Schema::InvestmentOrDeposit;

# ABSTRACT: A type of financial product that typically requires the client to transfer funds to a financial service in return for potential beneficial financial return.

use Moo;

extends qw/ LDF::Schema::FinancialProduct /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A type of financial product that typically requires the client to transfer
funds to a financial service in return for potential beneficial financial
return.




=head1 ATTRIBUTES


=head2 C<amount>



The amount of money.


A amount should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['LDF::Schema::MonetaryAmount']>

=back

=cut

has amount => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'InvestmentOrDeposit' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { amount => 'amount' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::FinancialProduct>

=cut

1;
