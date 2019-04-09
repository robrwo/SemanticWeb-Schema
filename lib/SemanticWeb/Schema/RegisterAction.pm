use utf8;

package SemanticWeb::Schema::RegisterAction;

# ABSTRACT: The act of registering to be a user of a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'RegisterAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

The act of registering to be a user of a service, product or web
page.<br/><br/> Related actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/JoinAction">JoinAction</a>: Unlike JoinAction,
RegisterAction implies you are registering to be a user of a service,
<em>not</em> a group/team of people.</li> <li>[FollowAction]]: Unlike
FollowAction, RegisterAction doesn't imply that the agent is expecting to
poll for updates from the object.</li> <li><a class="localLink"
href="http://schema.org/SubscribeAction">SubscribeAction</a>: Unlike
SubscribeAction, RegisterAction doesn't imply that the agent is expecting
updates from the object.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
