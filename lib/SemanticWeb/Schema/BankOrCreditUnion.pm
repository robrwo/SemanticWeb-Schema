use utf8;

package SemanticWeb::Schema::BankOrCreditUnion;

# ABSTRACT: Bank or credit union.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::FinancialService /;


use MooX::JSON_LD 'BankOrCreditUnion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

Bank or credit union.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialService>

=cut

1;
