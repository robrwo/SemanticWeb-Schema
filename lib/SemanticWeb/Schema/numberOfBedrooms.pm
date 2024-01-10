use utf8;

package SemanticWeb::Schema::numberOfBedrooms;

# ABSTRACT: The total integer number of bedrooms in a some [[Accommodation]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfBedrooms';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total integer number of bedrooms in a some L<SemanticWeb::Schema::Accommodation>, L<SemanticWeb::Schema::ApartmentComplex> or L<SemanticWeb::Schema::FloorPlan>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
