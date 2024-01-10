use utf8;

package SemanticWeb::Schema::numberOfAvailableAccommodationUnits;

# ABSTRACT: Indicates the number of available accommodation units in an [[ApartmentComplex]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfAvailableAccommodationUnits';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the number of available accommodation units in an L<SemanticWeb::Schema::ApartmentComplex>, or the number of accommodation units for a specific L<SemanticWeb::Schema::FloorPlan> (within its specific L<SemanticWeb::Schema::ApartmentComplex>). See also [[numberOfAccommodationUnits]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
