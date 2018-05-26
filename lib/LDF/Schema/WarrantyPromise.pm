package LDF::Schema::WarrantyPromise;

# ABSTRACT: A structured value representing the duration and scope of services that will be provided to a customer free of charge in case of a defect or malfunction of a product.

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A structured value representing the duration and scope of services that
will be provided to a customer free of charge in case of a defect or
malfunction of a product.




=head1 ATTRIBUTES


=head2 C<duration_of_warranty>

C<durationOfWarranty>

The duration of the warranty promise. Common unitCode values are ANN for
year, MON for months, or DAY for days.


A duration_of_warranty should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has duration_of_warranty => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<warranty_scope>

C<warrantyScope>

The scope of the warranty promise.


A warranty_scope should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::WarrantyScope']>

=back

=cut

has warranty_scope => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'WarrantyPromise' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { durationOfWarranty => 'duration_of_warranty' },
      { warrantyScope => 'warranty_scope' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
