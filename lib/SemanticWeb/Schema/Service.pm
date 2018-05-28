package SemanticWeb::Schema::Service;

# ABSTRACT: A service provided by an organization, e

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'aggregateRating',
    json_ld_serializer => \&_serialize_aggregate_rating,
);

sub _serialize_aggregate_rating { $_[0]->_serializer('aggregate_rating') }


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
    json_ld_serializer => \&_serialize_area_served,
);

sub _serialize_area_served { $_[0]->_serializer('area_served') }


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=cut

has audience => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'audience',
    json_ld_serializer => \&_serialize_audience,
);

sub _serialize_audience { $_[0]->_serializer('audience') }


=head2 C<available_channel>

C<availableChannel>

A means of accessing the service (e.g. a phone bank, a web site, a
location, etc.).


A available_channel should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ServiceChannel']>

=back

=cut

has available_channel => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableChannel',
    json_ld_serializer => \&_serialize_available_channel,
);

sub _serialize_available_channel { $_[0]->_serializer('available_channel') }


=head2 C<award>



An award won by or for this item.


A award should be one of the following types:

=over

=item C<Str>

=back

=cut

has award => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'award',
    json_ld_serializer => \&_serialize_award,
);

sub _serialize_award { $_[0]->_serializer('award') }


=head2 C<brand>



The brand(s) associated with a product or service, or the brand(s)
maintained by an organization or business person.


A brand should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Brand']>

=back

=cut

has brand => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'brand',
    json_ld_serializer => \&_serialize_brand,
);

sub _serialize_brand { $_[0]->_serializer('brand') }


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

=cut

has broker => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broker',
    json_ld_serializer => \&_serialize_broker,
);

sub _serialize_broker { $_[0]->_serializer('broker') }


=head2 C<category>



A category for the item. Greater signs or slashes can be used to informally
indicate a category hierarchy.


A category should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'category',
    json_ld_serializer => \&_serialize_category,
);

sub _serialize_category { $_[0]->_serializer('category') }


=head2 C<has_offer_catalog>

C<hasOfferCatalog>

Indicates an OfferCatalog listing for this Organization, Person, or
Service.


A has_offer_catalog should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OfferCatalog']>

=back

=cut

has has_offer_catalog => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasOfferCatalog',
    json_ld_serializer => \&_serialize_has_offer_catalog,
);

sub _serialize_has_offer_catalog { $_[0]->_serializer('has_offer_catalog') }


=head2 C<hours_available>

C<hoursAvailable>

The hours during which this service or contact is available.


A hours_available should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OpeningHoursSpecification']>

=back

=cut

has hours_available => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hoursAvailable',
    json_ld_serializer => \&_serialize_hours_available,
);

sub _serialize_hours_available { $_[0]->_serializer('hours_available') }


=head2 C<is_related_to>

C<isRelatedTo>

A pointer to another, somehow related product (or multiple products).


A is_related_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=cut

has is_related_to => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isRelatedTo',
    json_ld_serializer => \&_serialize_is_related_to,
);

sub _serialize_is_related_to { $_[0]->_serializer('is_related_to') }


=head2 C<is_similar_to>

C<isSimilarTo>

A pointer to another, functionally similar product (or multiple products).


A is_similar_to should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has is_similar_to => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isSimilarTo',
    json_ld_serializer => \&_serialize_is_similar_to,
);

sub _serialize_is_similar_to { $_[0]->_serializer('is_similar_to') }


=head2 C<logo>



An associated logo.


A logo should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=cut

has logo => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'logo',
    json_ld_serializer => \&_serialize_logo,
);

sub _serialize_logo { $_[0]->_serializer('logo') }


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'offers',
    json_ld_serializer => \&_serialize_offers,
);

sub _serialize_offers { $_[0]->_serializer('offers') }


=head2 C<produces>



The tangible thing generated by the service, e.g. a passport, permit, etc.


A produces should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has produces => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'produces',
    json_ld_serializer => \&_serialize_produces,
);

sub _serialize_produces { $_[0]->_serializer('produces') }


=head2 C<provider>



The service provider, service operator, or service performer; the goods
producer. Another party (a seller) may offer those services or goods on
behalf of the provider. A provider may also serve as the seller.


A provider should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has provider => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'provider',
    json_ld_serializer => \&_serialize_provider,
);

sub _serialize_provider { $_[0]->_serializer('provider') }


=head2 C<provider_mobility>

C<providerMobility>

Indicates the mobility of a provided service (e.g. 'static', 'dynamic').


A provider_mobility should be one of the following types:

=over

=item C<Str>

=back

=cut

has provider_mobility => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'providerMobility',
    json_ld_serializer => \&_serialize_provider_mobility,
);

sub _serialize_provider_mobility { $_[0]->_serializer('provider_mobility') }


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has review => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'review',
    json_ld_serializer => \&_serialize_review,
);

sub _serialize_review { $_[0]->_serializer('review') }


=head2 C<service_area>

C<serviceArea>

The geographic area where the service is provided.


A service_area should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=cut

has service_area => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceArea',
    json_ld_serializer => \&_serialize_service_area,
);

sub _serialize_service_area { $_[0]->_serializer('service_area') }


=head2 C<service_audience>

C<serviceAudience>

The audience eligible for this service.


A service_audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=cut

has service_audience => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceAudience',
    json_ld_serializer => \&_serialize_service_audience,
);

sub _serialize_service_audience { $_[0]->_serializer('service_audience') }


=head2 C<service_output>

C<serviceOutput>

The tangible thing generated by the service, e.g. a passport, permit, etc.


A service_output should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has service_output => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceOutput',
    json_ld_serializer => \&_serialize_service_output,
);

sub _serialize_service_output { $_[0]->_serializer('service_output') }


=head2 C<service_type>

C<serviceType>

The type of service being offered, e.g. veterans' benefits, emergency
relief, etc.


A service_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has service_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serviceType',
    json_ld_serializer => \&_serialize_service_type,
);

sub _serialize_service_type { $_[0]->_serializer('service_type') }




around json_ld_type => sub { return 'Service' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'aggregateRating' => \&_serialize_aggregate_rating,
       'areaServed' => \&_serialize_area_served,
       'audience' => \&_serialize_audience,
       'availableChannel' => \&_serialize_available_channel,
       'award' => \&_serialize_award,
       'brand' => \&_serialize_brand,
       'broker' => \&_serialize_broker,
       'category' => \&_serialize_category,
       'hasOfferCatalog' => \&_serialize_has_offer_catalog,
       'hoursAvailable' => \&_serialize_hours_available,
       'isRelatedTo' => \&_serialize_is_related_to,
       'isSimilarTo' => \&_serialize_is_similar_to,
       'logo' => \&_serialize_logo,
       'offers' => \&_serialize_offers,
       'produces' => \&_serialize_produces,
       'provider' => \&_serialize_provider,
       'providerMobility' => \&_serialize_provider_mobility,
       'review' => \&_serialize_review,
       'serviceArea' => \&_serialize_service_area,
       'serviceAudience' => \&_serialize_service_audience,
       'serviceOutput' => \&_serialize_service_output,
       'serviceType' => \&_serialize_service_type,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
