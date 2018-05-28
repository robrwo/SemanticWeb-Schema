package SemanticWeb::Schema::ExerciseAction;

# ABSTRACT: The act of participating in exertive activity for the purposes of improving health and fitness.

use Moo;

extends qw/ SemanticWeb::Schema::PlayAction /;


use curry;
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
);


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
);


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
);


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
);


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
);


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
);


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
);


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
);


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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ExerciseAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'course' => $self->curry::_serializer('course'),
       'distance' => $self->curry::_serializer('distance'),
       'exerciseCourse' => $self->curry::_serializer('exercise_course'),
       'fromLocation' => $self->curry::_serializer('from_location'),
       'opponent' => $self->curry::_serializer('opponent'),
       'sportsActivityLocation' => $self->curry::_serializer('sports_activity_location'),
       'sportsEvent' => $self->curry::_serializer('sports_event'),
       'sportsTeam' => $self->curry::_serializer('sports_team'),
       'toLocation' => $self->curry::_serializer('to_location'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::PlayAction>

=cut

1;
