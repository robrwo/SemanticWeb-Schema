package LDF::Schema::EventReservation;

# ABSTRACT: A reservation for an event like a concert

use Moo;

extends qw/ LDF::Schema::Reservation /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A reservation for an event like a concert, sporting event, or lecture.</p>
<p>Note: This type is for information about actual reservations, e.g. in
confirmation emails or HTML pages with individual confirmations of
reservations. For offers of tickets, use <a class="localLink"
href="http://schema.org/Offer">Offer</a>.

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EventReservation' }



=head1 SEE ALSO



L<LDF::Schema::Reservation>

=cut

1;
