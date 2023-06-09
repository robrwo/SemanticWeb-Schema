use utf8;

package SemanticWeb::Schema::EnergyStarEnergyEfficiencyEnumeration;

# ABSTRACT: Used to indicate whether a product is EnergyStar certified.

use Moo;

extends qw/ SemanticWeb::Schema::EnergyEfficiencyEnumeration /;


use MooX::JSON_LD 'EnergyStarEnergyEfficiencyEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

Used to indicate whether a product is EnergyStar certified.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::EnergyEfficiencyEnumeration>

=cut

1;
