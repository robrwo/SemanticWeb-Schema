use utf8;

package SemanticWeb::Schema::artMedium;

# ABSTRACT: The material used

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'artMedium';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The material used. (E.g. Oil, Watercolour, Acrylic, Linoprint, Marble,
Cyanotype, Digital, Lithograph, DryPoint, Intaglio, Pastel, Woodcut,
Pencil, Mixed Media, etc.)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
