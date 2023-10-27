use utf8;

package SemanticWeb::Schema::Product;

# ABSTRACT: Any offered product or service

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Product';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

Any offered product or service. For example: a pair of shoes; a concert
ticket; the rental of a car; a haircut; or an episode of a TV show streamed
online.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

A property-value pair representing an additional characteristic of the
entity, e.g. a product feature or another characteristic for which there is
no matching property in schema.org. Note: Publishers should be aware that
applications designed to use specific schema.org properties (e.g.
http://schema.org/width, http://schema.org/color, http://schema.org/gtin13,
...) will typically expect such data to be provided using those properties,
rather than using the generic property/value mechanism. 


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=head2 C<_has_additional_property>

A predicate for the L</additional_property> attribute.

=cut

has additional_property => (
    is        => 'rw',
    predicate => '_has_additional_property',
    json_ld   => 'additionalProperty',
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


=head2 C<awards>



Awards won by or for this item.


A awards should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_awards>

A predicate for the L</awards> attribute.

=cut

has awards => (
    is        => 'rw',
    predicate => '_has_awards',
    json_ld   => 'awards',
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


=head2 C<color>



The color of the product.


A color should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_color>

A predicate for the L</color> attribute.

=cut

has color => (
    is        => 'rw',
    predicate => '_has_color',
    json_ld   => 'color',
);


=head2 C<country_of_assembly>

C<countryOfAssembly>

The place where the product was assembled.


A country_of_assembly should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_country_of_assembly>

A predicate for the L</country_of_assembly> attribute.

=cut

has country_of_assembly => (
    is        => 'rw',
    predicate => '_has_country_of_assembly',
    json_ld   => 'countryOfAssembly',
);


=head2 C<country_of_last_processing>

C<countryOfLastProcessing>

The place where the item (typically L<SemanticWeb::Schema::Product>) was last processed and tested before importation.

A country_of_last_processing should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_country_of_last_processing>

A predicate for the L</country_of_last_processing> attribute.

=cut

has country_of_last_processing => (
    is        => 'rw',
    predicate => '_has_country_of_last_processing',
    json_ld   => 'countryOfLastProcessing',
);


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of origin of something, including products as well as creative  works such as movie and TV content.

In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of L<SemanticWeb::Schema::CreativeWork> it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.

In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.

A country_of_origin should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=back

=head2 C<_has_country_of_origin>

A predicate for the L</country_of_origin> attribute.

=cut

has country_of_origin => (
    is        => 'rw',
    predicate => '_has_country_of_origin',
    json_ld   => 'countryOfOrigin',
);


=head2 C<depth>



The depth of the item.


A depth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_depth>

A predicate for the L</depth> attribute.

=cut

has depth => (
    is        => 'rw',
    predicate => '_has_depth',
    json_ld   => 'depth',
);


=head2 C<funding>



A L<SemanticWeb::Schema::Grant> that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].

A funding should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Grant']>

=back

=head2 C<_has_funding>

A predicate for the L</funding> attribute.

=cut

has funding => (
    is        => 'rw',
    predicate => '_has_funding',
    json_ld   => 'funding',
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


=head2 C<has_energy_consumption_details>

C<hasEnergyConsumptionDetails>

Defines the energy efficiency Category (also known as "class" or "rating")
for a product according to an international energy efficiency standard.


A has_energy_consumption_details should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EnergyConsumptionDetails']>

=back

=head2 C<_has_has_energy_consumption_details>

A predicate for the L</has_energy_consumption_details> attribute.

=cut

has has_energy_consumption_details => (
    is        => 'rw',
    predicate => '_has_has_energy_consumption_details',
    json_ld   => 'hasEnergyConsumptionDetails',
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


=head2 C<has_product_return_policy>

C<hasProductReturnPolicy>

Indicates a ProductReturnPolicy that may be applicable.


A has_product_return_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductReturnPolicy']>

=back

=head2 C<_has_has_product_return_policy>

A predicate for the L</has_product_return_policy> attribute.

=cut

has has_product_return_policy => (
    is        => 'rw',
    predicate => '_has_has_product_return_policy',
    json_ld   => 'hasProductReturnPolicy',
);


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_height>

A predicate for the L</height> attribute.

=cut

has height => (
    is        => 'rw',
    predicate => '_has_height',
    json_ld   => 'height',
);


=head2 C<in_product_group_with_id>

C<inProductGroupWithID>

Indicates the [[productGroupID]] for a L<SemanticWeb::Schema::ProductGroup> that this product [[isVariantOf]]. 

A in_product_group_with_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_in_product_group_with_id>

A predicate for the L</in_product_group_with_id> attribute.

=cut

has in_product_group_with_id => (
    is        => 'rw',
    predicate => '_has_in_product_group_with_id',
    json_ld   => 'inProductGroupWithID',
);


=head2 C<is_accessory_or_spare_part_for>

C<isAccessoryOrSparePartFor>

A pointer to another product (or multiple products) for which this product
is an accessory or spare part.


A is_accessory_or_spare_part_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=head2 C<_has_is_accessory_or_spare_part_for>

A predicate for the L</is_accessory_or_spare_part_for> attribute.

=cut

has is_accessory_or_spare_part_for => (
    is        => 'rw',
    predicate => '_has_is_accessory_or_spare_part_for',
    json_ld   => 'isAccessoryOrSparePartFor',
);


=head2 C<is_consumable_for>

C<isConsumableFor>

A pointer to another product (or multiple products) for which this product
is a consumable.


A is_consumable_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=head2 C<_has_is_consumable_for>

A predicate for the L</is_consumable_for> attribute.

=cut

has is_consumable_for => (
    is        => 'rw',
    predicate => '_has_is_consumable_for',
    json_ld   => 'isConsumableFor',
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


=head2 C<is_variant_of>

C<isVariantOf>

Indicates the kind of product that this is a variant of. In the case of L<SemanticWeb::Schema::ProductModel>, this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a L<SemanticWeb::Schema::ProductGroup>, the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with L<SemanticWeb::Schema::ProductGroup>, this property can apply to any L<SemanticWeb::Schema::Product> included in the group.

A is_variant_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductGroup']>

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=head2 C<_has_is_variant_of>

A predicate for the L</is_variant_of> attribute.

=cut

has is_variant_of => (
    is        => 'rw',
    predicate => '_has_is_variant_of',
    json_ld   => 'isVariantOf',
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


=head2 C<keywords>



Keywords or tags used to describe some item. Multiple textual entries in a
keywords list are typically delimited by commas, or by repeating the
property.


A keywords should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_keywords>

A predicate for the L</keywords> attribute.

=cut

has keywords => (
    is        => 'rw',
    predicate => '_has_keywords',
    json_ld   => 'keywords',
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


=head2 C<manufacturer>



The manufacturer of the product.


A manufacturer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_manufacturer>

A predicate for the L</manufacturer> attribute.

=cut

has manufacturer => (
    is        => 'rw',
    predicate => '_has_manufacturer',
    json_ld   => 'manufacturer',
);


=head2 C<material>



A material that something is made from, e.g. leather, wool, cotton, paper.


A material should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<Str>

=back

=head2 C<_has_material>

A predicate for the L</material> attribute.

=cut

has material => (
    is        => 'rw',
    predicate => '_has_material',
    json_ld   => 'material',
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


=head2 C<model>



The model of the product. Use with the URL of a ProductModel or a textual
representation of the model identifier. The URL of the ProductModel can be
from an external source. It is recommended to additionally provide strong
product identifiers via the gtin8/gtin13/gtin14 and mpn properties.


A model should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=item C<Str>

=back

=head2 C<_has_model>

A predicate for the L</model> attribute.

=cut

has model => (
    is        => 'rw',
    predicate => '_has_model',
    json_ld   => 'model',
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


=head2 C<negative_notes>

C<negativeNotes>

Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry 

In the case of a L<SemanticWeb::Schema::Review>, the property describes the [[itemReviewed]] from the perspective of the review; in the case of a L<SemanticWeb::Schema::Product>, the product itself is being described. Since product descriptions 
tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on L<SemanticWeb::Schema::Product>.

The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).

A negative_notes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_negative_notes>

A predicate for the L</negative_notes> attribute.

=cut

has negative_notes => (
    is        => 'rw',
    predicate => '_has_negative_notes',
    json_ld   => 'negativeNotes',
);


=head2 C<nsn>



Indicates the L<NATO stock number|https://en.wikipedia.org/wiki/NATO_Stock_Number> (nsn) of a L<SemanticWeb::Schema::Product>. 

A nsn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_nsn>

A predicate for the L</nsn> attribute.

=cut

has nsn => (
    is        => 'rw',
    predicate => '_has_nsn',
    json_ld   => 'nsn',
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


=head2 C<pattern>



A pattern that something has, for example 'polka dot', 'striped', 'Canadian
flag'. Values are typically expressed as text, although links to controlled
value schemes are also supported.


A pattern should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=head2 C<_has_pattern>

A predicate for the L</pattern> attribute.

=cut

has pattern => (
    is        => 'rw',
    predicate => '_has_pattern',
    json_ld   => 'pattern',
);


=head2 C<positive_notes>

C<positiveNotes>

Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.

In the case of a L<SemanticWeb::Schema::Review>, the property describes the [[itemReviewed]] from the perspective of the review; in the case of a L<SemanticWeb::Schema::Product>, the product itself is being described.

The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).

A positive_notes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::ListItem']>

=item C<InstanceOf['SemanticWeb::Schema::WebContent']>

=item C<Str>

=back

=head2 C<_has_positive_notes>

A predicate for the L</positive_notes> attribute.

=cut

has positive_notes => (
    is        => 'rw',
    predicate => '_has_positive_notes',
    json_ld   => 'positiveNotes',
);


=head2 C<product_id>

C<productID>

The product identifier, such as ISBN. For example: ``` meta
itemprop="productID" content="isbn:123-456-789" ```.


A product_id should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_product_id>

A predicate for the L</product_id> attribute.

=cut

has product_id => (
    is        => 'rw',
    predicate => '_has_product_id',
    json_ld   => 'productID',
);


=head2 C<production_date>

C<productionDate>

The date of production of the item, e.g. vehicle.


A production_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_production_date>

A predicate for the L</production_date> attribute.

=cut

has production_date => (
    is        => 'rw',
    predicate => '_has_production_date',
    json_ld   => 'productionDate',
);


=head2 C<purchase_date>

C<purchaseDate>

The date the item, e.g. vehicle, was purchased by the current owner.


A purchase_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_purchase_date>

A predicate for the L</purchase_date> attribute.

=cut

has purchase_date => (
    is        => 'rw',
    predicate => '_has_purchase_date',
    json_ld   => 'purchaseDate',
);


=head2 C<release_date>

C<releaseDate>

The release date of a product or product model. This can be used to
distinguish the exact variant of a product.


A release_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_release_date>

A predicate for the L</release_date> attribute.

=cut

has release_date => (
    is        => 'rw',
    predicate => '_has_release_date',
    json_ld   => 'releaseDate',
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


=head2 C<size>



A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured L<SemanticWeb::Schema::SizeSpecification>; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable. 

A size should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::SizeSpecification']>

=item C<Str>

=back

=head2 C<_has_size>

A predicate for the L</size> attribute.

=cut

has size => (
    is        => 'rw',
    predicate => '_has_size',
    json_ld   => 'size',
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


=head2 C<weight>



The weight of the product or person.


A weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_weight>

A predicate for the L</weight> attribute.

=cut

has weight => (
    is        => 'rw',
    predicate => '_has_weight',
    json_ld   => 'weight',
);


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_width>

A predicate for the L</width> attribute.

=cut

has width => (
    is        => 'rw',
    predicate => '_has_width',
    json_ld   => 'width',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
