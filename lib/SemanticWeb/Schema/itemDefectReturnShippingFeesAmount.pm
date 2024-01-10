use utf8;

package SemanticWeb::Schema::itemDefectReturnShippingFeesAmount;

# ABSTRACT: Amount of shipping costs for defect product returns

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'itemDefectReturnShippingFeesAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Amount of shipping costs for defect product returns. Applicable when property [[itemDefectReturnFees]] equals L<SemanticWeb::Schema::ReturnShippingFees>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
