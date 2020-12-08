use utf8;

package SemanticWeb::Schema::MedicalRiskEstimator;

# ABSTRACT: Any rule set or interactive tool for estimating the risk of developing a complication or condition.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEntity /;


use MooX::JSON_LD 'MedicalRiskEstimator';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

Any rule set or interactive tool for estimating the risk of developing a
complication or condition.




=head1 ATTRIBUTES


=head2 C<estimates_risk_of>

C<estimatesRiskOf>

The condition, complication, or symptom whose risk is being estimated.


A estimates_risk_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=head2 C<_has_estimates_risk_of>

A predicate for the L</estimates_risk_of> attribute.

=cut

has estimates_risk_of => (
    is        => 'rw',
    predicate => '_has_estimates_risk_of',
    json_ld   => 'estimatesRiskOf',
);


=head2 C<included_risk_factor>

C<includedRiskFactor>

A modifiable or non-modifiable risk factor included in the calculation,
e.g. age, coexisting condition.


A included_risk_factor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalRiskFactor']>

=back

=head2 C<_has_included_risk_factor>

A predicate for the L</included_risk_factor> attribute.

=cut

has included_risk_factor => (
    is        => 'rw',
    predicate => '_has_included_risk_factor',
    json_ld   => 'includedRiskFactor',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEntity>

=cut

1;
