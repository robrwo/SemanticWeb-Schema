use utf8;

package SemanticWeb::Schema::geoCrosses;

# ABSTRACT: Represents a relationship between two geometries (or the places they represent)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoCrosses';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents a relationship between two geometries (or the places they
represent), relating a geometry to another that crosses it: "a crosses b:
they have some but not all interior points in common, and the dimension of
the intersection is less than that of at least one of them". As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
