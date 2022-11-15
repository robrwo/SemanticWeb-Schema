use utf8;

package SemanticWeb::Schema::Offer;

# ABSTRACT: An offer to transfer some rights to an item or to provide a service â for example

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Offer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

An offer to transfer some rights to an item or to provide a service â for example, an offer to sell tickets to an event, to rent the DVD of a movie, to stream a TV show over the internet, to repair a motorcycle, or to loan a book.

Note: As the [[businessFunction]] property, which identifies the form of offer (e.g. sell, lease, repair, dispose), defaults to http://purl.org/goodrelations/v1#Sell; an Offer without a defined businessFunction value can be assumed to be an offer to sell.

For L<GTIN|http://www.gs1.org/barcodes/technical/idkeys/gtin>-related fields, see L<Check Digit calculator|http://www.gs1.org/barcodes/support/check_digit_calculator> and L<validation guide|http://www.gs1us.org/resources/standards/gtin-validation-guide> from L<GS1|http://www.gs1.org/>.



=head1 ATTRIBUTES


=head2 C<accepted_payment_method>

C<acceptedPaymentMethod>

The payment method(s) accepted by seller for this offer.


A accepted_payment_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::LoanOrCredit']>

=item C<InstanceOf['SemanticWeb::Schema::PaymentMethod']>

=back

=head2 C<_has_accepted_payment_method>

A predicate for the L</accepted_payment_method> attribute.

=cut

has accepted_payment_method => (
    is        => 'rw',
    predicate => '_has_accepted_payment_method',
    json_ld   => 'acceptedPaymentMethod',
);


=head2 C<add_on>

C<addOn>

An additional offer that can only be obtained in combination with the first
base offer (e.g. supplements and extensions that are available for a
surcharge).


A add_on should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Offer']>

=back

=head2 C<_has_add_on>

A predicate for the L</add_on> attribute.

=cut

has add_on => (
    is        => 'rw',
    predicate => '_has_add_on',
    json_ld   => 'addOn',
);


=head2 C<advance_booking_requirement>

C<advanceBookingRequirement>

The amount of time that is required between accepting the offer and the
actual usage of the resource or service.


A advance_booking_requirement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_advance_booking_requirement>

A predicate for the L</advance_booking_requirement> attribute.

=cut

has advance_booking_requirement => (
    is        => 'rw',
    predicate => '_has_advance_booking_requirement',
    json_ld   => 'advanceBookingRequirement',
);


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


=head2 C<asin>



An Amazon Standard Identification Number (ASIN) is a 10-character
alphanumeric unique identifier assigned by Amazon.com and its partners for
product identification within the Amazon organization (summary from
[Wikipedia](https://en.wikipedia.org/wiki/Amazon_Standard_Identification_Nu
mber)'s article). Note also that this is a definition for how to include
ASINs in Schema.org data, and not a definition of ASINs in general - see
documentation from Amazon for authoritative details. ASINs are most
commonly encoded as text strings, but the [asin] property supports URL/URI
as potential values too.


A asin should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_asin>

A predicate for the L</asin> attribute.

=cut

has asin => (
    is        => 'rw',
    predicate => '_has_asin',
    json_ld   => 'asin',
);


=head2 C<availability>



The availability of this item&#x2014;for example In stock, Out of stock,
Pre-order, etc.


A availability should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemAvailability']>

=back

=head2 C<_has_availability>

A predicate for the L</availability> attribute.

=cut

has availability => (
    is        => 'rw',
    predicate => '_has_availability',
    json_ld   => 'availability',
);


=head2 C<availability_ends>

C<availabilityEnds>

The end of the availability of the product or service included in the
offer.


A availability_ends should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_availability_ends>

A predicate for the L</availability_ends> attribute.

=cut

has availability_ends => (
    is        => 'rw',
    predicate => '_has_availability_ends',
    json_ld   => 'availabilityEnds',
);


=head2 C<availability_starts>

C<availabilityStarts>

The beginning of the availability of the product or service included in the
offer.


A availability_starts should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_availability_starts>

A predicate for the L</availability_starts> attribute.

=cut

has availability_starts => (
    is        => 'rw',
    predicate => '_has_availability_starts',
    json_ld   => 'availabilityStarts',
);


=head2 C<available_at_or_from>

C<availableAtOrFrom>

The place(s) from which the offer can be obtained (e.g. store locations).


A available_at_or_from should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=head2 C<_has_available_at_or_from>

A predicate for the L</available_at_or_from> attribute.

=cut

has available_at_or_from => (
    is        => 'rw',
    predicate => '_has_available_at_or_from',
    json_ld   => 'availableAtOrFrom',
);


=head2 C<available_delivery_method>

C<availableDeliveryMethod>

The delivery method(s) available for this offer.


A available_delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=head2 C<_has_available_delivery_method>

A predicate for the L</available_delivery_method> attribute.

=cut

has available_delivery_method => (
    is        => 'rw',
    predicate => '_has_available_delivery_method',
    json_ld   => 'availableDeliveryMethod',
);


=head2 C<business_function>

C<businessFunction>

The business function (e.g. sell, lease, repair, dispose) of the offer or
component of a bundle (TypeAndQuantityNode). The default is
http://purl.org/goodrelations/v1#Sell.


A business_function should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BusinessFunction']>

=back

=head2 C<_has_business_function>

A predicate for the L</business_function> attribute.

=cut

has business_function => (
    is        => 'rw',
    predicate => '_has_business_function',
    json_ld   => 'businessFunction',
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


=head2 C<checkout_page_url_template>

C<checkoutPageURLTemplate>

A URL template (RFC 6570) for a checkout page for an offer. This approach
allows merchants to specify a URL for online checkout of the offered
product, by interpolating parameters such as the logged in user ID, product
ID, quantity, discount code etc. Parameter naming and standardization are
not specified here.


A checkout_page_url_template should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_checkout_page_url_template>

A predicate for the L</checkout_page_url_template> attribute.

=cut

has checkout_page_url_template => (
    is        => 'rw',
    predicate => '_has_checkout_page_url_template',
    json_ld   => 'checkoutPageURLTemplate',
);


=head2 C<delivery_lead_time>

C<deliveryLeadTime>

The typical delay between the receipt of the order and the goods either
leaving the warehouse or being prepared for pickup, in case the delivery
method is on site pickup.


A delivery_lead_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_delivery_lead_time>

A predicate for the L</delivery_lead_time> attribute.

=cut

has delivery_lead_time => (
    is        => 'rw',
    predicate => '_has_delivery_lead_time',
    json_ld   => 'deliveryLeadTime',
);


=head2 C<eligible_customer_type>

C<eligibleCustomerType>

The type(s) of customers for which the given offer is valid.


A eligible_customer_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BusinessEntityType']>

=back

=head2 C<_has_eligible_customer_type>

A predicate for the L</eligible_customer_type> attribute.

=cut

has eligible_customer_type => (
    is        => 'rw',
    predicate => '_has_eligible_customer_type',
    json_ld   => 'eligibleCustomerType',
);


=head2 C<eligible_duration>

C<eligibleDuration>

The duration for which the given offer is valid.


A eligible_duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_eligible_duration>

A predicate for the L</eligible_duration> attribute.

=cut

has eligible_duration => (
    is        => 'rw',
    predicate => '_has_eligible_duration',
    json_ld   => 'eligibleDuration',
);


=head2 C<eligible_quantity>

C<eligibleQuantity>

The interval and unit of measurement of ordering quantities for which the
offer or price specification is valid. This allows e.g. specifying that a
certain freight charge is valid only for a certain quantity.


A eligible_quantity should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_eligible_quantity>

A predicate for the L</eligible_quantity> attribute.

=cut

has eligible_quantity => (
    is        => 'rw',
    predicate => '_has_eligible_quantity',
    json_ld   => 'eligibleQuantity',
);


=head2 C<eligible_region>

C<eligibleRegion>

The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.

See also [[ineligibleRegion]].

A eligible_region should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=head2 C<_has_eligible_region>

A predicate for the L</eligible_region> attribute.

=cut

has eligible_region => (
    is        => 'rw',
    predicate => '_has_eligible_region',
    json_ld   => 'eligibleRegion',
);


=head2 C<eligible_transaction_volume>

C<eligibleTransactionVolume>

The transaction volume, in a monetary unit, for which the offer or price
specification is valid, e.g. for indicating a minimal purchasing volume, to
express free shipping above a certain order volume, or to limit the
acceptance of credit cards to purchases to a certain minimal amount.


A eligible_transaction_volume should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=head2 C<_has_eligible_transaction_volume>

A predicate for the L</eligible_transaction_volume> attribute.

=cut

has eligible_transaction_volume => (
    is        => 'rw',
    predicate => '_has_eligible_transaction_volume',
    json_ld   => 'eligibleTransactionVolume',
);


=head2 C<gtin>



A Global Trade Item Number (L<GTIN|https://www.gs1.org/standards/id-keys/gtin>). GTINs identify trade items, including products and services, using numeric identification codes.

The GS1 L<digital link specifications|https://www.gs1.org/standards/Digital-Link/> express GTINs as URLs (URIs, IRIs, etc.). Details including regular expression examples can be found in, Section 6 of the GS1 URI Syntax specification; see also L<schema.org tracking issue|https://github.com/schemaorg/schemaorg/issues/3156#issuecomment-1209522809> for schema.org-specific discussion. A correct [[gtin]] value should be a valid GTIN, which means that it should be an all-numeric string of either 8, 12, 13 or 14 digits, or a "GS1 Digital Link" URL based on such a string. The numeric component should also have a L<valid GS1 check digit|https://www.gs1.org/services/check-digit-calculator> and meet the other rules for valid GTINs. See also L<GS1's GTIN Summary|http://www.gs1.org/barcodes/technical/idkeys/gtin> and L<Wikipedia|https://en.wikipedia.org/wiki/Global_Trade_Item_Number> for more details. Left-padding of the gtin values is not required or encouraged. The [[gtin]] property generalizes the earlier [[gtin8]], [[gtin12]], [[gtin13]], and [[gtin14]] properties.

Note also that this is a definition for how to include GTINs in Schema.org data, and not a definition of GTINs in general - see the GS1 documentation for authoritative details.

A gtin should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_gtin>

A predicate for the L</gtin> attribute.

=cut

has gtin => (
    is        => 'rw',
    predicate => '_has_gtin',
    json_ld   => 'gtin',
);


=head2 C<gtin12>



The GTIN-12 code of the product, or the product to which the offer refers.
The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C.
Company Prefix, Item Reference, and Check Digit used to identify trade
items. See [GS1 GTIN
Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
details.


A gtin12 should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_gtin12>

A predicate for the L</gtin12> attribute.

=cut

has gtin12 => (
    is        => 'rw',
    predicate => '_has_gtin12',
    json_ld   => 'gtin12',
);


=head2 C<gtin13>



The GTIN-13 code of the product, or the product to which the offer refers.
This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit
UPC codes can be converted into a GTIN-13 code by simply adding a preceding
zero. See [GS1 GTIN
Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
details.


A gtin13 should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_gtin13>

A predicate for the L</gtin13> attribute.

=cut

has gtin13 => (
    is        => 'rw',
    predicate => '_has_gtin13',
    json_ld   => 'gtin13',
);


=head2 C<gtin14>



The GTIN-14 code of the product, or the product to which the offer refers.
See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin)
for more details.


A gtin14 should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_gtin14>

A predicate for the L</gtin14> attribute.

=cut

has gtin14 => (
    is        => 'rw',
    predicate => '_has_gtin14',
    json_ld   => 'gtin14',
);


=head2 C<gtin8>



The GTIN-8 code of the product, or the product to which the offer refers.
This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN
Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more
details.


A gtin8 should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_gtin8>

A predicate for the L</gtin8> attribute.

=cut

has gtin8 => (
    is        => 'rw',
    predicate => '_has_gtin8',
    json_ld   => 'gtin8',
);


=head2 C<has_adult_consideration>

C<hasAdultConsideration>

Used to tag an item to be intended or suitable for consumption or use by
adults only.


A has_adult_consideration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdultOrientedEnumeration']>

=back

=head2 C<_has_has_adult_consideration>

A predicate for the L</has_adult_consideration> attribute.

=cut

has has_adult_consideration => (
    is        => 'rw',
    predicate => '_has_has_adult_consideration',
    json_ld   => 'hasAdultConsideration',
);


=head2 C<has_measurement>

C<hasMeasurement>

A product measurement, for example the inseam of pants, the wheel size of a
bicycle, or the gauge of a screw. Usually an exact measurement, but can
also be a range of measurements for adjustable products, for example belts
and ski bindings.


A has_measurement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_has_measurement>

A predicate for the L</has_measurement> attribute.

=cut

has has_measurement => (
    is        => 'rw',
    predicate => '_has_has_measurement',
    json_ld   => 'hasMeasurement',
);


=head2 C<has_merchant_return_policy>

C<hasMerchantReturnPolicy>

Specifies a MerchantReturnPolicy that may be applicable.


A has_merchant_return_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MerchantReturnPolicy']>

=back

=head2 C<_has_has_merchant_return_policy>

A predicate for the L</has_merchant_return_policy> attribute.

=cut

has has_merchant_return_policy => (
    is        => 'rw',
    predicate => '_has_has_merchant_return_policy',
    json_ld   => 'hasMerchantReturnPolicy',
);


=head2 C<includes_object>

C<includesObject>

This links to a node or nodes indicating the exact quantity of the products included in  an L<SemanticWeb::Schema::Offer> or L<SemanticWeb::Schema::ProductCollection>.

A includes_object should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::TypeAndQuantityNode']>

=back

=head2 C<_has_includes_object>

A predicate for the L</includes_object> attribute.

=cut

has includes_object => (
    is        => 'rw',
    predicate => '_has_includes_object',
    json_ld   => 'includesObject',
);


=head2 C<ineligible_region>

C<ineligibleRegion>

The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.

See also [[eligibleRegion]].

A ineligible_region should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GeoShape']>

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<Str>

=back

=head2 C<_has_ineligible_region>

A predicate for the L</ineligible_region> attribute.

=cut

has ineligible_region => (
    is        => 'rw',
    predicate => '_has_ineligible_region',
    json_ld   => 'ineligibleRegion',
);


=head2 C<inventory_level>

C<inventoryLevel>

The current approximate inventory level for the item or items.


A inventory_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_inventory_level>

A predicate for the L</inventory_level> attribute.

=cut

has inventory_level => (
    is        => 'rw',
    predicate => '_has_inventory_level',
    json_ld   => 'inventoryLevel',
);


=head2 C<is_family_friendly>

C<isFamilyFriendly>

Indicates whether this content is family friendly.


A is_family_friendly should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_is_family_friendly>

A predicate for the L</is_family_friendly> attribute.

=cut

has is_family_friendly => (
    is        => 'rw',
    predicate => '_has_is_family_friendly',
    json_ld   => 'isFamilyFriendly',
);


=head2 C<item_condition>

C<itemCondition>

A predefined value from OfferItemCondition specifying the condition of the
product or service, or the products or services included in the offer. Also
used for product return policies to specify the condition of products
accepted for returns.


A item_condition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OfferItemCondition']>

=back

=head2 C<_has_item_condition>

A predicate for the L</item_condition> attribute.

=cut

has item_condition => (
    is        => 'rw',
    predicate => '_has_item_condition',
    json_ld   => 'itemCondition',
);


=head2 C<item_offered>

C<itemOffered>

An item being offered (or demanded). The transactional nature of the offer or demand is documented using [[businessFunction]], e.g. sell, lease etc. While several common expected types are listed explicitly in this definition, others can be used. Using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.

A item_offered should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AggregateOffer']>

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=item C<InstanceOf['SemanticWeb::Schema::MenuItem']>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=item C<InstanceOf['SemanticWeb::Schema::Trip']>

=back

=head2 C<_has_item_offered>

A predicate for the L</item_offered> attribute.

=cut

has item_offered => (
    is        => 'rw',
    predicate => '_has_item_offered',
    json_ld   => 'itemOffered',
);


=head2 C<lease_length>

C<leaseLength>

Length of the lease for some L<SemanticWeb::Schema::Accommodation>, either particular to some L<SemanticWeb::Schema::Offer> or in some cases intrinsic to the property.

A lease_length should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_lease_length>

A predicate for the L</lease_length> attribute.

=cut

has lease_length => (
    is        => 'rw',
    predicate => '_has_lease_length',
    json_ld   => 'leaseLength',
);


=head2 C<mobile_url>

C<mobileUrl>

The [[mobileUrl]] property is provided for specific situations in which data consumers need to determine whether one of several provided URLs is a dedicated 'mobile site'.

To discourage over-use, and reflecting intial usecases, the property is expected only on L<SemanticWeb::Schema::Product> and L<SemanticWeb::Schema::Offer>, rather than L<SemanticWeb::Schema::Thing>. The general trend in web technology is towards L<responsive design|https://en.wikipedia.org/wiki/Responsive_web_design> in which content can be flexibly adapted to a wide range of browsing environments. Pages and sites referenced with the long-established [[url]] property should ideally also be usable on a wide variety of devices, including mobile phones. In most cases, it would be pointless and counter productive to attempt to update all [[url]] markup to use [[mobileUrl]] for more mobile-oriented pages. The property is intended for the case when items (primarily L<SemanticWeb::Schema::Product> and L<SemanticWeb::Schema::Offer>) have extra URLs hosted on an additional "mobile site" alongside the main one. It should not be taken as an endorsement of this publication style.

A mobile_url should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_mobile_url>

A predicate for the L</mobile_url> attribute.

=cut

has mobile_url => (
    is        => 'rw',
    predicate => '_has_mobile_url',
    json_ld   => 'mobileUrl',
);


=head2 C<mpn>



The Manufacturer Part Number (MPN) of the product, or the product to which
the offer refers.


A mpn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_mpn>

A predicate for the L</mpn> attribute.

=cut

has mpn => (
    is        => 'rw',
    predicate => '_has_mpn',
    json_ld   => 'mpn',
);


=head2 C<offered_by>

C<offeredBy>

A pointer to the organization or person making the offer.


A offered_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_offered_by>

A predicate for the L</offered_by> attribute.

=cut

has offered_by => (
    is        => 'rw',
    predicate => '_has_offered_by',
    json_ld   => 'offeredBy',
);


=head2 C<price>



The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.

Usage guidelines:

=over

=item *

Use the [[priceCurrency]] property (with standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217>, e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies, e.g. "BTC"; well known names for L<Local Exchange Trading Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including L<ambiguous symbols|http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign> such as '$' in the value.


=item *

Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.


=item *

Note that both L<RDFa|http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute> and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.


=item *

Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.


=back

A price should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=head2 C<_has_price>

A predicate for the L</price> attribute.

=cut

has price => (
    is        => 'rw',
    predicate => '_has_price',
    json_ld   => 'price',
);


=head2 C<price_currency>

C<priceCurrency>

The currency of the price, or a price component when attached to L<SemanticWeb::Schema::PriceSpecification> and its subtypes.

Use standard formats: L<ISO 4217 currency format|http://en.wikipedia.org/wiki/ISO_4217>, e.g. "USD"; L<Ticker symbol|https://en.wikipedia.org/wiki/List_of_cryptocurrencies> for cryptocurrencies, e.g. "BTC"; well known names for L<Local Exchange Trading Systems|https://en.wikipedia.org/wiki/Local_exchange_trading_system> (LETS) and other currency types, e.g. "Ithaca HOUR".

A price_currency should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_price_currency>

A predicate for the L</price_currency> attribute.

=cut

has price_currency => (
    is        => 'rw',
    predicate => '_has_price_currency',
    json_ld   => 'priceCurrency',
);


=head2 C<price_specification>

C<priceSpecification>

One or more detailed price specifications, indicating the unit price and
delivery or payment charges.


A price_specification should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=head2 C<_has_price_specification>

A predicate for the L</price_specification> attribute.

=cut

has price_specification => (
    is        => 'rw',
    predicate => '_has_price_specification',
    json_ld   => 'priceSpecification',
);


=head2 C<price_valid_until>

C<priceValidUntil>

The date after which the price is no longer available.


A price_valid_until should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_price_valid_until>

A predicate for the L</price_valid_until> attribute.

=cut

has price_valid_until => (
    is        => 'rw',
    predicate => '_has_price_valid_until',
    json_ld   => 'priceValidUntil',
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


=head2 C<reviews>



Review of the item.


A reviews should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=head2 C<_has_reviews>

A predicate for the L</reviews> attribute.

=cut

has reviews => (
    is        => 'rw',
    predicate => '_has_reviews',
    json_ld   => 'reviews',
);


=head2 C<seller>



An entity which offers (sells / leases / lends / loans) the services /
goods. A seller may also be a provider.


A seller should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_seller>

A predicate for the L</seller> attribute.

=cut

has seller => (
    is        => 'rw',
    predicate => '_has_seller',
    json_ld   => 'seller',
);


=head2 C<serial_number>

C<serialNumber>

The serial number or any alphanumeric identifier of a particular product.
When attached to an offer, it is a shortcut for the serial number of the
product included in the offer.


A serial_number should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_serial_number>

A predicate for the L</serial_number> attribute.

=cut

has serial_number => (
    is        => 'rw',
    predicate => '_has_serial_number',
    json_ld   => 'serialNumber',
);


=head2 C<shipping_details>

C<shippingDetails>

Indicates information about the shipping policies and options associated with an L<SemanticWeb::Schema::Offer>.

A shipping_details should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OfferShippingDetails']>

=back

=head2 C<_has_shipping_details>

A predicate for the L</shipping_details> attribute.

=cut

has shipping_details => (
    is        => 'rw',
    predicate => '_has_shipping_details',
    json_ld   => 'shippingDetails',
);


=head2 C<sku>



The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
product or service, or the product to which the offer refers.


A sku should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_sku>

A predicate for the L</sku> attribute.

=cut

has sku => (
    is        => 'rw',
    predicate => '_has_sku',
    json_ld   => 'sku',
);


=head2 C<valid_from>

C<validFrom>

The date when the item becomes valid.


A valid_from should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_from>

A predicate for the L</valid_from> attribute.

=cut

has valid_from => (
    is        => 'rw',
    predicate => '_has_valid_from',
    json_ld   => 'validFrom',
);


=head2 C<valid_through>

C<validThrough>

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.


A valid_through should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_valid_through>

A predicate for the L</valid_through> attribute.

=cut

has valid_through => (
    is        => 'rw',
    predicate => '_has_valid_through',
    json_ld   => 'validThrough',
);


=head2 C<warranty>



The warranty promise(s) included in the offer.


A warranty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WarrantyPromise']>

=back

=head2 C<_has_warranty>

A predicate for the L</warranty> attribute.

=cut

has warranty => (
    is        => 'rw',
    predicate => '_has_warranty',
    json_ld   => 'warranty',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
