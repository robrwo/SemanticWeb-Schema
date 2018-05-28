package LDF::Schema::OwnershipInfo;

# ABSTRACT: A structured value providing information about when a certain organization or person owned a certain product.

use Moo;

extends qw/ LDF::Schema::StructuredValue /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A structured value providing information about when a certain organization
or person owned a certain product.




=head1 ATTRIBUTES


=head2 C<acquired_from>

C<acquiredFrom>

The organization or person from which the product was acquired.


A acquired_from should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has acquired_from => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<owned_from>

C<ownedFrom>

The date and time of obtaining the product.


A owned_from should be one of the following types:

=over

=item C<Str>

=back

=cut

has owned_from => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<owned_through>

C<ownedThrough>

The date and time of giving up ownership on the product.


A owned_through should be one of the following types:

=over

=item C<Str>

=back

=cut

has owned_through => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<type_of_good>

C<typeOfGood>

The product that this structured value is referring to.


A type_of_good should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Product']>

=item C<InstanceOf['LDF::Schema::Service']>

=back

=cut

has type_of_good => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'OwnershipInfo' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'acquiredFrom' => $self->curry::_serializer('acquired_from'),
       'ownedFrom' => $self->curry::_serializer('owned_from'),
       'ownedThrough' => $self->curry::_serializer('owned_through'),
       'typeOfGood' => $self->curry::_serializer('type_of_good'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::StructuredValue>

=cut

1;
