package SemanticWeb::Schema::PlanAction;

# ABSTRACT: The act of planning the execution of an event/task/action/reservation/plan to a future date.

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of planning the execution of an event/task/action/reservation/plan
to a future date.




=head1 ATTRIBUTES


=head2 C<scheduled_time>

C<scheduledTime>

The time the object is scheduled to.


A scheduled_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has scheduled_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'scheduledTime',
    json_ld_serializer => \&_serialize_scheduled_time,
);

sub _serialize_scheduled_time { $_[0]->_serializer('scheduled_time') }




around json_ld_type => sub { return 'PlanAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'scheduledTime' => \&_serialize_scheduled_time,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
