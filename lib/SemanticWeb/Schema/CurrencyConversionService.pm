use utf8;

package SemanticWeb::Schema::CurrencyConversionService;

# ABSTRACT: A service to convert funds from one currency to another currency.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'CurrencyConversionService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A service to convert funds from one currency to another currency.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
