use utf8;

package SemanticWeb::Schema::CompoundPriceSpecification;

# ABSTRACT: A compound price specification is one that bundles multiple prices that all apply in combination for different dimensions of consumption

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use MooX::JSON_LD 'CompoundPriceSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A compound price specification is one that bundles multiple prices that all
apply in combination for different dimensions of consumption. Use the name
property of the attached unit price specification for indicating the
dimension of a price component (e.g. "electricity" or "final cleaning").




=head1 ATTRIBUTES


=head2 C<price_component>

C<priceComponent>

This property links to all [[UnitPriceSpecification]] nodes that apply in
parallel for the [[CompoundPriceSpecification]] node.


A price_component should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::UnitPriceSpecification']>

=back

=head2 C<_has_price_component>

A predicate for the L</price_component> attribute.

=cut

has price_component => (
    is        => 'rw',
    predicate => '_has_price_component',
    json_ld   => 'priceComponent',
);


=head2 C<price_type>

C<priceType>

Defines the type of a price specified for an offered product, for example a
list price, a (temporary) sale price or a manufacturer suggested retail
price. If multiple prices are specified for an offer the [[priceType]]
property can be used to identify the type of each such specified price. The
value of priceType can be specified as a value from enumeration
PriceTypeEnumeration or as a free form text string for price types that are
not already predefined in PriceTypeEnumeration.


A price_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceTypeEnumeration']>

=item C<Str>

=back

=head2 C<_has_price_type>

A predicate for the L</price_type> attribute.

=cut

has price_type => (
    is        => 'rw',
    predicate => '_has_price_type',
    json_ld   => 'priceType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
