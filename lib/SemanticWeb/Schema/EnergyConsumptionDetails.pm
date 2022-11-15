use utf8;

package SemanticWeb::Schema::EnergyConsumptionDetails;

# ABSTRACT: EnergyConsumptionDetails represents information related to the energy efficiency of a product that consumes energy

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'EnergyConsumptionDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

EnergyConsumptionDetails represents information related to the energy
efficiency of a product that consumes energy. The information that can be
provided is based on international regulations such as for example [EU
directive 2017/1369](https://eur-lex.europa.eu/eli/reg/2017/1369/oj) for
energy labeling and the [Energy labeling
rule](https://www.ftc.gov/enforcement/rules/rulemaking-regulatory-reform-pr
oceedings/energy-water-use-labeling-consumer) under the Energy Policy and
Conservation Act (EPCA) in the US.




=head1 ATTRIBUTES


=head2 C<energy_efficiency_scale_max>

C<energyEfficiencyScaleMax>

Specifies the most energy efficient class on the regulated EU energy
consumption scale for the product category a product belongs to. For
example, energy consumption for televisions placed on the market after
January 1, 2020 is scaled from D to A+++.


A energy_efficiency_scale_max should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EUEnergyEfficiencyEnumeration']>

=back

=head2 C<_has_energy_efficiency_scale_max>

A predicate for the L</energy_efficiency_scale_max> attribute.

=cut

has energy_efficiency_scale_max => (
    is        => 'rw',
    predicate => '_has_energy_efficiency_scale_max',
    json_ld   => 'energyEfficiencyScaleMax',
);


=head2 C<energy_efficiency_scale_min>

C<energyEfficiencyScaleMin>

Specifies the least energy efficient class on the regulated EU energy
consumption scale for the product category a product belongs to. For
example, energy consumption for televisions placed on the market after
January 1, 2020 is scaled from D to A+++.


A energy_efficiency_scale_min should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EUEnergyEfficiencyEnumeration']>

=back

=head2 C<_has_energy_efficiency_scale_min>

A predicate for the L</energy_efficiency_scale_min> attribute.

=cut

has energy_efficiency_scale_min => (
    is        => 'rw',
    predicate => '_has_energy_efficiency_scale_min',
    json_ld   => 'energyEfficiencyScaleMin',
);


=head2 C<has_energy_efficiency_category>

C<hasEnergyEfficiencyCategory>

Defines the energy efficiency Category (which could be either a rating out
of range of values or a yes/no certification) for a product according to an
international energy efficiency standard.


A has_energy_efficiency_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EnergyEfficiencyEnumeration']>

=back

=head2 C<_has_has_energy_efficiency_category>

A predicate for the L</has_energy_efficiency_category> attribute.

=cut

has has_energy_efficiency_category => (
    is        => 'rw',
    predicate => '_has_has_energy_efficiency_category',
    json_ld   => 'hasEnergyEfficiencyCategory',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
