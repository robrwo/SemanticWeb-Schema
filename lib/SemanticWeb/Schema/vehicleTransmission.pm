use utf8;

package SemanticWeb::Schema::vehicleTransmission;

# ABSTRACT: The type of component used for transmitting the power from a rotating power source to the wheels or other relevant component(s) ("gearbox" for cars).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'vehicleTransmission';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of component used for transmitting the power from a rotating power
source to the wheels or other relevant component(s) ("gearbox" for cars).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
