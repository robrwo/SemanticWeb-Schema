use utf8;

package SemanticWeb::Schema::maximumPhysicalAttendeeCapacity;

# ABSTRACT: The maximum physical attendee capacity of an [[Event]] whose [[eventAttendanceMode]] is [[OfflineEventAttendanceMode]] (or the offline aspects

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'maximumPhysicalAttendeeCapacity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The maximum physical attendee capacity of an L<SemanticWeb::Schema::Event> whose [[eventAttendanceMode]] is L<SemanticWeb::Schema::OfflineEventAttendanceMode> (or the offline aspects, in the case of a L<SemanticWeb::Schema::MixedEventAttendanceMode>). 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
