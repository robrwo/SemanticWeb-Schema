package LDF::Schema::ScheduleAction;

# ABSTRACT: <p>Scheduling future actions

use Moo;

extends qw/ LDF::Schema::PlanAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>Scheduling future actions, events, or tasks.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/ReserveAction">ReserveAction</a>: Unlike
ReserveAction, ScheduleAction allocates future actions (e.g. an event, a
task, etc) towards a time slot / spatial allocation.</li> </ul> 

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ScheduleAction' }



=head1 SEE ALSO



L<LDF::Schema::PlanAction>

=cut

1;
