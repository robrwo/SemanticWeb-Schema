use utf8;

package SemanticWeb::Schema::CheckOutAction;

# ABSTRACT: The act of an agent communicating (service provider

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'CheckOutAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

The act of an agent communicating (service provider, social media, etc)
their departure of a previously reserved service (e.g. flight check in) or
place (e.g. hotel).<br/><br/> Related actions:<br/><br/> <ul> <li><a
class="localLink" href="http://schema.org/CheckInAction">CheckInAction</a>:
The antonym of CheckOutAction.</li> <li><a class="localLink"
href="http://schema.org/DepartAction">DepartAction</a>: Unlike
DepartAction, CheckOutAction implies that the agent is informing/confirming
the end of a previously reserved service.</li> <li><a class="localLink"
href="http://schema.org/CancelAction">CancelAction</a>: Unlike
CancelAction, CheckOutAction implies that the agent is informing/confirming
the end of a previously reserved service.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
