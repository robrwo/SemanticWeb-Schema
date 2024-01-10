use utf8;

package SemanticWeb::Schema::EventRescheduled;

# ABSTRACT: The event has been rescheduled

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EventRescheduled';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The event has been rescheduled. The event's previousStartDate should be set
to the old date and the startDate should be set to the event's new date.
(If the event has been rescheduled multiple times, the previousStartDate
property may be repeated.)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
