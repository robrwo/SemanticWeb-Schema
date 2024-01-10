use utf8;

package SemanticWeb::Schema::isUnlabelledFallback;

# ABSTRACT: This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isUnlabelledFallback';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

This can be marked 'true' to indicate that some published L<SemanticWeb::Schema::DeliveryTimeSettings> or L<SemanticWeb::Schema::ShippingRateSettings> are intended to apply to all L<SemanticWeb::Schema::OfferShippingDetails> published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for L<SemanticWeb::Schema::DeliveryTimeSettings>) or shippingLabel (for L<SemanticWeb::Schema::ShippingRateSettings>), since this property is for use with unlabelled settings.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
