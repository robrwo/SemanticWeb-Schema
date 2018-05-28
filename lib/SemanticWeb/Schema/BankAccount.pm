package SemanticWeb::Schema::BankAccount;

# ABSTRACT: A product or service offered by a bank whereby one may deposit

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A product or service offered by a bank whereby one may deposit, withdraw or
transfer money and in some cases be paid interest.




=cut


around json_ld_type => sub { return 'BankAccount' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
