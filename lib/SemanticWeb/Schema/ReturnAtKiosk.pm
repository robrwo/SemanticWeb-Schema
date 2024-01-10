use utf8;

package SemanticWeb::Schema::ReturnAtKiosk;

# ABSTRACT: Specifies that product returns must be made at a kiosk.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReturnAtKiosk';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that product returns must be made at a kiosk.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
