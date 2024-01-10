use utf8;

package SemanticWeb::Schema::geoEquals;

# ABSTRACT: Represents spatial relations in which two geometries (or the places they represent) are topologically equal

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoEquals';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Represents spatial relations in which two geometries (or the places they
represent) are topologically equal, as defined in
[DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). "Two geometries are
topologically equal if their interiors intersect and no part of the
interior or boundary of one geometry intersects the exterior of the other"
(a symmetric relationship).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
