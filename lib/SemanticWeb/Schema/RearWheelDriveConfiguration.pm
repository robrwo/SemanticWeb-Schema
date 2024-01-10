use utf8;

package SemanticWeb::Schema::RearWheelDriveConfiguration;

# ABSTRACT: Real-wheel drive is a transmission layout where the engine drives the rear wheels.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'RearWheelDriveConfiguration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Real-wheel drive is a transmission layout where the engine drives the rear
wheels.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
