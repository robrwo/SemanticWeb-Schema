use utf8;

package SemanticWeb::Schema::numberOfRooms;

# ABSTRACT: The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfRooms';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of rooms (excluding bathrooms and closets) of the accommodation
or lodging business. Typical unit code(s): ROM for room or C62 for no unit.
The type of room can be put in the unitText property of the
QuantitativeValue.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
