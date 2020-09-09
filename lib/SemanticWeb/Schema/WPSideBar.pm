use utf8;

package SemanticWeb::Schema::WPSideBar;

# ABSTRACT: A sidebar section of the page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use MooX::JSON_LD 'WPSideBar';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

A sidebar section of the page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPageElement>

=cut

1;
