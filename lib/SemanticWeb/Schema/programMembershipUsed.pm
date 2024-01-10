use utf8;

package SemanticWeb::Schema::programMembershipUsed;

# ABSTRACT: Any membership in a frequent flyer

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'programMembershipUsed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any membership in a frequent flyer, hotel loyalty program, etc. being
applied to the reservation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
