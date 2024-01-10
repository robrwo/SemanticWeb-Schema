use utf8;

package SemanticWeb::Schema::DeactivateAction;

# ABSTRACT: The act of stopping or deactivating a device or application (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use MooX::JSON_LD 'DeactivateAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of stopping or deactivating a device or application (e.g. stopping
a timer or turning off a flashlight).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ControlAction>

=cut

1;
