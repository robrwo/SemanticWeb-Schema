use utf8;

package SemanticWeb::Schema::steeringPosition;

# ABSTRACT: The position of the steering wheel or similar device (mostly for cars).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'steeringPosition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The position of the steering wheel or similar device (mostly for cars).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
