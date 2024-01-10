use utf8;

package SemanticWeb::Schema::fuelType;

# ABSTRACT: The type of fuel suitable for the engine or engines of the vehicle

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'fuelType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of fuel suitable for the engine or engines of the vehicle. If the
vehicle has only one engine, this property can be attached directly to the
vehicle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
