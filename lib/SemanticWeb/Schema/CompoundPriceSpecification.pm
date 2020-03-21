use utf8;

package SemanticWeb::Schema::CompoundPriceSpecification;

# ABSTRACT: A compound price specification is one that bundles multiple prices that all apply in combination for different dimensions of consumption

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use MooX::JSON_LD 'CompoundPriceSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

A compound price specification is one that bundles multiple prices that all
apply in combination for different dimensions of consumption. Use the name
property of the attached unit price specification for indicating the
dimension of a price component (e.g. "electricity" or "final cleaning").




=head1 ATTRIBUTES


=head2 C<price_component>

C<priceComponent>

=begin html

<p>This property links to all <a class="localLink"
href="http://schema.org/UnitPriceSpecification">UnitPriceSpecification</a>
nodes that apply in parallel for the <a class="localLink"
href="http://schema.org/CompoundPriceSpecification">CompoundPriceSpecificat
ion</a> node.<p>

=end html


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




=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
