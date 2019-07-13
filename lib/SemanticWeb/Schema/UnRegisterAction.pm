use utf8;

package SemanticWeb::Schema::UnRegisterAction;

# ABSTRACT: The act of un-registering from a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'UnRegisterAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

The act of un-registering from a service.<br/><br/> Related
actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: antonym of
UnRegisterAction.</li> <li><a class="localLink"
href="http://schema.org/LeaveAction">LeaveAction</a>: Unlike LeaveAction,
UnRegisterAction implies that you are unregistering from a service you
werer previously registered, rather than leaving a team/group of
people.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
