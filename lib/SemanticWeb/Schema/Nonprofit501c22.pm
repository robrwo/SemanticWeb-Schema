use utf8;

package SemanticWeb::Schema::Nonprofit501c22;

# ABSTRACT: Nonprofit501c22: Non-profit type referring to Withdrawal Liability Payment Funds.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c22';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c22: Non-profit type referring to Withdrawal Liability Payment
Funds.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
