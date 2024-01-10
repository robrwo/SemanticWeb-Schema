use utf8;

package SemanticWeb::Schema::BroadcastChannel;

# ABSTRACT: A unique instance of a BroadcastService on a CableOrSatelliteService lineup.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'BroadcastChannel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

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

=head2 C<_has_broadcast_channel_id>

A predicate for the L</broadcast_channel_id> attribute.

=cut

has broadcast_channel_id => (
    is        => 'rw',
    predicate => '_has_broadcast_channel_id',
    json_ld   => 'broadcastChannelId',
);


=head2 C<broadcast_frequency>

C<broadcastFrequency>

The frequency used for over-the-air broadcasts. Numeric values or simple
ranges, e.g. 87-99. In addition a shortcut idiom is supported for
frequences of AM and FM radio channels, e.g. "87 FM".


A broadcast_frequency should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastFrequencySpecification']>

=item C<Str>

=back

=head2 C<_has_broadcast_frequency>

A predicate for the L</broadcast_frequency> attribute.

=cut

has broadcast_frequency => (
    is        => 'rw',
    predicate => '_has_broadcast_frequency',
    json_ld   => 'broadcastFrequency',
);


=head2 C<broadcast_service_tier>

C<broadcastServiceTier>

The type of service required to have access to the channel (e.g. Standard
or Premium).


A broadcast_service_tier should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_broadcast_service_tier>

A predicate for the L</broadcast_service_tier> attribute.

=cut

has broadcast_service_tier => (
    is        => 'rw',
    predicate => '_has_broadcast_service_tier',
    json_ld   => 'broadcastServiceTier',
);


=head2 C<genre>



Genre of the creative work, broadcast channel or group.


A genre should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_genre>

A predicate for the L</genre> attribute.

=cut

has genre => (
    is        => 'rw',
    predicate => '_has_genre',
    json_ld   => 'genre',
);


=head2 C<in_broadcast_lineup>

C<inBroadcastLineup>

The CableOrSatelliteService offering the channel.


A in_broadcast_lineup should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CableOrSatelliteService']>

=back

=head2 C<_has_in_broadcast_lineup>

A predicate for the L</in_broadcast_lineup> attribute.

=cut

has in_broadcast_lineup => (
    is        => 'rw',
    predicate => '_has_in_broadcast_lineup',
    json_ld   => 'inBroadcastLineup',
);


=head2 C<provides_broadcast_service>

C<providesBroadcastService>

The BroadcastService offered on this channel.


A provides_broadcast_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BroadcastService']>

=back

=head2 C<_has_provides_broadcast_service>

A predicate for the L</provides_broadcast_service> attribute.

=cut

has provides_broadcast_service => (
    is        => 'rw',
    predicate => '_has_provides_broadcast_service',
    json_ld   => 'providesBroadcastService',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
