use utf8;

package SemanticWeb::Schema::SiteNavigationElement;

# ABSTRACT: A navigation element of the page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use MooX::JSON_LD 'SiteNavigationElement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.2';

=encoding utf8

=head1 DESCRIPTION

A navigation element of the page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPageElement>

=cut

1;
