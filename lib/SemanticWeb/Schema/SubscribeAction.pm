use utf8;

package SemanticWeb::Schema::SubscribeAction;

# ABSTRACT: The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates pushed to

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'SubscribeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

The act of forming a personal connection with someone/something (object)
unidirectionally/asymmetrically to get updates pushed to.\n\nRelated
actions:\n\n* [[FollowAction]]: Unlike FollowAction, SubscribeAction
implies that the subscriber acts as a passive agent being
constantly/actively pushed for updates.\n* [[RegisterAction]]: Unlike
RegisterAction, SubscribeAction implies that the agent is interested in
continuing receiving updates from the object.\n* [[JoinAction]]: Unlike
JoinAction, SubscribeAction implies that the agent is interested in
continuing receiving updates from the object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
