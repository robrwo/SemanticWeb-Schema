use utf8;

package SemanticWeb::Schema::CancelAction;

# ABSTRACT: The act of asserting that a future event/action is no longer going to happen

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use MooX::JSON_LD 'CancelAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

The act of asserting that a future event/action is no longer going to
happen.\n\nRelated actions:\n\n* [[ConfirmAction]]: The antonym of
CancelAction.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
