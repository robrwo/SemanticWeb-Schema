package SemanticWeb::Schema::Room;

# ABSTRACT: A room is a distinguishable space within a structure

use Moo;

extends qw/ SemanticWeb::Schema::Accommodation /;


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




=cut


around json_ld_type => sub { return 'Room' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Accommodation>

=cut

1;
