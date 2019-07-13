use utf8;

package SemanticWeb::Schema::Room;

# ABSTRACT: A room is a distinguishable space within a structure

use Moo;

extends qw/ SemanticWeb::Schema::Accommodation /;


use MooX::JSON_LD 'Room';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

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




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Accommodation>

=cut

1;
