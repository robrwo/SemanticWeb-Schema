use utf8;

package SemanticWeb::Schema::TakeAction;

# ABSTRACT: The act of gaining ownership of an object from an origin

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::TransferAction /;


use MooX::JSON_LD 'TakeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of gaining ownership of an object from an origin. Reciprocal of GiveAction.

Related actions:

=over

=item *

L<SemanticWeb::Schema::GiveAction>: The reciprocal of TakeAction.


=item *

L<SemanticWeb::Schema::ReceiveAction>: Unlike ReceiveAction, TakeAction implies that ownership has been transferred.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::TransferAction>

=cut

1;
