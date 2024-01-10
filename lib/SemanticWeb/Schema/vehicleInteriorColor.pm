use utf8;

package SemanticWeb::Schema::vehicleInteriorColor;

# ABSTRACT: The color or color combination of the interior of the vehicle.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleInteriorColor';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The color or color combination of the interior of the vehicle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
