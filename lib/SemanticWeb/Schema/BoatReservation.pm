use utf8;

package SemanticWeb::Schema::BoatReservation;

# ABSTRACT: A reservation for boat travel

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'BoatReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A reservation for boat travel.<br/><br/> Note: This type is for
information about actual reservations, e.g. in confirmation emails or HTML
pages with individual confirmations of reservations. For offers of tickets,
use <a class="localLink" href="http://schema.org/Offer">Offer</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
