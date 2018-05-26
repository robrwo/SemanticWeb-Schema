package LDF::Schema::BroadcastChannel;

# ABSTRACT: A unique instance of a BroadcastService on a CableOrSatelliteService lineup.

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A unique instance of a BroadcastService on a CableOrSatelliteService
lineup.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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
);


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
);


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
);


=head2 C<in_broadcast_lineup>

C<inBroadcastLineup>

The CableOrSatelliteService offering the channel.


A in_broadcast_lineup should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CableOrSatelliteService']>

=back

=cut

has in_broadcast_lineup => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<provides_broadcast_service>

C<providesBroadcastService>

The BroadcastService offered on this channel.


A provides_broadcast_service should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BroadcastService']>

=back

=cut

has provides_broadcast_service => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'BroadcastChannel' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { broadcastChannelId => 'broadcast_channel_id' },
      { broadcastServiceTier => 'broadcast_service_tier' },
      { genre => 'genre' },
      { inBroadcastLineup => 'in_broadcast_lineup' },
      { providesBroadcastService => 'provides_broadcast_service' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
