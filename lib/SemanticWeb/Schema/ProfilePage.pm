use utf8;

package SemanticWeb::Schema::ProfilePage;

# ABSTRACT: Web page type: Profile page.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'ProfilePage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Web page type: Profile page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
