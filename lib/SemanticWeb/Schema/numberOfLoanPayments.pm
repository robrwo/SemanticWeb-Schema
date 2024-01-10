use utf8;

package SemanticWeb::Schema::numberOfLoanPayments;

# ABSTRACT: The number of payments contractually required at origination to repay the loan

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfLoanPayments';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of payments contractually required at origination to repay the
loan. For monthly paying loans this is the number of months from the
contractual first payment date to the maturity date.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
