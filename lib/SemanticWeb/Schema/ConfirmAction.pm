use utf8;

package SemanticWeb::Schema::ConfirmAction;

# ABSTRACT: The act of notifying someone that a future event/action is going to happen as expected

use Moo;

extends qw/ SemanticWeb::Schema::InformAction /;


use MooX::JSON_LD 'ConfirmAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

The act of notifying someone that a future event/action is going to happen
as expected.\n\nRelated actions:\n\n* [[CancelAction]]: The antonym of
ConfirmAction.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InformAction>

=cut

1;
