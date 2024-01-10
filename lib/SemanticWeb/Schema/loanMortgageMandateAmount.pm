use utf8;

package SemanticWeb::Schema::loanMortgageMandateAmount;

# ABSTRACT: Amount of mortgage mandate that can be converted into a proper mortgage at a later stage.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'loanMortgageMandateAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Amount of mortgage mandate that can be converted into a proper mortgage at
a later stage.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
