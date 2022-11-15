use utf8;

package SemanticWeb::Schema::MeetingRoom;

# ABSTRACT: A meeting room

use Moo;

extends qw/ SemanticWeb::Schema::Room /;


use MooX::JSON_LD 'MeetingRoom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A meeting room, conference room, or conference hall is a room provided
for singular events such as business conferences and meetings (source:
Wikipedia, the free encyclopedia, see <a
href="http://en.wikipedia.org/wiki/Conference_hall">http://en.wikipedia.org
/wiki/Conference_hall</a>). <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>. </p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Room>

=cut

1;
