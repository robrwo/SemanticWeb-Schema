use utf8;

package SemanticWeb::Schema::MusicGroup;

# ABSTRACT: A musical group

use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use MooX::JSON_LD 'MusicGroup';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

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

=head2 C<_has_album>

A predicate for the L</album> attribute.

=cut

has album => (
    is        => 'rw',
    predicate => '_has_album',
    json_ld   => 'album',
);


=head2 C<albums>



A collection of music albums.


A albums should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbum']>

=back

=head2 C<_has_albums>

A predicate for the L</albums> attribute.

=cut

has albums => (
    is        => 'rw',
    predicate => '_has_albums',
    json_ld   => 'albums',
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


=head2 C<music_group_member>

C<musicGroupMember>

A member of a music group&#x2014;for example, John, Paul, George, or Ringo.


A music_group_member should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_music_group_member>

A predicate for the L</music_group_member> attribute.

=cut

has music_group_member => (
    is        => 'rw',
    predicate => '_has_music_group_member',
    json_ld   => 'musicGroupMember',
);


=head2 C<track>



A music recording (track)&#x2014;usually a single song. If an ItemList is
given, the list should contain items of type MusicRecording.


A track should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ItemList']>

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=head2 C<_has_track>

A predicate for the L</track> attribute.

=cut

has track => (
    is        => 'rw',
    predicate => '_has_track',
    json_ld   => 'track',
);


=head2 C<tracks>



A music recording (track)&#x2014;usually a single song.


A tracks should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=head2 C<_has_tracks>

A predicate for the L</tracks> attribute.

=cut

has tracks => (
    is        => 'rw',
    predicate => '_has_tracks',
    json_ld   => 'tracks',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
