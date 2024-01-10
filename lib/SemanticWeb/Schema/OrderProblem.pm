use utf8;

package SemanticWeb::Schema::OrderProblem;

# ABSTRACT: OrderStatus representing that there is a problem with the order.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OrderProblem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

OrderStatus representing that there is a problem with the order.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
