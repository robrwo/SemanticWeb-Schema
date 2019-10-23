use utf8;

package SemanticWeb::Schema::HealthPlanFormulary;

# ABSTRACT: For a given health insurance plan

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'HealthPlanFormulary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.0';

=encoding utf8

=head1 DESCRIPTION

For a given health insurance plan, the specification for costs and coverage
of prescription drugs.




=head1 ATTRIBUTES


=head2 C<health_plan_cost_sharing>

C<healthPlanCostSharing>

Whether The costs to the patient for services under this network or
formulary.


A health_plan_cost_sharing should be one of the following types:

=over

=item C<Bool>

=back

=cut

has health_plan_cost_sharing => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanCostSharing',
);


=head2 C<health_plan_drug_tier>

C<healthPlanDrugTier>

The tier(s) of drugs offered by this formulary or insurance plan.


A health_plan_drug_tier should be one of the following types:

=over

=item C<Str>

=back

=cut

has health_plan_drug_tier => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanDrugTier',
);


=head2 C<offers_prescription_by_mail>

C<offersPrescriptionByMail>

Whether prescriptions can be delivered by mail.


A offers_prescription_by_mail should be one of the following types:

=over

=item C<Bool>

=back

=cut

has offers_prescription_by_mail => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offersPrescriptionByMail',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
