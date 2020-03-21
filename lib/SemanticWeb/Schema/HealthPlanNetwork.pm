use utf8;

package SemanticWeb::Schema::HealthPlanNetwork;

# ABSTRACT: A US-style health insurance plan network.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'HealthPlanNetwork';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.1';

=encoding utf8

=head1 DESCRIPTION

A US-style health insurance plan network.




=head1 ATTRIBUTES


=head2 C<health_plan_cost_sharing>

C<healthPlanCostSharing>

Whether The costs to the patient for services under this network or
formulary.


A health_plan_cost_sharing should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_health_plan_cost_sharing>

A predicate for the L</health_plan_cost_sharing> attribute.

=cut

has health_plan_cost_sharing => (
    is        => 'rw',
    predicate => '_has_health_plan_cost_sharing',
    json_ld   => 'healthPlanCostSharing',
);


=head2 C<health_plan_network_id>

C<healthPlanNetworkId>

Name or unique ID of network. (Networks are often reused across different
insurance plans).


A health_plan_network_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_network_id>

A predicate for the L</health_plan_network_id> attribute.

=cut

has health_plan_network_id => (
    is        => 'rw',
    predicate => '_has_health_plan_network_id',
    json_ld   => 'healthPlanNetworkId',
);


=head2 C<health_plan_network_tier>

C<healthPlanNetworkTier>

The tier(s) for this network.


A health_plan_network_tier should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_health_plan_network_tier>

A predicate for the L</health_plan_network_tier> attribute.

=cut

has health_plan_network_tier => (
    is        => 'rw',
    predicate => '_has_health_plan_network_tier',
    json_ld   => 'healthPlanNetworkTier',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
