use utf8;

package SemanticWeb::Schema::longitude;

# ABSTRACT: The longitude of a location

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'longitude';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The longitude of a location. For example ```-122.08585``` ([WGS
84](https://en.wikipedia.org/wiki/World_Geodetic_System)).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
