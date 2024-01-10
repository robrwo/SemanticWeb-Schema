use utf8;

package SemanticWeb::Schema::FullRefund;

# ABSTRACT: Specifies that a refund can be done in the full amount the customer paid for the product.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FullRefund';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies that a refund can be done in the full amount the customer paid
for the product.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
