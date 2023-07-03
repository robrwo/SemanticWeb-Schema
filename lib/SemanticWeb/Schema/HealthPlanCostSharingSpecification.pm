use utf8;

package SemanticWeb::Schema::HealthPlanCostSharingSpecification;

# ABSTRACT: A description of costs to the patient under a given network or formulary.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'HealthPlanCostSharingSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

A description of costs to the patient under a given network or formulary.




=head1 ATTRIBUTES


=head2 C<health_plan_coinsurance_option>

C<healthPlanCoinsuranceOption>

Whether the coinsurance applies before or after deductible, etc. TODO: Is
this a closed set?


A health_plan_coinsurance_option should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_coinsurance_option>

A predicate for the L</health_plan_coinsurance_option> attribute.

=cut

has health_plan_coinsurance_option => (
    is        => 'rw',
    predicate => '_has_health_plan_coinsurance_option',
    json_ld   => 'healthPlanCoinsuranceOption',
);


=head2 C<health_plan_coinsurance_rate>

C<healthPlanCoinsuranceRate>

The rate of coinsurance expressed as a number between 0.0 and 1.0.


A health_plan_coinsurance_rate should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_health_plan_coinsurance_rate>

A predicate for the L</health_plan_coinsurance_rate> attribute.

=cut

has health_plan_coinsurance_rate => (
    is        => 'rw',
    predicate => '_has_health_plan_coinsurance_rate',
    json_ld   => 'healthPlanCoinsuranceRate',
);


=head2 C<health_plan_copay>

C<healthPlanCopay>

The copay amount.


A health_plan_copay should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=head2 C<_has_health_plan_copay>

A predicate for the L</health_plan_copay> attribute.

=cut

has health_plan_copay => (
    is        => 'rw',
    predicate => '_has_health_plan_copay',
    json_ld   => 'healthPlanCopay',
);


=head2 C<health_plan_copay_option>

C<healthPlanCopayOption>

Whether the copay is before or after deductible, etc. TODO: Is this a
closed set?


A health_plan_copay_option should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_copay_option>

A predicate for the L</health_plan_copay_option> attribute.

=cut

has health_plan_copay_option => (
    is        => 'rw',
    predicate => '_has_health_plan_copay_option',
    json_ld   => 'healthPlanCopayOption',
);


=head2 C<health_plan_pharmacy_category>

C<healthPlanPharmacyCategory>

The category or type of pharmacy associated with this cost sharing.


A health_plan_pharmacy_category should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_pharmacy_category>

A predicate for the L</health_plan_pharmacy_category> attribute.

=cut

has health_plan_pharmacy_category => (
    is        => 'rw',
    predicate => '_has_health_plan_pharmacy_category',
    json_ld   => 'healthPlanPharmacyCategory',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
