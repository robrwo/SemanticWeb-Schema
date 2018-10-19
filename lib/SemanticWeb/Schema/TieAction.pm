use utf8;

package SemanticWeb::Schema::TieAction;

# ABSTRACT: The act of reaching a draw in a competitive activity.

use Moo;

extends qw/ SemanticWeb::Schema::AchieveAction /;


use MooX::JSON_LD 'TieAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

The act of reaching a draw in a competitive activity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AchieveAction>

=cut

1;
