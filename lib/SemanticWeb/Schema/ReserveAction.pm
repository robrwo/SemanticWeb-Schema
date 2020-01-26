use utf8;

package SemanticWeb::Schema::ReserveAction;

# ABSTRACT: Reserving a concrete object

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use MooX::JSON_LD 'ReserveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Reserving a concrete object.<br/><br/> Related actions:<br/><br/> <ul>
<li><a class="localLink"
href="http://schema.org/ScheduleAction">ScheduleAction</a></a>: Unlike
ScheduleAction, ReserveAction reserves concrete objects (e.g. a table, a
hotel) towards a time slot / spatial allocation.</li> </ul> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
