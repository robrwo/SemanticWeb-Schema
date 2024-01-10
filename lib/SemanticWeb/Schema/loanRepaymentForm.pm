use utf8;

package SemanticWeb::Schema::loanRepaymentForm;

# ABSTRACT: A form of paying back money previously borrowed from a lender

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'loanRepaymentForm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A form of paying back money previously borrowed from a lender. Repayment
usually takes the form of periodic payments that normally include part
principal plus interest in each payment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
