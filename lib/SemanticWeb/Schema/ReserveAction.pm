use utf8;

package SemanticWeb::Schema::ReserveAction;

# ABSTRACT: Reserving a concrete object

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use MooX::JSON_LD 'ReserveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

Reserving a concrete object.\n\nRelated actions:\n\n*
[[ScheduleAction]]</a>: Unlike ScheduleAction, ReserveAction reserves
concrete objects (e.g. a table, a hotel) towards a time slot / spatial
allocation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
