package SemanticWeb::Schema::MeetingRoom;

# ABSTRACT: A meeting room

use Moo;

extends qw/ SemanticWeb::Schema::Room /;


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


around json_ld_type => sub { return 'MeetingRoom' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Room>

=cut

1;
