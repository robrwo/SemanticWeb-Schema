use utf8;

package SemanticWeb::Schema::enginePower;

# ABSTRACT: The power of the vehicle's engine

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'enginePower';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The power of the vehicle's engine.
    Typical unit code(s): KWT for kilowatt, BHP for brake horsepower, N12 for metric horsepower (PS, with 1 PS = 735,49875 W)

=over

=item *

Note 1: There are many different ways of measuring an engine's power. For an overview, see  L<http://en.wikipedia.org/wiki/Horsepower#Engine_power_test_codes|http://en.wikipedia.org/wiki/Horsepower#Engine_power_test_codes>.


=item *

Note 2: You can link to information about how the given value has been determined using the [[valueReference]] property.


=item *

Note 3: You can use [[minValue]] and [[maxValue]] to indicate ranges.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
