use utf8;

package SemanticWeb::Schema::OfflinePermanently;

# ABSTRACT: Game server status: OfflinePermanently

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OfflinePermanently';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Game server status: OfflinePermanently. Server is offline and not
available.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
