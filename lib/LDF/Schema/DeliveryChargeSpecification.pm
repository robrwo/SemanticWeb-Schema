package LDF::Schema::DeliveryChargeSpecification;

# ABSTRACT: The price for the delivery of an offer using a particular delivery method.

use Moo;

extends qw/ LDF::Schema::PriceSpecification /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The price for the delivery of an offer using a particular delivery method.




=head1 ATTRIBUTES


=head2 C<applies_to_delivery_method>

C<appliesToDeliveryMethod>

The delivery method(s) to which the delivery charge or payment charge
specification applies.


A applies_to_delivery_method should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DeliveryMethod']>

=back

=cut

has applies_to_delivery_method => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::GeoShape']>

=item C<InstanceOf['LDF::Schema::AdministrativeArea']>

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has area_served => (
    is        => 'rw',
    predicate => 1,
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

=item C<InstanceOf['LDF::Schema::GeoShape']>

=item C<Str>

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has eligible_region => (
    is        => 'rw',
    predicate => 1,
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

=item C<InstanceOf['LDF::Schema::Place']>

=item C<InstanceOf['LDF::Schema::GeoShape']>

=back

=cut

has ineligible_region => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DeliveryChargeSpecification' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'appliesToDeliveryMethod' => $self->curry::_serializer('applies_to_delivery_method'),
       'areaServed' => $self->curry::_serializer('area_served'),
       'eligibleRegion' => $self->curry::_serializer('eligible_region'),
       'ineligibleRegion' => $self->curry::_serializer('ineligible_region'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::PriceSpecification>

=cut

1;
