use utf8;

package SemanticWeb::Schema::ContactPage;

# ABSTRACT: Web page type: Contact page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'ContactPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

Web page type: Contact page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
