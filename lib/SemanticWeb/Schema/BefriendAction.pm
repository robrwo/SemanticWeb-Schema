use utf8;

package SemanticWeb::Schema::BefriendAction;

# ABSTRACT: The act of forming a personal connection with someone (object) mutually/bidirectionally/symmetrically

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'BefriendAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

The act of forming a personal connection with someone (object)
mutually/bidirectionally/symmetrically.\n\nRelated actions:\n\n*
[[FollowAction]]: Unlike FollowAction, BefriendAction implies that the
connection is reciprocal.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
