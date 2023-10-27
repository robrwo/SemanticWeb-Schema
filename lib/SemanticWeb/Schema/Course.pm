use utf8;

package SemanticWeb::Schema::Course;

# ABSTRACT: A description of an educational course which may be offered as distinct instances which take place at different times or take place at different locations

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::LearningResource /;


use MooX::JSON_LD 'Course';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A description of an educational course which may be offered as distinct
instances which take place at different times or take place at different
locations, or be offered through different media or modes of study. An
educational course is a sequence of one or more educational events and/or
creative works which aims to build knowledge, competence or ability of
learners.




=head1 ATTRIBUTES


=head2 C<available_language>

C<availableLanguage>

A language someone may use with or at the item, service or place. Please use one of the language codes from the L<IETF BCP 47 standard|http://tools.ietf.org/html/bcp47>. See also [[inLanguage]].

A available_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=head2 C<_has_available_language>

A predicate for the L</available_language> attribute.

=cut

has available_language => (
    is        => 'rw',
    predicate => '_has_available_language',
    json_ld   => 'availableLanguage',
);


=head2 C<course_code>

C<courseCode>

The identifier for the L<SemanticWeb::Schema::Course> used by the course [[provider]] (e.g. CS101 or 6.001).

A course_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_course_code>

A predicate for the L</course_code> attribute.

=cut

has course_code => (
    is        => 'rw',
    predicate => '_has_course_code',
    json_ld   => 'courseCode',
);


=head2 C<course_prerequisites>

C<coursePrerequisites>

Requirements for taking the Course. May be completion of another L<SemanticWeb::Schema::Course> or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using L<SemanticWeb::Schema::AlignmentObject>.

A course_prerequisites should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AlignmentObject']>

=item C<InstanceOf['SemanticWeb::Schema::Course']>

=item C<Str>

=back

=head2 C<_has_course_prerequisites>

A predicate for the L</course_prerequisites> attribute.

=cut

has course_prerequisites => (
    is        => 'rw',
    predicate => '_has_course_prerequisites',
    json_ld   => 'coursePrerequisites',
);


=head2 C<educational_credential_awarded>

C<educationalCredentialAwarded>

A description of the qualification, award, certificate, diploma or other
educational credential awarded as a consequence of successful completion of
this course or program.


A educational_credential_awarded should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=head2 C<_has_educational_credential_awarded>

A predicate for the L</educational_credential_awarded> attribute.

=cut

has educational_credential_awarded => (
    is        => 'rw',
    predicate => '_has_educational_credential_awarded',
    json_ld   => 'educationalCredentialAwarded',
);


=head2 C<financial_aid_eligible>

C<financialAidEligible>

A financial aid type or program which students may use to pay for tuition
or fees associated with the program.


A financial_aid_eligible should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_financial_aid_eligible>

A predicate for the L</financial_aid_eligible> attribute.

=cut

has financial_aid_eligible => (
    is        => 'rw',
    predicate => '_has_financial_aid_eligible',
    json_ld   => 'financialAidEligible',
);


=head2 C<has_course_instance>

C<hasCourseInstance>

An offering of the course at a specific time and place or through specific
media or mode of study or to a specific section of students.


A has_course_instance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CourseInstance']>

=back

=head2 C<_has_has_course_instance>

A predicate for the L</has_course_instance> attribute.

=cut

has has_course_instance => (
    is        => 'rw',
    predicate => '_has_has_course_instance',
    json_ld   => 'hasCourseInstance',
);


=head2 C<number_of_credits>

C<numberOfCredits>

The number of credits or units awarded by a Course or required to complete
an EducationalOccupationalProgram.


A number_of_credits should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=back

=head2 C<_has_number_of_credits>

A predicate for the L</number_of_credits> attribute.

=cut

has number_of_credits => (
    is        => 'rw',
    predicate => '_has_number_of_credits',
    json_ld   => 'numberOfCredits',
);


=head2 C<occupational_credential_awarded>

C<occupationalCredentialAwarded>

A description of the qualification, award, certificate, diploma or other
occupational credential awarded as a consequence of successful completion
of this course or program.


A occupational_credential_awarded should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EducationalOccupationalCredential']>

=item C<Str>

=back

=head2 C<_has_occupational_credential_awarded>

A predicate for the L</occupational_credential_awarded> attribute.

=cut

has occupational_credential_awarded => (
    is        => 'rw',
    predicate => '_has_occupational_credential_awarded',
    json_ld   => 'occupationalCredentialAwarded',
);


=head2 C<syllabus_sections>

C<syllabusSections>

Indicates (typically several) Syllabus entities that lay out what each
section of the overall course will cover.


A syllabus_sections should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Syllabus']>

=back

=head2 C<_has_syllabus_sections>

A predicate for the L</syllabus_sections> attribute.

=cut

has syllabus_sections => (
    is        => 'rw',
    predicate => '_has_syllabus_sections',
    json_ld   => 'syllabusSections',
);


=head2 C<total_historical_enrollment>

C<totalHistoricalEnrollment>

The total number of students that have enrolled in the history of the
course.


A total_historical_enrollment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_total_historical_enrollment>

A predicate for the L</total_historical_enrollment> attribute.

=cut

has total_historical_enrollment => (
    is        => 'rw',
    predicate => '_has_total_historical_enrollment',
    json_ld   => 'totalHistoricalEnrollment',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::LearningResource>

=cut

1;
