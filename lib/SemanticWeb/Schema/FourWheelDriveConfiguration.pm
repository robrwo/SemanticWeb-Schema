use utf8;

package SemanticWeb::Schema::FourWheelDriveConfiguration;

# ABSTRACT: Four-wheel drive is a transmission layout where the engine primarily drives two wheels with a part-time four-wheel drive capability.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FourWheelDriveConfiguration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Four-wheel drive is a transmission layout where the engine primarily drives
two wheels with a part-time four-wheel drive capability.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
