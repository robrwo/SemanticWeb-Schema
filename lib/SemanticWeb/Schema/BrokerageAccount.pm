use utf8;

package SemanticWeb::Schema::BrokerageAccount;

# ABSTRACT: An account that allows an investor to deposit funds and place investment orders with a licensed broker or brokerage firm.

use Moo;

extends qw/ SemanticWeb::Schema::InvestmentOrDeposit /;


use MooX::JSON_LD 'BrokerageAccount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

An account that allows an investor to deposit funds and place investment
orders with a licensed broker or brokerage firm.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InvestmentOrDeposit>

=cut

1;
