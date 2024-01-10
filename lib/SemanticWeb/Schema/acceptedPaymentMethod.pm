use utf8;

package SemanticWeb::Schema::acceptedPaymentMethod;

# ABSTRACT: The payment method(s) accepted by seller for this offer.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acceptedPaymentMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The payment method(s) accepted by seller for this offer.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
