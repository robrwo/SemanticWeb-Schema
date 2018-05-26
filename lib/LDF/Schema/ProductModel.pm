package LDF::Schema::ProductModel;

# ABSTRACT: A datasheet or vendor specification of a product (in the sense of a prototypical description).

use Moo;

extends qw/ LDF::Schema::Product /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A datasheet or vendor specification of a product (in the sense of a
prototypical description).



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<is_variant_of>

C<isVariantOf>

A pointer to a base product from which this product is a variant. It is
safe to infer that the variant inherits all product features from the base
model, unless defined locally. This is not transitive.


A is_variant_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ProductModel']>

=back

=cut

has is_variant_of => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<predecessor_of>

C<predecessorOf>

A pointer from a previous, often discontinued variant of the product to its
newer variant.


A predecessor_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ProductModel']>

=back

=cut

has predecessor_of => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<successor_of>

C<successorOf>

A pointer from a newer variant of a product to its previous, often
discontinued predecessor.


A successor_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ProductModel']>

=back

=cut

has successor_of => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ProductModel' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { isVariantOf => 'is_variant_of' },
      { predecessorOf => 'predecessor_of' },
      { successorOf => 'successor_of' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Product>

=cut

1;
