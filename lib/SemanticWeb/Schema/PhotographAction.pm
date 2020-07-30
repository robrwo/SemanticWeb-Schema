use utf8;

package SemanticWeb::Schema::PhotographAction;

# ABSTRACT: The act of capturing still images of objects using a camera.

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use MooX::JSON_LD 'PhotographAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of capturing still images of objects using a camera.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
