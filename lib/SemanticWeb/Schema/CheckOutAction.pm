use utf8;

package SemanticWeb::Schema::CheckOutAction;

# ABSTRACT: The act of an agent communicating (service provider

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'CheckOutAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of an agent communicating (service provider, social media, etc)
their departure of a previously reserved service (e.g. flight check in) or
place (e.g. hotel).\n\nRelated actions:\n\n* [[CheckInAction]]: The antonym
of CheckOutAction.\n* [[DepartAction]]: Unlike DepartAction, CheckOutAction
implies that the agent is informing/confirming the end of a previously
reserved service.\n* [[CancelAction]]: Unlike CancelAction, CheckOutAction
implies that the agent is informing/confirming the end of a previously
reserved service.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
