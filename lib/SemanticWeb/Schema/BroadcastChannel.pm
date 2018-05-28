package SemanticWeb::Schema::BroadcastChannel;

# ABSTRACT: A unique instance of a BroadcastService on a CableOrSatelliteService lineup.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A unique instance of a BroadcastService on a CableOrSatelliteService
lineup.




=head1 ATTRIBUTES


=head2 C<broadcast_channel_id>

C<broadcastChannelId>

The unique address by which the BroadcastService can be identified in a
provider lineup. In US, this is typically a number.


A broadcast_channel_id should be one of the following types:

=over

=item C<Str>

=back

=cut

has broadcast_channel_id => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broadcastChannelId',
    json_ld_serializer => \&_serialize_broadcast_channel_id,
);

sub _serialize_broadcast_channel_id { $_[0]->_serializer('broadcast_channel_id') }


=head2 C<broadcast_service_tier>

C<broadcastServiceTier>

The type of service required to have access to the channel (e.g. Standard
or Premium).


A broadcast_service_tier should be one of the following types:

=over

=item C<Str>

=back

=cut

has broadcast_service_tier => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broadcastServiceTier',
    json_ld_serializer => \&_serialize_broadcast_service_tier,
);

sub _serialize_broadcast_service_tier { $_[0]->_serializer('broadcast_service_tier') }


=head2 C<genre>



Genre of the creative work, broadcast channel or group.


A genre should be one of the following types:

=over

=item C<Str>

=back

=cut

has genre => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'genre',
    json_ld_serializer => \&_serialize_genre,
);

sub _serialize_genre { $_[0]->_serializer('genre') }


=head2 C<in_broadcast_lineup>

C<inBroadcastLineup>

The CableOrSatelliteService offering the channel.


A in_broadcast_lineup should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CableOrSatelliteService']>

=back

=cut

has in_broadcast_lineup => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inBroadcastLineup',
    json_ld_serializer => \&_serialize_in_broadcast_lineup,
);

sub _serialize_in_broadcast_lineup { $_[0]->_serializer('in_broadcast_lineup') }


=head2 C<provides_broadcast_service>

C<providesBroadcastService>

The BroadcastService offered on this channel.


A provides_broadcast_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastService']>

=back

=cut

has provides_broadcast_service => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'providesBroadcastService',
    json_ld_serializer => \&_serialize_provides_broadcast_service,
);

sub _serialize_provides_broadcast_service { $_[0]->_serializer('provides_broadcast_service') }




around json_ld_type => sub { return 'BroadcastChannel' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'broadcastChannelId' => \&_serialize_broadcast_channel_id,
       'broadcastServiceTier' => \&_serialize_broadcast_service_tier,
       'genre' => \&_serialize_genre,
       'inBroadcastLineup' => \&_serialize_in_broadcast_lineup,
       'providesBroadcastService' => \&_serialize_provides_broadcast_service,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
