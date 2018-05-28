package SemanticWeb::Schema::ReserveAction;

# ABSTRACT: <p>Reserving a concrete object

use Moo;

extends qw/ SemanticWeb::Schema::PlanAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>Reserving a concrete object.</p> <p>Related actions:</p> <ul> <li><a
class="localLink"
href="http://schema.org/ScheduleAction">ScheduleAction</a></a>: Unlike
ScheduleAction, ReserveAction reserves concrete objects (e.g. a table, a
hotel) towards a time slot / spatial allocation.</li> </ul> 

=end html




=cut


around json_ld_type => sub { return 'ReserveAction' };

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
