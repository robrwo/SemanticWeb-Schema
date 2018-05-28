package SemanticWeb::Schema::ExerciseAction;

# ABSTRACT: The act of participating in exertive activity for the purposes of improving health and fitness.

use Moo;

extends qw/ SemanticWeb::Schema::PlayAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of participating in exertive activity for the purposes of improving
health and fitness.




=head1 ATTRIBUTES


=head2 C<course>



A sub property of location. The course where this action was taken.


A course should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has course => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'course',
    json_ld_serializer => \&_serialize_course,
);

sub _serialize_course { $_[0]->_serializer('course') }


=head2 C<distance>



The distance travelled, e.g. exercising or travelling.


A distance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=back

=cut

has distance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'distance',
    json_ld_serializer => \&_serialize_distance,
);

sub _serialize_distance { $_[0]->_serializer('distance') }


=head2 C<exercise_course>

C<exerciseCourse>

A sub property of location. The course where this action was taken.


A exercise_course should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has exercise_course => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'exerciseCourse',
    json_ld_serializer => \&_serialize_exercise_course,
);

sub _serialize_exercise_course { $_[0]->_serializer('exercise_course') }


=head2 C<from_location>

C<fromLocation>

A sub property of location. The original location of the object or the
agent before the action.


A from_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has from_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'fromLocation',
    json_ld_serializer => \&_serialize_from_location,
);

sub _serialize_from_location { $_[0]->_serializer('from_location') }


=head2 C<opponent>



A sub property of participant. The opponent on this action.


A opponent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has opponent => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'opponent',
    json_ld_serializer => \&_serialize_opponent,
);

sub _serialize_opponent { $_[0]->_serializer('opponent') }


=head2 C<sports_activity_location>

C<sportsActivityLocation>

A sub property of location. The sports activity location where this action
occurred.


A sports_activity_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SportsActivityLocation']>

=back

=cut

has sports_activity_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sportsActivityLocation',
    json_ld_serializer => \&_serialize_sports_activity_location,
);

sub _serialize_sports_activity_location { $_[0]->_serializer('sports_activity_location') }


=head2 C<sports_event>

C<sportsEvent>

A sub property of location. The sports event where this action occurred.


A sports_event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SportsEvent']>

=back

=cut

has sports_event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sportsEvent',
    json_ld_serializer => \&_serialize_sports_event,
);

sub _serialize_sports_event { $_[0]->_serializer('sports_event') }


=head2 C<sports_team>

C<sportsTeam>

A sub property of participant. The sports team that participated on this
action.


A sports_team should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SportsTeam']>

=back

=cut

has sports_team => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sportsTeam',
    json_ld_serializer => \&_serialize_sports_team,
);

sub _serialize_sports_team { $_[0]->_serializer('sports_team') }


=head2 C<to_location>

C<toLocation>

A sub property of location. The final location of the object or the agent
after the action.


A to_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has to_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'toLocation',
    json_ld_serializer => \&_serialize_to_location,
);

sub _serialize_to_location { $_[0]->_serializer('to_location') }




around json_ld_type => sub { return 'ExerciseAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'course' => \&_serialize_course,
       'distance' => \&_serialize_distance,
       'exerciseCourse' => \&_serialize_exercise_course,
       'fromLocation' => \&_serialize_from_location,
       'opponent' => \&_serialize_opponent,
       'sportsActivityLocation' => \&_serialize_sports_activity_location,
       'sportsEvent' => \&_serialize_sports_event,
       'sportsTeam' => \&_serialize_sports_team,
       'toLocation' => \&_serialize_to_location,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PlayAction>

=cut

1;
