use utf8;

package SemanticWeb::Schema::checkoutPageURLTemplate;

# ABSTRACT: A URL template (RFC 6570) for a checkout page for an offer

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'checkoutPageURLTemplate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A URL template (RFC 6570) for a checkout page for an offer. This approach
allows merchants to specify a URL for online checkout of the offered
product, by interpolating parameters such as the logged in user ID, product
ID, quantity, discount code etc. Parameter naming and standardization are
not specified here.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
