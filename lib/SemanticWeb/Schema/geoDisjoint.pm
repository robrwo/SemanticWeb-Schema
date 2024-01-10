use utf8;

package SemanticWeb::Schema::geoDisjoint;

# ABSTRACT: Represents spatial relations in which two geometries (or the places they represent) are topologically disjoint: "they have no point in common

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoDisjoint';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents spatial relations in which two geometries (or the places they
represent) are topologically disjoint: "they have no point in common. They
form a set of disconnected geometries." (A symmetric relationship, as
defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
