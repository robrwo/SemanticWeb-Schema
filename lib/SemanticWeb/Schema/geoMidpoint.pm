use utf8;

package SemanticWeb::Schema::geoMidpoint;

# ABSTRACT: Indicates the GeoCoordinates at the centre of a GeoShape

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'geoMidpoint';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
