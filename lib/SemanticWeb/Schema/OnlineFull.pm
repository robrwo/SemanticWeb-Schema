use utf8;

package SemanticWeb::Schema::OnlineFull;

# ABSTRACT: Game server status: OnlineFull

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OnlineFull';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Game server status: OnlineFull. Server is online but unavailable. The
maximum number of players has reached.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
