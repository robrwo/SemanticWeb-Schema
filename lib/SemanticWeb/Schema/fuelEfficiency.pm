use utf8;

package SemanticWeb::Schema::fuelEfficiency;

# ABSTRACT: The distance traveled per unit of fuel used; most commonly miles per gallon (mpg) or kilometers per liter (km/L)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'fuelEfficiency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The distance traveled per unit of fuel used; most commonly miles per gallon (mpg) or kilometers per liter (km/L).

=over

=item *

Note 1: There are unfortunately no standard unit codes for miles per gallon or kilometers per liter. Use [[unitText]] to indicate the unit of measurement, e.g. mpg or km/L.


=item *

Note 2: There are two ways of indicating the fuel consumption, [[fuelConsumption]] (e.g. 8 liters per 100 km) and [[fuelEfficiency]] (e.g. 30 miles per gallon). They are reciprocal.


=item *

Note 3: Often, the absolute value is useful only when related to driving speed ("at 80 km/h") or usage pattern ("city traffic"). You can use [[valueReference]] to link the value for the fuel economy to another value.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
