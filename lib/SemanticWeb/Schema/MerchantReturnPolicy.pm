use utf8;

package SemanticWeb::Schema::MerchantReturnPolicy;

# ABSTRACT: A MerchantReturnPolicy provides information about product return policies associated with an [[Organization]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'MerchantReturnPolicy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A MerchantReturnPolicy provides information about product return policies associated with an L<SemanticWeb::Schema::Organization>, L<SemanticWeb::Schema::Product>, or L<SemanticWeb::Schema::Offer>.



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


=head2 C<applicable_country>

C<applicableCountry>

A country where a particular merchant return policy applies to, for example
the two-letter ISO 3166-1 alpha-2 country code.


A applicable_country should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=item C<Str>

=back

=head2 C<_has_applicable_country>

A predicate for the L</applicable_country> attribute.

=cut

has applicable_country => (
    is        => 'rw',
    predicate => '_has_applicable_country',
    json_ld   => 'applicableCountry',
);


=head2 C<customer_remorse_return_fees>

C<customerRemorseReturnFees>

The type of return fees if the product is returned due to customer remorse.


A customer_remorse_return_fees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnFeesEnumeration']>

=back

=head2 C<_has_customer_remorse_return_fees>

A predicate for the L</customer_remorse_return_fees> attribute.

=cut

has customer_remorse_return_fees => (
    is        => 'rw',
    predicate => '_has_customer_remorse_return_fees',
    json_ld   => 'customerRemorseReturnFees',
);


=head2 C<customer_remorse_return_label_source>

C<customerRemorseReturnLabelSource>

The method (from an enumeration) by which the customer obtains a return
shipping label for a product returned due to customer remorse.


A customer_remorse_return_label_source should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnLabelSourceEnumeration']>

=back

=head2 C<_has_customer_remorse_return_label_source>

A predicate for the L</customer_remorse_return_label_source> attribute.

=cut

has customer_remorse_return_label_source => (
    is        => 'rw',
    predicate => '_has_customer_remorse_return_label_source',
    json_ld   => 'customerRemorseReturnLabelSource',
);


=head2 C<customer_remorse_return_shipping_fees_amount>

C<customerRemorseReturnShippingFeesAmount>

The amount of shipping costs if a product is returned due to customer remorse. Applicable when property [[customerRemorseReturnFees]] equals L<SemanticWeb::Schema::ReturnShippingFees>.

A customer_remorse_return_shipping_fees_amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=head2 C<_has_customer_remorse_return_shipping_fees_amount>

A predicate for the L</customer_remorse_return_shipping_fees_amount> attribute.

=cut

has customer_remorse_return_shipping_fees_amount => (
    is        => 'rw',
    predicate => '_has_customer_remorse_return_shipping_fees_amount',
    json_ld   => 'customerRemorseReturnShippingFeesAmount',
);


=head2 C<in_store_returns_offered>

C<inStoreReturnsOffered>

Are in-store returns offered? (For more advanced return methods use the [[returnMethod]] property.)

A in_store_returns_offered should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_in_store_returns_offered>

A predicate for the L</in_store_returns_offered> attribute.

=cut

has in_store_returns_offered => (
    is        => 'rw',
    predicate => '_has_in_store_returns_offered',
    json_ld   => 'inStoreReturnsOffered',
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


=head2 C<item_defect_return_fees>

C<itemDefectReturnFees>

The type of return fees for returns of defect products.


A item_defect_return_fees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnFeesEnumeration']>

=back

=head2 C<_has_item_defect_return_fees>

A predicate for the L</item_defect_return_fees> attribute.

=cut

has item_defect_return_fees => (
    is        => 'rw',
    predicate => '_has_item_defect_return_fees',
    json_ld   => 'itemDefectReturnFees',
);


=head2 C<item_defect_return_label_source>

C<itemDefectReturnLabelSource>

The method (from an enumeration) by which the customer obtains a return
shipping label for a defect product.


A item_defect_return_label_source should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnLabelSourceEnumeration']>

=back

=head2 C<_has_item_defect_return_label_source>

A predicate for the L</item_defect_return_label_source> attribute.

=cut

has item_defect_return_label_source => (
    is        => 'rw',
    predicate => '_has_item_defect_return_label_source',
    json_ld   => 'itemDefectReturnLabelSource',
);


=head2 C<item_defect_return_shipping_fees_amount>

C<itemDefectReturnShippingFeesAmount>

Amount of shipping costs for defect product returns. Applicable when property [[itemDefectReturnFees]] equals L<SemanticWeb::Schema::ReturnShippingFees>.

A item_defect_return_shipping_fees_amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=head2 C<_has_item_defect_return_shipping_fees_amount>

A predicate for the L</item_defect_return_shipping_fees_amount> attribute.

=cut

has item_defect_return_shipping_fees_amount => (
    is        => 'rw',
    predicate => '_has_item_defect_return_shipping_fees_amount',
    json_ld   => 'itemDefectReturnShippingFeesAmount',
);


=head2 C<merchant_return_days>

C<merchantReturnDays>

Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as L<SemanticWeb::Schema::MerchantReturnFiniteReturnWindow>.

A merchant_return_days should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_merchant_return_days>

A predicate for the L</merchant_return_days> attribute.

=cut

has merchant_return_days => (
    is        => 'rw',
    predicate => '_has_merchant_return_days',
    json_ld   => 'merchantReturnDays',
);


=head2 C<merchant_return_link>

C<merchantReturnLink>

Specifies a Web page or service by URL, for product returns.


A merchant_return_link should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_merchant_return_link>

A predicate for the L</merchant_return_link> attribute.

=cut

has merchant_return_link => (
    is        => 'rw',
    predicate => '_has_merchant_return_link',
    json_ld   => 'merchantReturnLink',
);


=head2 C<refund_type>

C<refundType>

A refund type, from an enumerated list.


A refund_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RefundTypeEnumeration']>

=back

=head2 C<_has_refund_type>

A predicate for the L</refund_type> attribute.

=cut

has refund_type => (
    is        => 'rw',
    predicate => '_has_refund_type',
    json_ld   => 'refundType',
);


=head2 C<restocking_fee>

C<restockingFee>

Use L<SemanticWeb::Schema::MonetaryAmount> to specify a fixed restocking fee for product returns, or use L<SemanticWeb::Schema::Number> to specify a percentage of the product price paid by the customer.

A restocking_fee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=head2 C<_has_restocking_fee>

A predicate for the L</restocking_fee> attribute.

=cut

has restocking_fee => (
    is        => 'rw',
    predicate => '_has_restocking_fee',
    json_ld   => 'restockingFee',
);


=head2 C<return_fees>

C<returnFees>

The type of return fees for purchased products (for any return reason).


A return_fees should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnFeesEnumeration']>

=back

=head2 C<_has_return_fees>

A predicate for the L</return_fees> attribute.

=cut

has return_fees => (
    is        => 'rw',
    predicate => '_has_return_fees',
    json_ld   => 'returnFees',
);


=head2 C<return_label_source>

C<returnLabelSource>

The method (from an enumeration) by which the customer obtains a return
shipping label for a product returned for any reason.


A return_label_source should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnLabelSourceEnumeration']>

=back

=head2 C<_has_return_label_source>

A predicate for the L</return_label_source> attribute.

=cut

has return_label_source => (
    is        => 'rw',
    predicate => '_has_return_label_source',
    json_ld   => 'returnLabelSource',
);


=head2 C<return_method>

C<returnMethod>

The type of return method offered, specified from an enumeration.


A return_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ReturnMethodEnumeration']>

=back

=head2 C<_has_return_method>

A predicate for the L</return_method> attribute.

=cut

has return_method => (
    is        => 'rw',
    predicate => '_has_return_method',
    json_ld   => 'returnMethod',
);


=head2 C<return_policy_category>

C<returnPolicyCategory>

Specifies an applicable return policy (from an enumeration).


A return_policy_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MerchantReturnEnumeration']>

=back

=head2 C<_has_return_policy_category>

A predicate for the L</return_policy_category> attribute.

=cut

has return_policy_category => (
    is        => 'rw',
    predicate => '_has_return_policy_category',
    json_ld   => 'returnPolicyCategory',
);


=head2 C<return_policy_country>

C<returnPolicyCountry>

The country where the product has to be sent to for returns, for example "Ireland" using the [[name]] property of L<SemanticWeb::Schema::Country>. You can also provide the two-letter L<ISO 3166-1 alpha-2 country code|http://en.wikipedia.org/wiki/ISO_3166-1>. Note that this can be different from the country where the product was originally shipped from or sent to.

A return_policy_country should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=item C<Str>

=back

=head2 C<_has_return_policy_country>

A predicate for the L</return_policy_country> attribute.

=cut

has return_policy_country => (
    is        => 'rw',
    predicate => '_has_return_policy_country',
    json_ld   => 'returnPolicyCountry',
);


=head2 C<return_policy_seasonal_override>

C<returnPolicySeasonalOverride>

Seasonal override of a return policy.


A return_policy_seasonal_override should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MerchantReturnPolicySeasonalOverride']>

=back

=head2 C<_has_return_policy_seasonal_override>

A predicate for the L</return_policy_seasonal_override> attribute.

=cut

has return_policy_seasonal_override => (
    is        => 'rw',
    predicate => '_has_return_policy_seasonal_override',
    json_ld   => 'returnPolicySeasonalOverride',
);


=head2 C<return_shipping_fees_amount>

C<returnShippingFeesAmount>

Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals L<SemanticWeb::Schema::ReturnShippingFees>.

A return_shipping_fees_amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=head2 C<_has_return_shipping_fees_amount>

A predicate for the L</return_shipping_fees_amount> attribute.

=cut

has return_shipping_fees_amount => (
    is        => 'rw',
    predicate => '_has_return_shipping_fees_amount',
    json_ld   => 'returnShippingFeesAmount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
