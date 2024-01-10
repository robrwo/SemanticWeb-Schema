use utf8;

package SemanticWeb::Schema::earlyPrepaymentPenalty;

# ABSTRACT: The amount to be paid as a penalty in the event of early payment of the loan.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'earlyPrepaymentPenalty';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount to be paid as a penalty in the event of early payment of the
loan.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
