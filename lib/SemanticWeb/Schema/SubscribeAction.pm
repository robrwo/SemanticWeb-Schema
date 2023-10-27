use utf8;

package SemanticWeb::Schema::SubscribeAction;

# ABSTRACT: The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates pushed to

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'SubscribeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates pushed to.

Related actions:

=over

=item *

L<SemanticWeb::Schema::FollowAction>: Unlike FollowAction, SubscribeAction implies that the subscriber acts as a passive agent being constantly/actively pushed for updates.


=item *

L<SemanticWeb::Schema::RegisterAction>: Unlike RegisterAction, SubscribeAction implies that the agent is interested in continuing receiving updates from the object.


=item *

L<SemanticWeb::Schema::JoinAction>: Unlike JoinAction, SubscribeAction implies that the agent is interested in continuing receiving updates from the object.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
