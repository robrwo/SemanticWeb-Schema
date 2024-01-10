use utf8;

package SemanticWeb::Schema::maximumVirtualAttendeeCapacity;

# ABSTRACT: The maximum virtual attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OnlineEventAttendanceMode]] (or the online aspects

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'maximumVirtualAttendeeCapacity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The maximum virtual attendee capacity of an L<SemanticWeb::Schema::Event> whose [[eventAttendanceMode]] is L<SemanticWeb::Schema::OnlineEventAttendanceMode> (or the online aspects, in the case of a L<SemanticWeb::Schema::MixedEventAttendanceMode>). 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
