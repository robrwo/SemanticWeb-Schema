use utf8;

package SemanticWeb::Schema::broadcastServiceTier;

# ABSTRACT: The type of service required to have access to the channel (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastServiceTier';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of service required to have access to the channel (e.g. Standard
or Premium).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
