use utf8;

package SemanticWeb::Schema::ActivateAction;

# ABSTRACT: The act of starting or activating a device or application (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use MooX::JSON_LD 'ActivateAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

The act of starting or activating a device or application (e.g. starting a
timer or turning on a flashlight).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ControlAction>

=cut

1;
