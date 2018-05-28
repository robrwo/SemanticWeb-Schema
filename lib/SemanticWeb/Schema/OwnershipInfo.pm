package SemanticWeb::Schema::OwnershipInfo;

# ABSTRACT: A structured value providing information about when a certain organization or person owned a certain product.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


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

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has acquired_from => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'acquiredFrom',
    json_ld_serializer => \&_serialize_acquired_from,
);

sub _serialize_acquired_from { $_[0]->_serializer('acquired_from') }


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
    json_ld   => 'ownedFrom',
    json_ld_serializer => \&_serialize_owned_from,
);

sub _serialize_owned_from { $_[0]->_serializer('owned_from') }


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
    json_ld   => 'ownedThrough',
    json_ld_serializer => \&_serialize_owned_through,
);

sub _serialize_owned_through { $_[0]->_serializer('owned_through') }


=head2 C<type_of_good>

C<typeOfGood>

The product that this structured value is referring to.


A type_of_good should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=cut

has type_of_good => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'typeOfGood',
    json_ld_serializer => \&_serialize_type_of_good,
);

sub _serialize_type_of_good { $_[0]->_serializer('type_of_good') }




around json_ld_type => sub { return 'OwnershipInfo' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'acquiredFrom' => \&_serialize_acquired_from,
       'ownedFrom' => \&_serialize_owned_from,
       'ownedThrough' => \&_serialize_owned_through,
       'typeOfGood' => \&_serialize_type_of_good,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
