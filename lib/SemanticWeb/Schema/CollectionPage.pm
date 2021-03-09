use utf8;

package SemanticWeb::Schema::CollectionPage;

# ABSTRACT: Web page type: Collection page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'CollectionPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

Web page type: Collection page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
