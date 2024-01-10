use utf8;

package SemanticWeb::Schema::artist;

# ABSTRACT: The primary artist for a work in a medium other than pencils or digital line art--for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'artist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The primary artist for a work in a medium other than pencils or digital
line art--for example, if the primary artwork is done in watercolors or
digital paints.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
