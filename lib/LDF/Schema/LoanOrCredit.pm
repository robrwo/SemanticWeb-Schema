package LDF::Schema::LoanOrCredit;

# ABSTRACT: A financial product for the loaning of an amount of money under agreed terms and charges.

use Moo;

extends qw/ LDF::Schema::FinancialProduct /;


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

=item C<InstanceOf['LDF::Schema::MonetaryAmount']>

=back

=cut

has amount => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<loan_term>

C<loanTerm>

The duration of the loan or credit agreement.


A loan_term should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has loan_term => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<required_collateral>

C<requiredCollateral>

Assets required to secure loan or credit repayments. It may take form of
third party pledge, goods, financial instruments (cash, securities, etc.)


A required_collateral should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=item C<Str>

=back

=cut

has required_collateral => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LoanOrCredit' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { amount => 'amount' },
      { loanTerm => 'loan_term' },
      { requiredCollateral => 'required_collateral' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::FinancialProduct>

=cut

1;
