use utf8;

package SemanticWeb::Schema::MedicalObservationalStudy;

# ABSTRACT: An observational study is a type of medical study that attempts to infer the possible effect of a treatment through observation of a cohort of subjects over a period of time

use Moo;

extends qw/ SemanticWeb::Schema::MedicalStudy /;


use MooX::JSON_LD 'MedicalObservationalStudy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

An observational study is a type of medical study that attempts to infer
the possible effect of a treatment through observation of a cohort of
subjects over a period of time. In an observational study, the assignment
of subjects into treatment groups versus control groups is outside the
control of the investigator. This is in contrast with controlled studies,
such as the randomized controlled trials represented by MedicalTrial, where
each subject is randomly assigned to a treatment group or a control group
before the start of the treatment.




=head1 ATTRIBUTES


=head2 C<study_design>

C<studyDesign>

Specifics about the observational study design (enumerated).


A study_design should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalObservationalStudyDesign']>

=back

=cut

has study_design => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'studyDesign',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalStudy>

=cut

1;
