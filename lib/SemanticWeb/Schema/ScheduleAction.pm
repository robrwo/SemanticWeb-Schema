use utf8;

package SemanticWeb::Schema::ScheduleAction;

# ABSTRACT: Scheduling future actions, events, or tasks

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use MooX::JSON_LD 'ScheduleAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

Scheduling future actions, events, or tasks.

Related actions:

=over

=item *

L<SemanticWeb::Schema::ReserveAction>: Unlike ReserveAction, ScheduleAction allocates future actions (e.g. an event, a task, etc) towards a time slot / spatial allocation.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
