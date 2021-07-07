use utf8;

package SemanticWeb::Schema::UnRegisterAction;

# ABSTRACT: The act of un-registering from a service

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'UnRegisterAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of un-registering from a service.

Related actions:

=over

=item *

L<SemanticWeb::Schema::RegisterAction>: antonym of UnRegisterAction.


=item *

L<SemanticWeb::Schema::LeaveAction>: Unlike LeaveAction, UnRegisterAction implies that you are unregistering from a service you werer previously registered, rather than leaving a team/group of people.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
