package SemanticWeb::Schema::EventReservation;

# ABSTRACT: A reservation for an event like a concert

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'EventReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

A reservation for an event like a concert, sporting event, or lecture.</p>
<p>Note: This type is for information about actual reservations, e.g. in
confirmation emails or HTML pages with individual confirmations of
reservations. For offers of tickets, use <a class="localLink"
href="http://schema.org/Offer">Offer</a>.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;