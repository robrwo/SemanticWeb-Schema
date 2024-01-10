use utf8;

package SemanticWeb::Schema::fuelCapacity;

# ABSTRACT: The capacity of the fuel tank or in the case of electric cars

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'fuelCapacity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The capacity of the fuel tank or in the case of electric cars, the battery.
If there are multiple components for storage, this should indicate the
total of all storage of the same type. Typical unit code(s): LTR for
liters, GLL of US gallons, GLI for UK / imperial gallons, AMH for
ampere-hours (for electrical vehicles).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
