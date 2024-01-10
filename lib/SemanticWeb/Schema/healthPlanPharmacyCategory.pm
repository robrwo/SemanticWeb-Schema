use utf8;

package SemanticWeb::Schema::healthPlanPharmacyCategory;

# ABSTRACT: The category or type of pharmacy associated with this cost sharing.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'healthPlanPharmacyCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The category or type of pharmacy associated with this cost sharing.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
