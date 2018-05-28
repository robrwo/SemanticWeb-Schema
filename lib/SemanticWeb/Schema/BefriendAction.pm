package SemanticWeb::Schema::BefriendAction;

# ABSTRACT: <p>The act of forming a personal connection with someone (object) mutually/bidirectionally/symmetrically

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of forming a personal connection with someone (object)
mutually/bidirectionally/symmetrically.</p> <p>Related actions:</p> <ul>
<li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, BefriendAction implies that the connection is
reciprocal.</li> </ul> 

=end html




=cut


around json_ld_type => sub { return 'BefriendAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
