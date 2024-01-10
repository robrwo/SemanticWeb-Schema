use utf8;

package SemanticWeb::Schema::hasEnergyConsumptionDetails;

# ABSTRACT: Defines the energy efficiency Category (also known as "class" or "rating") for a product according to an international energy efficiency standard.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasEnergyConsumptionDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines the energy efficiency Category (also known as "class" or "rating")
for a product according to an international energy efficiency standard.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
