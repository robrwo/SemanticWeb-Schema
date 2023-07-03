use utf8;

package SemanticWeb::Schema::CollectionPage;

# ABSTRACT: Web page type: Collection page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'CollectionPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

Web page type: Collection page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
