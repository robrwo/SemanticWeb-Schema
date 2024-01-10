use utf8;

package SemanticWeb::Schema::ReservationHold;

# ABSTRACT: The status of a reservation on hold pending an update like credit card number or flight changes.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ReservationHold';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The status of a reservation on hold pending an update like credit card
number or flight changes.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
