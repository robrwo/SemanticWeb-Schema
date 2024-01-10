use utf8;

package SemanticWeb::Schema::ReservationPending;

# ABSTRACT: The status of a reservation when a request has been sent

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReservationPending';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The status of a reservation when a request has been sent, but not
confirmed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
