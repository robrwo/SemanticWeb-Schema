package LDF::Schema::MusicAlbum;

# ABSTRACT: A collection of music tracks.

use Moo;

extends qw/ LDF::Schema::MusicPlaylist /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A collection of music tracks.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<album_production_type>

C<albumProductionType>

Classification of the album by it's type of content: soundtrack, live
album, studio album, etc.


A album_production_type should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicAlbumProductionType']>

=back

=cut

has album_production_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<album_release>

C<albumRelease>

A release of this album.


A album_release should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicRelease']>

=back

=cut

has album_release => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<album_release_type>

C<albumReleaseType>

The kind of release which this album is: single, EP or album.


A album_release_type should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicAlbumReleaseType']>

=back

=cut

has album_release_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<by_artist>

C<byArtist>

The artist that performed this album or recording.


A by_artist should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicGroup']>

=back

=cut

has by_artist => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MusicAlbum' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { albumProductionType => 'album_production_type' },
      { albumRelease => 'album_release' },
      { albumReleaseType => 'album_release_type' },
      { byArtist => 'by_artist' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::MusicPlaylist>

=cut

1;
