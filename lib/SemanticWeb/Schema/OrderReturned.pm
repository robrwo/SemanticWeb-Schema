use utf8;

package SemanticWeb::Schema::OrderReturned;

# ABSTRACT: OrderStatus representing that an order has been returned.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OrderReturned';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

OrderStatus representing that an order has been returned.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
