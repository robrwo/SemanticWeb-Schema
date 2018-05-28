package SemanticWeb::Schema::SomeProducts;

# ABSTRACT: A placeholder for multiple similar products of the same kind.

use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A placeholder for multiple similar products of the same kind.




=head1 ATTRIBUTES


=head2 C<inventory_level>

C<inventoryLevel>

The current approximate inventory level for the item or items.


A inventory_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has inventory_level => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inventoryLevel',
    json_ld_serializer => \&_serialize_inventory_level,
);

sub _serialize_inventory_level { $_[0]->_serializer('inventory_level') }




around json_ld_type => sub { return 'SomeProducts' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'inventoryLevel' => \&_serialize_inventory_level,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
