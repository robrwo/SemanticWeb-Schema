use utf8;

package SemanticWeb::Schema::RegisterAction;

# ABSTRACT: The act of registering to be a user of a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'RegisterAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of registering to be a user of a service, product or web
page.\n\nRelated actions:\n\n* [[JoinAction]]: Unlike JoinAction,
RegisterAction implies you are registering to be a user of a service, *not*
a group/team of people.\n* [FollowAction]]: Unlike FollowAction,
RegisterAction doesn't imply that the agent is expecting to poll for
updates from the object.\n* [[SubscribeAction]]: Unlike SubscribeAction,
RegisterAction doesn't imply that the agent is expecting updates from the
object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
