use utf8;

package SemanticWeb::Schema::DeliveryEvent;

# ABSTRACT: An event involving the delivery of an item.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'DeliveryEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

An event involving the delivery of an item.




=head1 ATTRIBUTES


=head2 C<access_code>

C<accessCode>

Password, PIN, or access code needed for delivery (e.g. from a locker).


A access_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_access_code>

A predicate for the L</access_code> attribute.

=cut

has access_code => (
    is        => 'rw',
    predicate => '_has_access_code',
    json_ld   => 'accessCode',
);


=head2 C<available_from>

C<availableFrom>

When the item is available for pickup from the store, locker, etc.


A available_from should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_available_from>

A predicate for the L</available_from> attribute.

=cut

has available_from => (
    is        => 'rw',
    predicate => '_has_available_from',
    json_ld   => 'availableFrom',
);


=head2 C<available_through>

C<availableThrough>

After this date, the item will no longer be available for pickup.


A available_through should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_available_through>

A predicate for the L</available_through> attribute.

=cut

has available_through => (
    is        => 'rw',
    predicate => '_has_available_through',
    json_ld   => 'availableThrough',
);


=head2 C<has_delivery_method>

C<hasDeliveryMethod>

Method used for delivery or shipping.


A has_delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=head2 C<_has_has_delivery_method>

A predicate for the L</has_delivery_method> attribute.

=cut

has has_delivery_method => (
    is        => 'rw',
    predicate => '_has_has_delivery_method',
    json_ld   => 'hasDeliveryMethod',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
