use utf8;

package SemanticWeb::Schema::ConfirmAction;

# ABSTRACT: The act of notifying someone that a future event/action is going to happen as expected

use Moo;

extends qw/ SemanticWeb::Schema::InformAction /;


use MooX::JSON_LD 'ConfirmAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of notifying someone that a future event/action is going to happen as expected.

Related actions:

=over

=item *

L<SemanticWeb::Schema::CancelAction>: The antonym of ConfirmAction.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InformAction>

=cut

1;
