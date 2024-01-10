use utf8;

package SemanticWeb::Schema::StoreCreditRefund;

# ABSTRACT: Specifies that the customer receives a store credit as refund when returning a product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'StoreCreditRefund';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that the customer receives a store credit as refund when
returning a product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
