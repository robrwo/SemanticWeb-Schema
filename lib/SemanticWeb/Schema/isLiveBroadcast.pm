use utf8;

package SemanticWeb::Schema::isLiveBroadcast;

# ABSTRACT: True if the broadcast is of a live event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isLiveBroadcast';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

True if the broadcast is of a live event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
