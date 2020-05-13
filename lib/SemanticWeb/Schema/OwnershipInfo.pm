use utf8;

package SemanticWeb::Schema::OwnershipInfo;

# ABSTRACT: A structured value providing information about when a certain organization or person owned a certain product.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'OwnershipInfo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

A structured value providing information about when a certain organization
or person owned a certain product.




=head1 ATTRIBUTES


=head2 C<acquired_from>

C<acquiredFrom>

The organization or person from which the product was acquired.


A acquired_from should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_acquired_from>

A predicate for the L</acquired_from> attribute.

=cut

has acquired_from => (
    is        => 'rw',
    predicate => '_has_acquired_from',
    json_ld   => 'acquiredFrom',
);


=head2 C<owned_from>

C<ownedFrom>

The date and time of obtaining the product.


A owned_from should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_owned_from>

A predicate for the L</owned_from> attribute.

=cut

has owned_from => (
    is        => 'rw',
    predicate => '_has_owned_from',
    json_ld   => 'ownedFrom',
);


=head2 C<owned_through>

C<ownedThrough>

The date and time of giving up ownership on the product.


A owned_through should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_owned_through>

A predicate for the L</owned_through> attribute.

=cut

has owned_through => (
    is        => 'rw',
    predicate => '_has_owned_through',
    json_ld   => 'ownedThrough',
);


=head2 C<type_of_good>

C<typeOfGood>

The product that this structured value is referring to.


A type_of_good should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=head2 C<_has_type_of_good>

A predicate for the L</type_of_good> attribute.

=cut

has type_of_good => (
    is        => 'rw',
    predicate => '_has_type_of_good',
    json_ld   => 'typeOfGood',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
