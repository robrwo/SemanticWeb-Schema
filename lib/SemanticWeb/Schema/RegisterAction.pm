use utf8;

package SemanticWeb::Schema::RegisterAction;

# ABSTRACT: The act of registering to be a user of a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'RegisterAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of registering to be a user of a service, product or web page.

Related actions:

=over

=item *

L<SemanticWeb::Schema::JoinAction>: Unlike JoinAction, RegisterAction implies you are registering to be a user of a service, I<not> a group/team of people.


=item *

[FollowAction]]: Unlike FollowAction, RegisterAction doesn't imply that the agent is expecting to poll for updates from the object.


=item *

L<SemanticWeb::Schema::SubscribeAction>: Unlike SubscribeAction, RegisterAction doesn't imply that the agent is expecting updates from the object.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
