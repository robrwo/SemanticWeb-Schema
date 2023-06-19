use utf8;

package SemanticWeb::Schema::MedicalRiskCalculator;

# ABSTRACT: A complex mathematical calculation requiring an online calculator

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalRiskEstimator /;


use MooX::JSON_LD 'MedicalRiskCalculator';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A complex mathematical calculation requiring an online calculator, used to
assess prognosis. Note: use the url property of Thing to record any URLs
for online calculators.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalRiskEstimator>

=cut

1;
