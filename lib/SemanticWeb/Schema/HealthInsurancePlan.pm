use utf8;

package SemanticWeb::Schema::HealthInsurancePlan;

# ABSTRACT: A US-style health insurance plan

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'HealthInsurancePlan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A US-style health insurance plan, including PPOs, EPOs, and HMOs.




=head1 ATTRIBUTES


=head2 C<benefits_summary_url>

C<benefitsSummaryUrl>

The URL that goes directly to the summary of benefits and coverage for the
specific standard plan or plan variation.


A benefits_summary_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_benefits_summary_url>

A predicate for the L</benefits_summary_url> attribute.

=cut

has benefits_summary_url => (
    is        => 'rw',
    predicate => '_has_benefits_summary_url',
    json_ld   => 'benefitsSummaryUrl',
);


=head2 C<contact_point>

C<contactPoint>

A contact point for a person or organization.


A contact_point should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=head2 C<_has_contact_point>

A predicate for the L</contact_point> attribute.

=cut

has contact_point => (
    is        => 'rw',
    predicate => '_has_contact_point',
    json_ld   => 'contactPoint',
);


=head2 C<health_plan_drug_option>

C<healthPlanDrugOption>

TODO.


A health_plan_drug_option should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_drug_option>

A predicate for the L</health_plan_drug_option> attribute.

=cut

has health_plan_drug_option => (
    is        => 'rw',
    predicate => '_has_health_plan_drug_option',
    json_ld   => 'healthPlanDrugOption',
);


=head2 C<health_plan_drug_tier>

C<healthPlanDrugTier>

The tier(s) of drugs offered by this formulary or insurance plan.


A health_plan_drug_tier should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_drug_tier>

A predicate for the L</health_plan_drug_tier> attribute.

=cut

has health_plan_drug_tier => (
    is        => 'rw',
    predicate => '_has_health_plan_drug_tier',
    json_ld   => 'healthPlanDrugTier',
);


=head2 C<health_plan_id>

C<healthPlanId>

The 14-character, HIOS-generated Plan ID number. (Plan IDs must be unique,
even across different markets.)


A health_plan_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_id>

A predicate for the L</health_plan_id> attribute.

=cut

has health_plan_id => (
    is        => 'rw',
    predicate => '_has_health_plan_id',
    json_ld   => 'healthPlanId',
);


=head2 C<health_plan_marketing_url>

C<healthPlanMarketingUrl>

The URL that goes directly to the plan brochure for the specific standard
plan or plan variation.


A health_plan_marketing_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_marketing_url>

A predicate for the L</health_plan_marketing_url> attribute.

=cut

has health_plan_marketing_url => (
    is        => 'rw',
    predicate => '_has_health_plan_marketing_url',
    json_ld   => 'healthPlanMarketingUrl',
);


=head2 C<includes_health_plan_formulary>

C<includesHealthPlanFormulary>

Formularies covered by this plan.


A includes_health_plan_formulary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HealthPlanFormulary']>

=back

=head2 C<_has_includes_health_plan_formulary>

A predicate for the L</includes_health_plan_formulary> attribute.

=cut

has includes_health_plan_formulary => (
    is        => 'rw',
    predicate => '_has_includes_health_plan_formulary',
    json_ld   => 'includesHealthPlanFormulary',
);


=head2 C<includes_health_plan_network>

C<includesHealthPlanNetwork>

Networks covered by this plan.


A includes_health_plan_network should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HealthPlanNetwork']>

=back

=head2 C<_has_includes_health_plan_network>

A predicate for the L</includes_health_plan_network> attribute.

=cut

has includes_health_plan_network => (
    is        => 'rw',
    predicate => '_has_includes_health_plan_network',
    json_ld   => 'includesHealthPlanNetwork',
);


=head2 C<uses_health_plan_id_standard>

C<usesHealthPlanIdStandard>

The standard for interpreting the Plan ID. The preferred is "HIOS". See the
Centers for Medicare & Medicaid Services for more details.


A uses_health_plan_id_standard should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_uses_health_plan_id_standard>

A predicate for the L</uses_health_plan_id_standard> attribute.

=cut

has uses_health_plan_id_standard => (
    is        => 'rw',
    predicate => '_has_uses_health_plan_id_standard',
    json_ld   => 'usesHealthPlanIdStandard',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
