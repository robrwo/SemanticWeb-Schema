use utf8;

package SemanticWeb::Schema::maximumAttendeeCapacity;

# ABSTRACT: The total number of individuals that may attend an event or venue.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'maximumAttendeeCapacity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total number of individuals that may attend an event or venue.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
