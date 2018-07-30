package SemanticWeb::Schema::DeliveryChargeSpecification;

# ABSTRACT: The price for the delivery of an offer using a particular delivery method.

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use MooX::JSON_LD 'DeliveryChargeSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

The price for the delivery of an offer using a particular delivery method.




=head1 ATTRIBUTES


=head2 C<applies_to_delivery_method>

C<appliesToDeliveryMethod>

The delivery method(s) to which the delivery charge or payment charge
specification applies.


A applies_to_delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=cut

has applies_to_delivery_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'appliesToDeliveryMethod',
);


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has area_served => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'areaServed',
);


=head2 C<eligible_region>

C<eligibleRegion>

=begin html

The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
GeoShape for the geo-political region(s) for which the offer or delivery
charge specification is valid.</p> <p>See also <a class="localLink"
href="http://schema.org/ineligibleRegion">ineligibleRegion</a>.

=end html


A eligible_region should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has eligible_region => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'eligibleRegion',
);


=head2 C<ineligible_region>

C<ineligibleRegion>

=begin html

The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
GeoShape for the geo-political region(s) for which the offer or delivery
charge specification is not valid, e.g. a region where the transaction is
not allowed.</p> <p>See also <a class="localLink"
href="http://schema.org/eligibleRegion">eligibleRegion</a>.

=end html


A ineligible_region should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=back

=cut

has ineligible_region => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ineligibleRegion',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
