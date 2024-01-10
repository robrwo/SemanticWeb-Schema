use utf8;

package SemanticWeb::Schema::WeaponConsideration;

# ABSTRACT: The item is intended to induce bodily harm

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'WeaponConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The item is intended to induce bodily harm, for example guns, mace, combat
knives, brass knuckles, nail or other bombs, and spears.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
