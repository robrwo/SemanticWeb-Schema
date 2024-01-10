use utf8;

package SemanticWeb::Schema::returnShippingFeesAmount;

# ABSTRACT: Amount of shipping costs for product returns (for any reason)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'returnShippingFeesAmount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals L<SemanticWeb::Schema::ReturnShippingFees>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
