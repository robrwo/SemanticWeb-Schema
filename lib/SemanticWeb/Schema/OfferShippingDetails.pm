use utf8;

package SemanticWeb::Schema::OfferShippingDetails;

# ABSTRACT: OfferShippingDetails - indicates the kinds of shipping options might be available for an online shopping offer.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'OfferShippingDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

OfferShippingDetails - indicates the kinds of shipping options might be
available for an online shopping offer.




=head1 ATTRIBUTES


=head2 C<shipping_destination>

C<shippingDestination>

shippingDestination indicates the target region for an online shipping
destination.


A shipping_destination should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=head2 C<_has_shipping_destination>

A predicate for the L</shipping_destination> attribute.

=cut

has shipping_destination => (
    is        => 'rw',
    predicate => '_has_shipping_destination',
    json_ld   => 'shippingDestination',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
