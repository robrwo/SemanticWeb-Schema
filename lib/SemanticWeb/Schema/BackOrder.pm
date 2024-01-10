use utf8;

package SemanticWeb::Schema::BackOrder;

# ABSTRACT: Indicates that the item is available on back order.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'BackOrder';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that the item is available on back order.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
