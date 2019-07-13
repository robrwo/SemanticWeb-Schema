use utf8;

package SemanticWeb::Schema::MedicalGuideline;

# ABSTRACT: Any recommendation made by a standard society (e

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalGuideline';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

Any recommendation made by a standard society (e.g. ACC/AHA) or consensus
statement that denotes how to diagnose and treat a particular condition.
Note: this type should be used to tag the actual guideline recommendation;
if the guideline recommendation occurs in a larger scholarly article, use
MedicalScholarlyArticle to tag the overall article, not this type. Note
also: the organization making the recommendation should be captured in the
recognizingAuthority base property of MedicalEntity.




=head1 ATTRIBUTES


=head2 C<evidence_level>

C<evidenceLevel>

Strength of evidence of the data used to formulate the guideline
(enumerated).


A evidence_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEvidenceLevel']>

=back

=cut

has evidence_level => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'evidenceLevel',
);


=head2 C<evidence_origin>

C<evidenceOrigin>

Source of the data used to formulate the guidance, e.g. RCT, consensus
opinion, etc.


A evidence_origin should be one of the following types:

=over

=item C<Str>

=back

=cut

has evidence_origin => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'evidenceOrigin',
);


=head2 C<guideline_date>

C<guidelineDate>

Date on which this guideline's recommendation was made.


A guideline_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has guideline_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'guidelineDate',
);


=head2 C<guideline_subject>

C<guidelineSubject>

The medical conditions, treatments, etc. that are the subject of the
guideline.


A guideline_subject should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=cut

has guideline_subject => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'guidelineSubject',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
