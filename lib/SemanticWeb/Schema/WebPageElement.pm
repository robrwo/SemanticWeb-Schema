use utf8;

package SemanticWeb::Schema::WebPageElement;

# ABSTRACT: A web page element

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebPageElement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

A web page element, like a table or an image.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
