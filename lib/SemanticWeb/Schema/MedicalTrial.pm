use utf8;

package SemanticWeb::Schema::MedicalTrial;

# ABSTRACT: A medical trial is a type of medical study that uses a scientific process to compare the safety and efficacy of medical therapies or medical procedures

use Moo;

extends qw/ SemanticWeb::Schema::MedicalStudy /;


use MooX::JSON_LD 'MedicalTrial';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A medical trial is a type of medical study that uses a scientific process
to compare the safety and efficacy of medical therapies or medical
procedures. In general, medical trials are controlled and subjects are
allocated at random to the different treatment and/or control groups.




=head1 ATTRIBUTES


=head2 C<trial_design>

C<trialDesign>

Specifics about the trial design (enumerated).


A trial_design should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTrialDesign']>

=back

=head2 C<_has_trial_design>

A predicate for the L</trial_design> attribute.

=cut

has trial_design => (
    is        => 'rw',
    predicate => '_has_trial_design',
    json_ld   => 'trialDesign',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalStudy>

=cut

1;
