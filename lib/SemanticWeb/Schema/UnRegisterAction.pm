use utf8;

package SemanticWeb::Schema::UnRegisterAction;

# ABSTRACT: The act of un-registering from a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'UnRegisterAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

The act of un-registering from a service.\n\nRelated actions:\n\n*
[[RegisterAction]]: antonym of UnRegisterAction.\n* [[LeaveAction]]: Unlike
LeaveAction, UnRegisterAction implies that you are unregistering from a
service you werer previously registered, rather than leaving a team/group
of people.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
