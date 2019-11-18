use utf8;

package SemanticWeb::Schema::CheckInAction;

# ABSTRACT: The act of an agent communicating (service provider

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'CheckInAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The act of an agent communicating (service provider, social media, etc)
their arrival by registering/confirming for a previously reserved service
(e.g. flight check in) or at a place (e.g. hotel), possibly resulting in a
result (boarding pass, etc).<br/><br/> Related actions:<br/><br/> <ul>
<li><a class="localLink"
href="http://schema.org/CheckOutAction">CheckOutAction</a>: The antonym of
CheckInAction.</li> <li><a class="localLink"
href="http://schema.org/ArriveAction">ArriveAction</a>: Unlike
ArriveAction, CheckInAction implies that the agent is informing/confirming
the start of a previously reserved service.</li> <li><a class="localLink"
href="http://schema.org/ConfirmAction">ConfirmAction</a>: Unlike
ConfirmAction, CheckInAction implies that the agent is informing/confirming
the <em>start</em> of a previously reserved service rather than its
validity/existence.</li> </ul> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
