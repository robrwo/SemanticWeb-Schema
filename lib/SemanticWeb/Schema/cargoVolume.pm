use utf8;

package SemanticWeb::Schema::cargoVolume;

# ABSTRACT: The available volume for cargo or luggage

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cargoVolume';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The available volume for cargo or luggage. For automobiles, this is usually the trunk volume.

Typical unit code(s): LTR for liters, FTQ for cubic foot/feet

Note: You can use [[minValue]] and [[maxValue]] to indicate ranges.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
