use utf8;

package SemanticWeb::Schema::AllWheelDriveConfiguration;

# ABSTRACT: All-wheel Drive is a transmission layout where the engine drives all four wheels.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'AllWheelDriveConfiguration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

All-wheel Drive is a transmission layout where the engine drives all four
wheels.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
