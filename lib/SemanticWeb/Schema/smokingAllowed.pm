use utf8;

package SemanticWeb::Schema::smokingAllowed;

# ABSTRACT: Indicates whether it is allowed to smoke in the place

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'smokingAllowed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether it is allowed to smoke in the place, e.g. in the
restaurant, hotel or hotel room.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
