use utf8;

package SemanticWeb::Schema::customerRemorseReturnShippingFeesAmount;

# ABSTRACT: The amount of shipping costs if a product is returned due to customer remorse

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'customerRemorseReturnShippingFeesAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount of shipping costs if a product is returned due to customer remorse. Applicable when property [[customerRemorseReturnFees]] equals L<SemanticWeb::Schema::ReturnShippingFees>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
