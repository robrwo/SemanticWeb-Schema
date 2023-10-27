use utf8;

package SemanticWeb::Schema::MedicalConditionStage;

# ABSTRACT: A stage of a medical condition

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'MedicalConditionStage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

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

=head2 C<_has_stage_as_number>

A predicate for the L</stage_as_number> attribute.

=cut

has stage_as_number => (
    is        => 'rw',
    predicate => '_has_stage_as_number',
    json_ld   => 'stageAsNumber',
);


=head2 C<sub_stage_suffix>

C<subStageSuffix>

The substage, e.g. 'a' for Stage IIIa.


A sub_stage_suffix should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_sub_stage_suffix>

A predicate for the L</sub_stage_suffix> attribute.

=cut

has sub_stage_suffix => (
    is        => 'rw',
    predicate => '_has_sub_stage_suffix',
    json_ld   => 'subStageSuffix',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;
