use utf8;

package SemanticWeb::Schema::loanPaymentAmount;

# ABSTRACT: The amount of money to pay in a single payment.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'loanPaymentAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount of money to pay in a single payment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
