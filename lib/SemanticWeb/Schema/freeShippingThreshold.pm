use utf8;

package SemanticWeb::Schema::freeShippingThreshold;

# ABSTRACT: A monetary value above (or at) which the shipping rate becomes free

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'freeShippingThreshold';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an L<SemanticWeb::Schema::OfferShippingDetails> with [[shippingSettingsLink]] matching this L<SemanticWeb::Schema::ShippingRateSettings>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
