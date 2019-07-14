use utf8;

package SemanticWeb::Schema::ExercisePlan;

# ABSTRACT: Fitness-related activity designed for a specific health-related purpose

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::PhysicalActivity /;


use MooX::JSON_LD 'ExercisePlan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.2';

=encoding utf8

=head1 DESCRIPTION

Fitness-related activity designed for a specific health-related purpose,
including defined exercise routines as well as activity prescribed by a
clinician.




=head1 ATTRIBUTES


=head2 C<activity_duration>

C<activityDuration>

Length of time to engage in the activity.


A activity_duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has activity_duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'activityDuration',
);


=head2 C<activity_frequency>

C<activityFrequency>

How often one should engage in the activity.


A activity_frequency should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=cut

has activity_frequency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'activityFrequency',
);


=head2 C<additional_variable>

C<additionalVariable>

Any additional component of the exercise prescription that may need to be
articulated to the patient. This may include the order of exercises, the
number of repetitions of movement, quantitative distance, progressions over
time, etc.


A additional_variable should be one of the following types:

=over

=item C<Str>

=back

=cut

has additional_variable => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalVariable',
);


=head2 C<exercise_type>

C<exerciseType>

Type(s) of exercise or activity, such as strength training, flexibility
training, aerobics, cardiac rehabilitation, etc.


A exercise_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has exercise_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'exerciseType',
);


=head2 C<intensity>



Quantitative measure gauging the degree of force involved in the exercise,
for example, heartbeats per minute. May include the velocity of the
movement.


A intensity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=cut

has intensity => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'intensity',
);


=head2 C<repetitions>



Number of times one should repeat the activity.


A repetitions should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Num>

=back

=cut

has repetitions => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'repetitions',
);


=head2 C<rest_periods>

C<restPeriods>

How often one should break from the activity.


A rest_periods should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Str>

=back

=cut

has rest_periods => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'restPeriods',
);


=head2 C<workload>



Quantitative measure of the physiologic output of the exercise; also
referred to as energy expenditure.


A workload should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Energy']>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has workload => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'workload',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PhysicalActivity>

=cut

1;
