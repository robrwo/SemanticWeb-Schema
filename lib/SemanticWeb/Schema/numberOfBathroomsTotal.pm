use utf8;

package SemanticWeb::Schema::numberOfBathroomsTotal;

# ABSTRACT: The total integer number of bathrooms in some [[Accommodation]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfBathroomsTotal';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The total integer number of bathrooms in some L<SemanticWeb::Schema::Accommodation>, following real estate conventions as L<documented in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field>: "The simple sum of the number of bathrooms. For example for a property with two Full Bathrooms and one Half Bathroom, the Bathrooms Total Integer will be 3.". See also [[numberOfRooms]].



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
