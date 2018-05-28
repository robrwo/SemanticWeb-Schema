package SemanticWeb::Schema::CurrencyConversionService;

# ABSTRACT: A service to convert funds from one currency to another currency.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service to convert funds from one currency to another currency.




=cut


around json_ld_type => sub { return 'CurrencyConversionService' };

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
