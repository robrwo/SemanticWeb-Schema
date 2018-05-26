package LDF::Schema::SomeProducts;

# ABSTRACT: A placeholder for multiple similar products of the same kind.

use Moo;

extends qw/ LDF::Schema::Product /;


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

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has inventory_level => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'SomeProducts' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { inventoryLevel => 'inventory_level' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Product>

=cut

1;
