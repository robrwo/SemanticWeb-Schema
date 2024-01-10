use utf8;

package SemanticWeb::Schema::merchantReturnDays;

# ABSTRACT: Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'merchantReturnDays';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as L<SemanticWeb::Schema::MerchantReturnFiniteReturnWindow>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
