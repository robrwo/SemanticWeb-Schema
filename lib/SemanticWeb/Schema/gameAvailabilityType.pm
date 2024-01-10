use utf8;

package SemanticWeb::Schema::gameAvailabilityType;

# ABSTRACT: Indicates the availability type of the game content associated with this action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'gameAvailabilityType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the availability type of the game content associated with this
action, such as whether it is a full version or a demo.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
