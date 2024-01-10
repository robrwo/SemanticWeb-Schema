use utf8;

package SemanticWeb::Schema::monthlyMinimumRepaymentAmount;

# ABSTRACT: The minimum payment is the lowest amount of money that one is required to pay on a credit card statement each month.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'monthlyMinimumRepaymentAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The minimum payment is the lowest amount of money that one is required to
pay on a credit card statement each month.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
