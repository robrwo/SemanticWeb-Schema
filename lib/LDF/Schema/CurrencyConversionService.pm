package LDF::Schema::CurrencyConversionService;

# ABSTRACT: A service to convert funds from one currency to another currency.

use Moo;

extends qw/ LDF::Schema::FinancialProduct /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service to convert funds from one currency to another currency.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CurrencyConversionService' }



=head1 SEE ALSO



L<LDF::Schema::FinancialProduct>

=cut

1;
