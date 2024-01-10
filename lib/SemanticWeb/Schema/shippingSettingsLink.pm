use utf8;

package SemanticWeb::Schema::shippingSettingsLink;

# ABSTRACT: Link to a page containing [[ShippingRateSettings]] and [[DeliveryTimeSettings]] details.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'shippingSettingsLink';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Link to a page containing L<SemanticWeb::Schema::ShippingRateSettings> and L<SemanticWeb::Schema::DeliveryTimeSettings> details.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
