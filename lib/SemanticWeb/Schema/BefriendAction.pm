use utf8;

package SemanticWeb::Schema::BefriendAction;

# ABSTRACT: The act of forming a personal connection with someone (object) mutually/bidirectionally/symmetrically

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'BefriendAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

The act of forming a personal connection with someone (object)
mutually/bidirectionally/symmetrically.<br/><br/> Related
actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, BefriendAction implies that the connection is
reciprocal.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
