use utf8;

package SemanticWeb::Schema::EventPostponed;

# ABSTRACT: The event has been postponed and no new date has been set

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EventPostponed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The event has been postponed and no new date has been set. The event's
previousStartDate should be set.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
