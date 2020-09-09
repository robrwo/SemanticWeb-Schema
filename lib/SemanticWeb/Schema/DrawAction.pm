use utf8;

package SemanticWeb::Schema::DrawAction;

# ABSTRACT: The act of producing a visual/graphical representation of an object

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use MooX::JSON_LD 'DrawAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of producing a visual/graphical representation of an object,
typically with a pen/pencil and paper as instruments.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
