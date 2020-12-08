use utf8;

package SemanticWeb::Schema::InvestmentFund;

# ABSTRACT: A company or fund that gathers capital from a number of investors to create a pool of money that is then re-invested into stocks

use Moo;

extends qw/ SemanticWeb::Schema::InvestmentOrDeposit /;


use MooX::JSON_LD 'InvestmentFund';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

A company or fund that gathers capital from a number of investors to create
a pool of money that is then re-invested into stocks, bonds and other
assets.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InvestmentOrDeposit>

=cut

1;
