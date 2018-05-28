package SemanticWeb::Schema::MusicAlbum;

# ABSTRACT: A collection of music tracks.

use Moo;

extends qw/ SemanticWeb::Schema::MusicPlaylist /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=cut

has album_production_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'albumProductionType',
    json_ld_serializer => \&_serialize_album_production_type,
);

sub _serialize_album_production_type { $_[0]->_serializer('album_production_type') }


=head2 C<album_release>

C<albumRelease>

A release of this album.


A album_release should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRelease']>

=back

=cut

has album_release => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'albumRelease',
    json_ld_serializer => \&_serialize_album_release,
);

sub _serialize_album_release { $_[0]->_serializer('album_release') }


=head2 C<album_release_type>

C<albumReleaseType>

The kind of release which this album is: single, EP or album.


A album_release_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbumReleaseType']>

=back

=cut

has album_release_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'albumReleaseType',
    json_ld_serializer => \&_serialize_album_release_type,
);

sub _serialize_album_release_type { $_[0]->_serializer('album_release_type') }


=head2 C<by_artist>

C<byArtist>

The artist that performed this album or recording.


A by_artist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicGroup']>

=back

=cut

has by_artist => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'byArtist',
    json_ld_serializer => \&_serialize_by_artist,
);

sub _serialize_by_artist { $_[0]->_serializer('by_artist') }




around json_ld_type => sub { return 'MusicAlbum' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'albumProductionType' => \&_serialize_album_production_type,
       'albumRelease' => \&_serialize_album_release,
       'albumReleaseType' => \&_serialize_album_release_type,
       'byArtist' => \&_serialize_by_artist,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::MusicPlaylist>

=cut

1;
