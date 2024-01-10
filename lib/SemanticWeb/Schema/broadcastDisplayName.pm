use utf8;

package SemanticWeb::Schema::broadcastDisplayName;

# ABSTRACT: The name displayed in the channel guide

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'broadcastDisplayName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The name displayed in the channel guide. For many US affiliates, it is the
network name.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
