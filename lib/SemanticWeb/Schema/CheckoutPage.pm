use utf8;

package SemanticWeb::Schema::CheckoutPage;

# ABSTRACT: Web page type: Checkout page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'CheckoutPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.1';

=encoding utf8

=head1 DESCRIPTION

Web page type: Checkout page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
