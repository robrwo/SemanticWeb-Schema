use utf8;

package SemanticWeb::Schema::requiresSubscription;

# ABSTRACT: Indicates if use of the media require a subscription (either paid or free)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'requiresSubscription';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates if use of the media require a subscription (either paid or free).
Allowed values are ```true``` or ```false``` (note that an earlier version
had 'yes', 'no').




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
