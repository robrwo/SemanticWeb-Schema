use utf8;

package SemanticWeb::Schema::paymentMethod;

# ABSTRACT: The name of the credit card or other method of payment for the order.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'paymentMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The name of the credit card or other method of payment for the order.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
