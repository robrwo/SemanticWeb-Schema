use utf8;

package SemanticWeb::Schema::eventAttendanceMode;

# ABSTRACT: The eventAttendanceMode of an event indicates whether it occurs online

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eventAttendanceMode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The eventAttendanceMode of an event indicates whether it occurs online,
offline, or a mix.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
