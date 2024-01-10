use utf8;

package SemanticWeb::Schema::FrontWheelDriveConfiguration;

# ABSTRACT: Front-wheel drive is a transmission layout where the engine drives the front wheels.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FrontWheelDriveConfiguration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Front-wheel drive is a transmission layout where the engine drives the
front wheels.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
