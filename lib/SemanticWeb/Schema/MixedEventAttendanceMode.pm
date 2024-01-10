use utf8;

package SemanticWeb::Schema::MixedEventAttendanceMode;

# ABSTRACT: MixedEventAttendanceMode - an event that is conducted as a combination of both offline and online modes.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'MixedEventAttendanceMode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

MixedEventAttendanceMode - an event that is conducted as a combination of
both offline and online modes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
