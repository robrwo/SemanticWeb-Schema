use utf8;

package SemanticWeb::Schema::CancelAction;

# ABSTRACT: The act of asserting that a future event/action is no longer going to happen

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use MooX::JSON_LD 'CancelAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of asserting that a future event/action is no longer going to happen.

Related actions:

=over

=item *

L<SemanticWeb::Schema::ConfirmAction>: The antonym of CancelAction.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
