package SemanticWeb::Schema::Product;

# ABSTRACT: Any offered product or service

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Product';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Any offered product or service. For example: a pair of shoes; a concert
ticket; the rental of a car; a haircut; or an episode of a TV show streamed
online.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

=begin html

A property-value pair representing an additional characteristics of the
entitity, e.g. a product feature or another characteristic for which there
is no matching property in schema.org.</p> <p>Note: Publishers should be
aware that applications designed to use specific schema.org properties
(e.g. http://schema.org/width, http://schema.org/color,
http://schema.org/gtin13, ...) will typically expect such data to be
provided using those properties, rather than using the generic
property/value mechanism.

=end html


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=cut

has additional_property => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalProperty',
    json_ld_serializer => \&_serialize_additional_property,
);

sub _serialize_additional_property { $_[0]->_serializer('additional_property') }


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


=head2 C<awards>



Awards won by or for this item.


A awards should be one of the following types:

=over

=item C<Str>

=back

=cut

has awards => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'awards',
    json_ld_serializer => \&_serialize_awards,
);

sub _serialize_awards { $_[0]->_serializer('awards') }


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


=head2 C<color>



The color of the product.


A color should be one of the following types:

=over

=item C<Str>

=back

=cut

has color => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'color',
    json_ld_serializer => \&_serialize_color,
);

sub _serialize_color { $_[0]->_serializer('color') }


=head2 C<depth>



The depth of the item.


A depth should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=back

=cut

has depth => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'depth',
    json_ld_serializer => \&_serialize_depth,
);

sub _serialize_depth { $_[0]->_serializer('depth') }


=head2 C<gtin12>



=begin html

The <a
href="http://apps.gs1.org/GDD/glossary/Pages/GTIN-12.aspx">GTIN-12</a> code
of the product, or the product to which the offer refers. The GTIN-12 is
the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix,
Item Reference, and Check Digit used to identify trade items. See <a
href="http://www.gs1.org/barcodes/technical/idkeys/gtin">GS1 GTIN
Summary</a> for more details.

=end html


A gtin12 should be one of the following types:

=over

=item C<Str>

=back

=cut

has gtin12 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gtin12',
    json_ld_serializer => \&_serialize_gtin12,
);

sub _serialize_gtin12 { $_[0]->_serializer('gtin12') }


=head2 C<gtin13>



=begin html

The <a
href="http://apps.gs1.org/GDD/glossary/Pages/GTIN-13.aspx">GTIN-13</a> code
of the product, or the product to which the offer refers. This is
equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes
can be converted into a GTIN-13 code by simply adding a preceeding zero.
See <a href="http://www.gs1.org/barcodes/technical/idkeys/gtin">GS1 GTIN
Summary</a> for more details.

=end html


A gtin13 should be one of the following types:

=over

=item C<Str>

=back

=cut

has gtin13 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gtin13',
    json_ld_serializer => \&_serialize_gtin13,
);

sub _serialize_gtin13 { $_[0]->_serializer('gtin13') }


=head2 C<gtin14>



=begin html

The <a
href="http://apps.gs1.org/GDD/glossary/Pages/GTIN-14.aspx">GTIN-14</a> code
of the product, or the product to which the offer refers. See <a
href="http://www.gs1.org/barcodes/technical/idkeys/gtin">GS1 GTIN
Summary</a> for more details.

=end html


A gtin14 should be one of the following types:

=over

=item C<Str>

=back

=cut

has gtin14 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gtin14',
    json_ld_serializer => \&_serialize_gtin14,
);

sub _serialize_gtin14 { $_[0]->_serializer('gtin14') }


=head2 C<gtin8>



=begin html

The <a href="http://apps.gs1.org/GDD/glossary/Pages/GTIN-8.aspx">GTIN-8</a>
code of the product, or the product to which the offer refers. This code is
also known as EAN/UCC-8 or 8-digit EAN. See <a
href="http://www.gs1.org/barcodes/technical/idkeys/gtin">GS1 GTIN
Summary</a> for more details.

=end html


A gtin8 should be one of the following types:

=over

=item C<Str>

=back

=cut

has gtin8 => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gtin8',
    json_ld_serializer => \&_serialize_gtin8,
);

sub _serialize_gtin8 { $_[0]->_serializer('gtin8') }


=head2 C<height>



The height of the item.


A height should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has height => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'height',
    json_ld_serializer => \&_serialize_height,
);

sub _serialize_height { $_[0]->_serializer('height') }


=head2 C<is_accessory_or_spare_part_for>

C<isAccessoryOrSparePartFor>

A pointer to another product (or multiple products) for which this product
is an accessory or spare part.


A is_accessory_or_spare_part_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has is_accessory_or_spare_part_for => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isAccessoryOrSparePartFor',
    json_ld_serializer => \&_serialize_is_accessory_or_spare_part_for,
);

sub _serialize_is_accessory_or_spare_part_for { $_[0]->_serializer('is_accessory_or_spare_part_for') }


=head2 C<is_consumable_for>

C<isConsumableFor>

A pointer to another product (or multiple products) for which this product
is a consumable.


A is_consumable_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has is_consumable_for => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isConsumableFor',
    json_ld_serializer => \&_serialize_is_consumable_for,
);

sub _serialize_is_consumable_for { $_[0]->_serializer('is_consumable_for') }


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


=head2 C<item_condition>

C<itemCondition>

A predefined value from OfferItemCondition or a textual description of the
condition of the product or service, or the products or services included
in the offer.


A item_condition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::OfferItemCondition']>

=back

=cut

has item_condition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'itemCondition',
    json_ld_serializer => \&_serialize_item_condition,
);

sub _serialize_item_condition { $_[0]->_serializer('item_condition') }


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


=head2 C<manufacturer>



The manufacturer of the product.


A manufacturer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has manufacturer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'manufacturer',
    json_ld_serializer => \&_serialize_manufacturer,
);

sub _serialize_manufacturer { $_[0]->_serializer('manufacturer') }


=head2 C<material>



A material that something is made from, e.g. leather, wool, cotton, paper.


A material should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=back

=cut

has material => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'material',
    json_ld_serializer => \&_serialize_material,
);

sub _serialize_material { $_[0]->_serializer('material') }


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

=cut

has model => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'model',
    json_ld_serializer => \&_serialize_model,
);

sub _serialize_model { $_[0]->_serializer('model') }


=head2 C<mpn>



The Manufacturer Part Number (MPN) of the product, or the product to which
the offer refers.


A mpn should be one of the following types:

=over

=item C<Str>

=back

=cut

has mpn => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'mpn',
    json_ld_serializer => \&_serialize_mpn,
);

sub _serialize_mpn { $_[0]->_serializer('mpn') }


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


=head2 C<product_id>

C<productID>

=begin html

The product identifier, such as ISBN. For example: <code>meta
itemprop="productID" content="isbn:123-456-789"</code>.

=end html


A product_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has product_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productID',
    json_ld_serializer => \&_serialize_product_id,
);

sub _serialize_product_id { $_[0]->_serializer('product_id') }


=head2 C<production_date>

C<productionDate>

The date of production of the item, e.g. vehicle.


A production_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has production_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productionDate',
    json_ld_serializer => \&_serialize_production_date,
);

sub _serialize_production_date { $_[0]->_serializer('production_date') }


=head2 C<purchase_date>

C<purchaseDate>

The date the item e.g. vehicle was purchased by the current owner.


A purchase_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has purchase_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'purchaseDate',
    json_ld_serializer => \&_serialize_purchase_date,
);

sub _serialize_purchase_date { $_[0]->_serializer('purchase_date') }


=head2 C<release_date>

C<releaseDate>

The release date of a product or product model. This can be used to
distinguish the exact variant of a product.


A release_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has release_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'releaseDate',
    json_ld_serializer => \&_serialize_release_date,
);

sub _serialize_release_date { $_[0]->_serializer('release_date') }


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


=head2 C<reviews>



Review of the item.


A reviews should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Review']>

=back

=cut

has reviews => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'reviews',
    json_ld_serializer => \&_serialize_reviews,
);

sub _serialize_reviews { $_[0]->_serializer('reviews') }


=head2 C<sku>



The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
product or service, or the product to which the offer refers.


A sku should be one of the following types:

=over

=item C<Str>

=back

=cut

has sku => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sku',
    json_ld_serializer => \&_serialize_sku,
);

sub _serialize_sku { $_[0]->_serializer('sku') }


=head2 C<weight>



The weight of the product or person.


A weight should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has weight => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'weight',
    json_ld_serializer => \&_serialize_weight,
);

sub _serialize_weight { $_[0]->_serializer('weight') }


=head2 C<width>



The width of the item.


A width should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has width => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'width',
    json_ld_serializer => \&_serialize_width,
);

sub _serialize_width { $_[0]->_serializer('width') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
