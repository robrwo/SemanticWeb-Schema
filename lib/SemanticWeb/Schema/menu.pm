use utf8;

package SemanticWeb::Schema::menu;

# ABSTRACT: Either the actual menu as a structured representation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'menu';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Either the actual menu as a structured representation, as text, or a URL of
the menu.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
