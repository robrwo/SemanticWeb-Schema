use utf8;

package SemanticWeb::Schema::broadcastChannelId;

# ABSTRACT: The unique address by which the BroadcastService can be identified in a provider lineup

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastChannelId';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The unique address by which the BroadcastService can be identified in a
provider lineup. In US, this is typically a number.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
