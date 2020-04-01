use utf8;

package SemanticWeb::Schema::ResumeAction;

# ABSTRACT: The act of resuming a device or application which was formerly paused (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use MooX::JSON_LD 'ResumeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

The act of resuming a device or application which was formerly paused (e.g.
resume music playback or resume a timer).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::ControlAction>

=cut

1;
