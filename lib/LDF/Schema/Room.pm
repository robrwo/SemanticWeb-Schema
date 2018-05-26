package LDF::Schema::Room;

# ABSTRACT: A room is a distinguishable space within a structure

use Moo;

extends qw/ LDF::Schema::Accommodation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A room is a distinguishable space within a structure, usually separated
from other spaces by interior walls. (Source: Wikipedia, the free
encyclopedia, see <a
href="http://en.wikipedia.org/wiki/Room">http://en.wikipedia.org/wiki/Room<
/a>). <br /><br /> See also the <a href="/docs/hotels.html">dedicated
document on the use of schema.org for marking up hotels and other forms of
accommodations</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Room' }



=head1 SEE ALSO



L<LDF::Schema::Accommodation>

=cut

1;
