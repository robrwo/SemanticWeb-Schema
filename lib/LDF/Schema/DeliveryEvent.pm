package LDF::Schema::DeliveryEvent;

# ABSTRACT: An event involving the delivery of an item.

use Moo;

extends qw/ LDF::Schema::Event /;


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
);


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
);


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
);


=head2 C<has_delivery_method>

C<hasDeliveryMethod>

Method used for delivery or shipping.


A has_delivery_method should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::DeliveryMethod']>

=back

=cut

has has_delivery_method => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DeliveryEvent' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { accessCode => 'access_code' },
      { availableFrom => 'available_from' },
      { availableThrough => 'available_through' },
      { hasDeliveryMethod => 'has_delivery_method' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Event>

=cut

1;
