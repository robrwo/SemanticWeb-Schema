package SemanticWeb::Schema::GameServer;

# ABSTRACT: Server that provides game interaction in a multiplayer game.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Server that provides game interaction in a multiplayer game.




=head1 ATTRIBUTES


=head2 C<game>



Video game which is played on this server.


A game should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::VideoGame']>

=back

=cut

has game => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'game',
    json_ld_serializer => \&_serialize_game,
);

sub _serialize_game { $_[0]->_serializer('game') }


=head2 C<players_online>

C<playersOnline>

Number of players on the server.


A players_online should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has players_online => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'playersOnline',
    json_ld_serializer => \&_serialize_players_online,
);

sub _serialize_players_online { $_[0]->_serializer('players_online') }


=head2 C<server_status>

C<serverStatus>

Status of a game server.


A server_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GameServerStatus']>

=back

=cut

has server_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'serverStatus',
    json_ld_serializer => \&_serialize_server_status,
);

sub _serialize_server_status { $_[0]->_serializer('server_status') }




around json_ld_type => sub { return 'GameServer' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'game' => \&_serialize_game,
       'playersOnline' => \&_serialize_players_online,
       'serverStatus' => \&_serialize_server_status,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
