use utf8;

package SemanticWeb::Schema::startTime;

# ABSTRACT: The startTime of something

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'startTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. E.g.
John wrote a book from *January* to December. For media, including audio
and video, it's the time offset of the start of a clip within a larger
file. Note that Event uses startDate/endDate instead of startTime/endTime,
even when describing dates with times. This situation may be clarified in
future revisions.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
