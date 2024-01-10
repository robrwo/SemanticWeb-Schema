use utf8;

package SemanticWeb::Schema::accelerationTime;

# ABSTRACT: The time needed to accelerate the vehicle from a given start velocity to a given target velocity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accelerationTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The time needed to accelerate the vehicle from a given start velocity to a given target velocity.

Typical unit code(s): SEC for seconds

=over

=item *

Note: There are unfortunately no standard unit codes for seconds/0..100 km/h or seconds/0..60 mph. Simply use "SEC" for seconds and indicate the velocities in the [[name]] of the L<SemanticWeb::Schema::QuantitativeValue>, or use [[valueReference]] with a L<SemanticWeb::Schema::QuantitativeValue> of 0..60 mph or 0..100 km/h to specify the reference speeds.


=back



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
