use utf8;

package SemanticWeb::Schema::discount;

# ABSTRACT: Any discount applied (to an Order).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'discount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any discount applied (to an Order).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
