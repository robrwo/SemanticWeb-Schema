use utf8;

package SemanticWeb::Schema::energyEfficiencyScaleMax;

# ABSTRACT: Specifies the most energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'energyEfficiencyScaleMax';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies the most energy efficient class on the regulated EU energy
consumption scale for the product category a product belongs to. For
example, energy consumption for televisions placed on the market after
January 1, 2020 is scaled from D to A+++.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
