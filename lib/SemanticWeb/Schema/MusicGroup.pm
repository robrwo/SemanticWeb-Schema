package SemanticWeb::Schema::MusicGroup;

# ABSTRACT: A musical group

use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use MooX::JSON_LD 'MusicGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A musical group, such as a band, an orchestra, or a choir. Can also be a
solo musician.




=head1 ATTRIBUTES


=head2 C<album>



A music album.


A album should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbum']>

=back

=cut

has album => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'album',
    json_ld_serializer => \&_serialize_album,
);

sub _serialize_album { $_[0]->_serializer('album') }


=head2 C<albums>



A collection of music albums.


A albums should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbum']>

=back

=cut

has albums => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'albums',
    json_ld_serializer => \&_serialize_albums,
);

sub _serialize_albums { $_[0]->_serializer('albums') }


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


=head2 C<music_group_member>

C<musicGroupMember>

A member of a music group&#x2014;for example, John, Paul, George, or Ringo.


A music_group_member should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has music_group_member => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicGroupMember',
    json_ld_serializer => \&_serialize_music_group_member,
);

sub _serialize_music_group_member { $_[0]->_serializer('music_group_member') }


=head2 C<track>



A music recording (track)&#x2014;usually a single song. If an ItemList is
given, the list should contain items of type MusicRecording.


A track should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=back

=cut

has track => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'track',
    json_ld_serializer => \&_serialize_track,
);

sub _serialize_track { $_[0]->_serializer('track') }


=head2 C<tracks>



A music recording (track)&#x2014;usually a single song.


A tracks should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=cut

has tracks => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'tracks',
    json_ld_serializer => \&_serialize_tracks,
);

sub _serialize_tracks { $_[0]->_serializer('tracks') }




=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
