use utf8;

package SemanticWeb::Schema::OfflineTemporarily;

# ABSTRACT: Game server status: OfflineTemporarily

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OfflineTemporarily';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Game server status: OfflineTemporarily. Server is offline now but it can be
online soon.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
