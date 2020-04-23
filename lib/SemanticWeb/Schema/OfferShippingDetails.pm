use utf8;

package SemanticWeb::Schema::OfferShippingDetails;

# ABSTRACT: OfferShippingDetails represents information about shipping destinations

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'OfferShippingDetails';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>OfferShippingDetails represents information about shipping
destinations.<br/><br/> Multiple of these entities can be used to represent
different shipping rates for different destinations:<br/><br/> One entity
for Alaska/Hawaii. A different one for continental US.A different one for
all France.<br/><br/> Multiple of these entities can be used to represent
different shipping costs and delivery times.<br/><br/> Two entities that
are identical but differ in rate and time:<br/><br/> e.g. Cheaper and
slower: $5 in 5-7days or Fast and expensive: $15 in 1-2 days<p>

=end html




=head1 ATTRIBUTES


=head2 C<shipping_destination>

C<shippingDestination>

indicates (posssibly multiple) shipping destinations. These can be defined
in several ways e.g. postalCode ranges.


A shipping_destination should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedRegion']>

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



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
