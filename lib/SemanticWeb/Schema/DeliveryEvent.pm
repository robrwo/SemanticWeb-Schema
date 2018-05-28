package SemanticWeb::Schema::DeliveryEvent;

# ABSTRACT: An event involving the delivery of an item.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has access_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'accessCode',
    json_ld_serializer => \&_serialize_access_code,
);

sub _serialize_access_code { $_[0]->_serializer('access_code') }


=head2 C<available_from>

C<availableFrom>

When the item is available for pickup from the store, locker, etc.


A available_from should be one of the following types:

=over

=item C<Str>

=back

=cut

has available_from => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableFrom',
    json_ld_serializer => \&_serialize_available_from,
);

sub _serialize_available_from { $_[0]->_serializer('available_from') }


=head2 C<available_through>

C<availableThrough>

After this date, the item will no longer be available for pickup.


A available_through should be one of the following types:

=over

=item C<Str>

=back

=cut

has available_through => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableThrough',
    json_ld_serializer => \&_serialize_available_through,
);

sub _serialize_available_through { $_[0]->_serializer('available_through') }


=head2 C<has_delivery_method>

C<hasDeliveryMethod>

Method used for delivery or shipping.


A has_delivery_method should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DeliveryMethod']>

=back

=cut

has has_delivery_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'hasDeliveryMethod',
    json_ld_serializer => \&_serialize_has_delivery_method,
);

sub _serialize_has_delivery_method { $_[0]->_serializer('has_delivery_method') }




around json_ld_type => sub { return 'DeliveryEvent' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'accessCode' => \&_serialize_access_code,
       'availableFrom' => \&_serialize_available_from,
       'availableThrough' => \&_serialize_available_through,
       'hasDeliveryMethod' => \&_serialize_has_delivery_method,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
