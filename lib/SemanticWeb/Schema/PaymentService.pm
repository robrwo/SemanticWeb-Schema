package SemanticWeb::Schema::PaymentService;

# ABSTRACT: A Service to transfer funds from a person or organization to a beneficiary person or organization.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A Service to transfer funds from a person or organization to a beneficiary
person or organization.




=cut


around json_ld_type => sub { return 'PaymentService' };

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
