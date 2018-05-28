package SemanticWeb::Schema::ScheduleAction;

# ABSTRACT: <p>Scheduling future actions

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


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


around json_ld_type => sub { return 'ScheduleAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PlanAction>

=cut

1;
