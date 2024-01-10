use utf8;

package SemanticWeb::Schema::floorLevel;

# ABSTRACT: The floor level for an [[Accommodation]] in a multi-storey building

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'floorLevel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The floor level for an L<SemanticWeb::Schema::Accommodation> in a multi-storey building. Since counting
  systems L<vary internationally|https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations>, the local system should be used where possible.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
