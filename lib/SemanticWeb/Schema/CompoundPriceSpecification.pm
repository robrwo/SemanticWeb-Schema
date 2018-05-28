package SemanticWeb::Schema::CompoundPriceSpecification;

# ABSTRACT: A compound price specification is one that bundles multiple prices that all apply in combination for different dimensions of consumption

use Moo;

extends qw/ SemanticWeb::Schema::PriceSpecification /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A compound price specification is one that bundles multiple prices that all
apply in combination for different dimensions of consumption. Use the name
property of the attached unit price specification for indicating the
dimension of a price component (e.g. "electricity" or "final cleaning").




=head1 ATTRIBUTES


=head2 C<price_component>

C<priceComponent>

=begin html

This property links to all <a class="localLink"
href="http://schema.org/UnitPriceSpecification">UnitPriceSpecification</a>
nodes that apply in parallel for the <a class="localLink"
href="http://schema.org/CompoundPriceSpecification">CompoundPriceSpecificat
ion</a> node.

=end html


A price_component should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::UnitPriceSpecification']>

=back

=cut

has price_component => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'priceComponent',
    json_ld_serializer => \&_serialize_price_component,
);

sub _serialize_price_component { $_[0]->_serializer('price_component') }




around json_ld_type => sub { return 'CompoundPriceSpecification' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'priceComponent' => \&_serialize_price_component,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PriceSpecification>

=cut

1;
