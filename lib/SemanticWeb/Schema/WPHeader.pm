use utf8;

package SemanticWeb::Schema::WPHeader;

# ABSTRACT: The header section of the page.

use Moo;

extends qw/ SemanticWeb::Schema::WebPageElement /;


use MooX::JSON_LD 'WPHeader';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

The header section of the page.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::WebPageElement>

=cut

1;
