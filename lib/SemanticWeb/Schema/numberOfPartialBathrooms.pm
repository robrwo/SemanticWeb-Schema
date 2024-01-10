use utf8;

package SemanticWeb::Schema::numberOfPartialBathrooms;

# ABSTRACT: Number of partial bathrooms - The total number of half and ¼ bathrooms in an [[Accommodation]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfPartialBathrooms';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Number of partial bathrooms - The total number of half and ¼ bathrooms in an L<SemanticWeb::Schema::Accommodation>. This corresponds to the L<BathroomsPartial field in RESO|https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field>. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
