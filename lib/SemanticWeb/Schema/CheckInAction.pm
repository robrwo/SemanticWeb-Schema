use utf8;

package SemanticWeb::Schema::CheckInAction;

# ABSTRACT: The act of an agent communicating (service provider

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'CheckInAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

The act of an agent communicating (service provider, social media, etc) their arrival by registering/confirming for a previously reserved service (e.g. flight check in) or at a place (e.g. hotel), possibly resulting in a result (boarding pass, etc).

Related actions:

=over

=item *

L<SemanticWeb::Schema::CheckOutAction>: The antonym of CheckInAction.


=item *

L<SemanticWeb::Schema::ArriveAction>: Unlike ArriveAction, CheckInAction implies that the agent is informing/confirming the start of a previously reserved service.


=item *

L<SemanticWeb::Schema::ConfirmAction>: Unlike ConfirmAction, CheckInAction implies that the agent is informing/confirming the I<start> of a previously reserved service rather than its validity/existence.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
