use utf8;

package SemanticWeb::Schema::Service;

# ABSTRACT: A service provided by an organization, e

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Service';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A service provided by an organization, e.g. delivery service, print
services, etc.




=head1 ATTRIBUTES


=head2 C<aggregate_rating>

C<aggregateRating>

The overall rating, based on a collection of reviews or ratings, of the
item.


A aggregate_rating should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AggregateRating']>

=back

=head2 C<_has_aggregate_rating>

A predicate for the L</aggregate_rating> attribute.

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => '_has_aggregate_rating',
    json_ld   => 'aggregateRating',
);


=head2 C<area_served>

C<areaServed>

The geographic area where a service or offered item is provided.


A area_served should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=head2 C<_has_area_served>

A predicate for the L</area_served> attribute.

=cut

has area_served => (
    is        => 'rw',
    predicate => '_has_area_served',
    json_ld   => 'areaServed',
);


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=head2 C<_has_audience>

A predicate for the L</audience> attribute.

=cut

has audience => (
    is        => 'rw',
    predicate => '_has_audience',
    json_ld   => 'audience',
);


=head2 C<available_channel>

C<availableChannel>

A means of accessing the service (e.g. a phone bank, a web site, a
location, etc.).


A available_channel should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ServiceChannel']>

=back

=head2 C<_has_available_channel>

A predicate for the L</available_channel> attribute.

=cut

has available_channel => (
    is        => 'rw',
    predicate => '_has_available_channel',
    json_ld   => 'availableChannel',
);


=head2 C<award>



An award won by or for this item.


A award should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_award>

A predicate for the L</award> attribute.

=cut

has award => (
    is        => 'rw',
    predicate => '_has_award',
    json_ld   => 'award',
);


=head2 C<brand>



The brand(s) associated with a product or service, or the brand(s)
maintained by an organization or business person.


A brand should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Brand']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_brand>

A predicate for the L</brand> attribute.

=cut

has brand => (
    is        => 'rw',
    predicate => '_has_brand',
    json_ld   => 'brand',
);


=head2 C<broker>



An entity that arranges for an exchange between a buyer and a seller. In
most cases a broker never acquires or releases ownership of a product or
service involved in an exchange. If it is not clear whether an entity is a
broker, seller, or buyer, the latter two terms are preferred.


A broker should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_broker>

A predicate for the L</broker> attribute.

=cut

has broker => (
    is        => 'rw',
    predicate => '_has_broker',
    json_ld   => 'broker',
);


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCode']>

=item C<InstanceOf['SemanticWeb::Schema::PhysicalActivityCategory']>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=head2 C<_has_category>

A predicate for the L</category> attribute.

=cut

has category => (
    is        => 'rw',
    predicate => '_has_category',
    json_ld   => 'category',
);


=head2 C<has_offer_catalog>

C<hasOfferCatalog>

Indicates an OfferCatalog listing for this Organization, Person, or
Service.


A has_offer_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OfferCatalog']>

=back

=head2 C<_has_has_offer_catalog>

A predicate for the L</has_offer_catalog> attribute.

=cut

has has_offer_catalog => (
    is        => 'rw',
    predicate => '_has_has_offer_catalog',
    json_ld   => 'hasOfferCatalog',
);


=head2 C<hours_available>

C<hoursAvailable>

The hours during which this service or contact is available.


A hours_available should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=head2 C<_has_hours_available>

A predicate for the L</hours_available> attribute.

=cut

has hours_available => (
    is        => 'rw',
    predicate => '_has_hours_available',
    json_ld   => 'hoursAvailable',
);


=head2 C<is_related_to>

C<isRelatedTo>

A pointer to another, somehow related product (or multiple products).


A is_related_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=head2 C<_has_is_related_to>

A predicate for the L</is_related_to> attribute.

=cut

has is_related_to => (
    is        => 'rw',
    predicate => '_has_is_related_to',
    json_ld   => 'isRelatedTo',
);


=head2 C<is_similar_to>

C<isSimilarTo>

A pointer to another, functionally similar product (or multiple products).


A is_similar_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=head2 C<_has_is_similar_to>

A predicate for the L</is_similar_to> attribute.

=cut

has is_similar_to => (
    is        => 'rw',
    predicate => '_has_is_similar_to',
    json_ld   => 'isSimilarTo',
);


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=head2 C<_has_logo>

A predicate for the L</logo> attribute.

=cut

has logo => (
    is        => 'rw',
    predicate => '_has_logo',
    json_ld   => 'logo',
);


=head2 C<offers>



An offer to provide this item-- for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a L<SemanticWeb::Schema::Demand>. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.

A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Demand']>

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=head2 C<_has_offers>

A predicate for the L</offers> attribute.

=cut

has offers => (
    is        => 'rw',
    predicate => '_has_offers',
    json_ld   => 'offers',
);


=head2 C<produces>



The tangible thing generated by the service, e.g. a passport, permit, etc.


A produces should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_produces>

A predicate for the L</produces> attribute.

=cut

has produces => (
    is        => 'rw',
    predicate => '_has_produces',
    json_ld   => 'produces',
);


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_provider>

A predicate for the L</provider> attribute.

=cut

has provider => (
    is        => 'rw',
    predicate => '_has_provider',
    json_ld   => 'provider',
);


=head2 C<provider_mobility>

C<providerMobility>

Indicates the mobility of a provided service (e.g. 'static', 'dynamic').


A provider_mobility should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_provider_mobility>

A predicate for the L</provider_mobility> attribute.

=cut

has provider_mobility => (
    is        => 'rw',
    predicate => '_has_provider_mobility',
    json_ld   => 'providerMobility',
);


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_review>

A predicate for the L</review> attribute.

=cut

has review => (
    is        => 'rw',
    predicate => '_has_review',
    json_ld   => 'review',
);


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_service_area>

A predicate for the L</service_area> attribute.

=cut

has service_area => (
    is        => 'rw',
    predicate => '_has_service_area',
    json_ld   => 'serviceArea',
);


=head2 C<service_audience>

C<serviceAudience>

The audience eligible for this service.


A service_audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=head2 C<_has_service_audience>

A predicate for the L</service_audience> attribute.

=cut

has service_audience => (
    is        => 'rw',
    predicate => '_has_service_audience',
    json_ld   => 'serviceAudience',
);


=head2 C<service_output>

C<serviceOutput>

The tangible thing generated by the service, e.g. a passport, permit, etc.


A service_output should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_service_output>

A predicate for the L</service_output> attribute.

=cut

has service_output => (
    is        => 'rw',
    predicate => '_has_service_output',
    json_ld   => 'serviceOutput',
);


=head2 C<service_type>

C<serviceType>

The type of service being offered, e.g. veterans' benefits, emergency
relief, etc.


A service_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GovernmentBenefitsType']>

=item C<Str>

=back

=head2 C<_has_service_type>

A predicate for the L</service_type> attribute.

=cut

has service_type => (
    is        => 'rw',
    predicate => '_has_service_type',
    json_ld   => 'serviceType',
);


=head2 C<slogan>



A slogan or motto associated with the item.


A slogan should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_slogan>

A predicate for the L</slogan> attribute.

=cut

has slogan => (
    is        => 'rw',
    predicate => '_has_slogan',
    json_ld   => 'slogan',
);


=head2 C<terms_of_service>

C<termsOfService>

Human-readable terms of service documentation.


A terms_of_service should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_terms_of_service>

A predicate for the L</terms_of_service> attribute.

=cut

has terms_of_service => (
    is        => 'rw',
    predicate => '_has_terms_of_service',
    json_ld   => 'termsOfService',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
