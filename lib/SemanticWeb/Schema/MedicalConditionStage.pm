use utf8;

package SemanticWeb::Schema::MedicalConditionStage;

# ABSTRACT: A stage of a medical condition

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'MedicalConditionStage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.6.0';

=encoding utf8

=head1 DESCRIPTION

A stage of a medical condition, such as 'Stage IIIa'.




=head1 ATTRIBUTES


=head2 C<stage_as_number>

C<stageAsNumber>

The stage represented as a number, e.g. 3.


A stage_as_number should be one of the following types:

=over

=item C<Num>

=back

=cut

has stage_as_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'stageAsNumber',
);


=head2 C<sub_stage_suffix>

C<subStageSuffix>

The substage, e.g. 'a' for Stage IIIa.


A sub_stage_suffix should be one of the following types:

=over

=item C<Str>

=back

=cut

has sub_stage_suffix => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subStageSuffix',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;
