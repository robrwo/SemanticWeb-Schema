use utf8;

package SemanticWeb::Schema::MusicAlbum;

# ABSTRACT: A collection of music tracks.

use Moo;

extends qw/ SemanticWeb::Schema::MusicPlaylist /;


use MooX::JSON_LD 'MusicAlbum';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

A collection of music tracks.




=head1 ATTRIBUTES


=head2 C<album_production_type>

C<albumProductionType>

Classification of the album by it's type of content: soundtrack, live
album, studio album, etc.


A album_production_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbumProductionType']>

=back

=head2 C<_has_album_production_type>

A predicate for the L</album_production_type> attribute.

=cut

has album_production_type => (
    is        => 'rw',
    predicate => '_has_album_production_type',
    json_ld   => 'albumProductionType',
);


=head2 C<album_release>

C<albumRelease>

A release of this album.


A album_release should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRelease']>

=back

=head2 C<_has_album_release>

A predicate for the L</album_release> attribute.

=cut

has album_release => (
    is        => 'rw',
    predicate => '_has_album_release',
    json_ld   => 'albumRelease',
);


=head2 C<album_release_type>

C<albumReleaseType>

The kind of release which this album is: single, EP or album.


A album_release_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbumReleaseType']>

=back

=head2 C<_has_album_release_type>

A predicate for the L</album_release_type> attribute.

=cut

has album_release_type => (
    is        => 'rw',
    predicate => '_has_album_release_type',
    json_ld   => 'albumReleaseType',
);


=head2 C<by_artist>

C<byArtist>

The artist that performed this album or recording.


A by_artist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicGroup']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_by_artist>

A predicate for the L</by_artist> attribute.

=cut

has by_artist => (
    is        => 'rw',
    predicate => '_has_by_artist',
    json_ld   => 'byArtist',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MusicPlaylist>

=cut

1;
