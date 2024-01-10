use utf8;

package SemanticWeb::Schema::geoContains;

# ABSTRACT: Represents a relationship between two geometries (or the places they represent)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoContains';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents a relationship between two geometries (or the places they
represent), relating a containing geometry to a contained geometry. "a
contains b iff no points of b lie in the exterior of a, and at least one
point of the interior of b lies in the interior of a". As defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
