use utf8;

package SemanticWeb::Schema::inventoryLevel;

# ABSTRACT: The current approximate inventory level for the item or items.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'inventoryLevel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The current approximate inventory level for the item or items.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
