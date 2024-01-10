use utf8;

package SemanticWeb::Schema::EventScheduled;

# ABSTRACT: The event is taking place or has taken place on the startDate as scheduled

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'EventScheduled';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The event is taking place or has taken place on the startDate as scheduled.
Use of this value is optional, as it is assumed by default.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
