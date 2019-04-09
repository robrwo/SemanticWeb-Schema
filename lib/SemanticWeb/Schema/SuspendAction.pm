use utf8;

package SemanticWeb::Schema::SuspendAction;

# ABSTRACT: The act of momentarily pausing a device or application (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use MooX::JSON_LD 'SuspendAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.1.0';

=encoding utf8

=head1 DESCRIPTION

The act of momentarily pausing a device or application (e.g. pause music
playback or pause a timer).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ControlAction>

=cut

1;
