use utf8;

package SemanticWeb::Schema::EventCancelled;

# ABSTRACT: The event has been cancelled

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EventCancelled';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The event has been cancelled. If the event has multiple startDate values,
all are assumed to be cancelled. Either startDate or previousStartDate may
be used to specify the event's cancelled date(s).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
