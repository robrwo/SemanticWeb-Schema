use utf8;

package SemanticWeb::Schema::loanPaymentFrequency;

# ABSTRACT: Frequency of payments due, i

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'loanPaymentFrequency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Frequency of payments due, i.e. number of months between payments. This is
defined as a frequency, i.e. the reciprocal of a period of time.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
