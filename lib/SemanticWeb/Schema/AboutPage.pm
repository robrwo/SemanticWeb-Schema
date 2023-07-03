use utf8;

package SemanticWeb::Schema::AboutPage;

# ABSTRACT: Web page type: About page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'AboutPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

Web page type: About page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
