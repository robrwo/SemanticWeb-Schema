use utf8;

package SemanticWeb::Schema::MedicalStudy;

# ABSTRACT: A medical study is an umbrella type covering all kinds of research studies relating to human medicine or health

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalStudy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A medical study is an umbrella type covering all kinds of research studies
relating to human medicine or health, including observational studies and
interventional trials and registries, randomized, controlled or not. When
the specific type of study is known, use one of the extensions of this
type, such as MedicalTrial or MedicalObservationalStudy. Also, note that
this type should be used to mark up data that describes the study itself;
to tag an article that publishes the results of a study, use
MedicalScholarlyArticle. Note: use the code property of MedicalEntity to
store study IDs, e.g. clinicaltrials.gov ID.




=head1 ATTRIBUTES


=head2 C<health_condition>

C<healthCondition>

Specifying the health condition(s) of a patient, medical study, or other
target audience.


A health_condition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalCondition']>

=back

=head2 C<_has_health_condition>

A predicate for the L</health_condition> attribute.

=cut

has health_condition => (
    is        => 'rw',
    predicate => '_has_health_condition',
    json_ld   => 'healthCondition',
);


=head2 C<sponsor>



A person or organization that supports a thing through a pledge, promise,
or financial contribution. e.g. a sponsor of a Medical Study or a corporate
sponsor of an event.


A sponsor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_sponsor>

A predicate for the L</sponsor> attribute.

=cut

has sponsor => (
    is        => 'rw',
    predicate => '_has_sponsor',
    json_ld   => 'sponsor',
);


=head2 C<status>



The status of the study (enumerated).


A status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EventStatusType']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalStudyStatus']>

=item C<Str>

=back

=head2 C<_has_status>

A predicate for the L</status> attribute.

=cut

has status => (
    is        => 'rw',
    predicate => '_has_status',
    json_ld   => 'status',
);


=head2 C<study_location>

C<studyLocation>

The location in which the study is taking/took place.


A study_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=head2 C<_has_study_location>

A predicate for the L</study_location> attribute.

=cut

has study_location => (
    is        => 'rw',
    predicate => '_has_study_location',
    json_ld   => 'studyLocation',
);


=head2 C<study_subject>

C<studySubject>

A subject of the study, i.e. one of the medical conditions, therapies,
devices, drugs, etc. investigated by the study.


A study_subject should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=head2 C<_has_study_subject>

A predicate for the L</study_subject> attribute.

=cut

has study_subject => (
    is        => 'rw',
    predicate => '_has_study_subject',
    json_ld   => 'studySubject',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
