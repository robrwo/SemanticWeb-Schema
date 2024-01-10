use utf8;

package SemanticWeb::Schema::torque;

# ABSTRACT: The torque (turning force) of the vehicle's engine

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'torque';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The torque (turning force) of the vehicle's engine.

Typical unit code(s): NU for newton metre (N m), F17 for pound-force per foot, or F48 for pound-force per inch

=over

=item *

Note 1: You can link to information about how the given value has been determined (e.g. reference RPM) using the [[valueReference]] property.


=item *

Note 2: You can use [[minValue]] and [[maxValue]] to indicate ranges.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
