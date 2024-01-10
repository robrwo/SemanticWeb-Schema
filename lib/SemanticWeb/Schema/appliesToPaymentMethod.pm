use utf8;

package SemanticWeb::Schema::appliesToPaymentMethod;

# ABSTRACT: The payment method(s) to which the payment charge specification applies.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'appliesToPaymentMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The payment method(s) to which the payment charge specification applies.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
