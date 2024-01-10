use utf8;

package SemanticWeb::Schema::shippingLabel;

# ABSTRACT: Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'shippingLabel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Label to match an L<SemanticWeb::Schema::OfferShippingDetails> with a L<SemanticWeb::Schema::ShippingRateSettings> (within the context of a [[shippingSettingsLink]] cross-reference).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
