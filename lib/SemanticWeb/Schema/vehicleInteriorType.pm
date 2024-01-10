use utf8;

package SemanticWeb::Schema::vehicleInteriorType;

# ABSTRACT: The type or material of the interior of the vehicle (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleInteriorType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type or material of the interior of the vehicle (e.g. synthetic fabric,
leather, wood, etc.). While most interior types are characterized by the
material used, an interior type can also be based on vehicle usage or
target audience.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
