use utf8;

package SemanticWeb::Schema::EventMovedOnline;

# ABSTRACT: Indicates that the event was changed to allow online participation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EventMovedOnline';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that the event was changed to allow online participation. See [[eventAttendanceMode]] for specifics of whether it is now fully or partially online.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
