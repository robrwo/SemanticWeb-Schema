package LDF::Schema::MeetingRoom;

# ABSTRACT: A meeting room

use Moo;

extends qw/ LDF::Schema::Room /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A meeting room, conference room, or conference hall is a room provided for
singular events such as business conferences and meetings (Source:
Wikipedia, the free encyclopedia, see <a
href="http://en.wikipedia.org/wiki/Conference_hall">http://en.wikipedia.org
/wiki/Conference_hall</a>). <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MeetingRoom' }



=head1 SEE ALSO



L<LDF::Schema::Room>

=cut

1;
