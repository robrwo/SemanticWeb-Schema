package LDF::Schema::GameServer;

# ABSTRACT: Server that provides game interaction in a multiplayer game.

use Moo;

extends qw/ LDF::Schema::Intangible /;


use curry;
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

=item C<InstanceOf['LDF::Schema::VideoGame']>

=back

=cut

has game => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<players_online>

C<playersOnline>

Number of players on the server.


A players_online should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has players_online => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<server_status>

C<serverStatus>

Status of a game server.


A server_status should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::GameServerStatus']>

=back

=cut

has server_status => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'GameServer' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'game' => $self->curry::_serializer('game'),
       'playersOnline' => $self->curry::_serializer('players_online'),
       'serverStatus' => $self->curry::_serializer('server_status'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
