package LDF::Schema::MusicRecording;

# ABSTRACT: A music recording (track)

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A music recording (track), usually a single song.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


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


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<in_album>

C<inAlbum>

The album to which this recording belongs.


A in_album should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicAlbum']>

=back

=cut

has in_album => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<in_playlist>

C<inPlaylist>

The playlist to which this recording belongs.


A in_playlist should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicPlaylist']>

=back

=cut

has in_playlist => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<isrc_code>

C<isrcCode>

The International Standard Recording Code for the recording.


A isrc_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has isrc_code => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<recording_of>

C<recordingOf>

The composition this track is a recording of.


A recording_of should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicComposition']>

=back

=cut

has recording_of => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MusicRecording' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { byArtist => 'by_artist' },
      { duration => 'duration' },
      { inAlbum => 'in_album' },
      { inPlaylist => 'in_playlist' },
      { isrcCode => 'isrc_code' },
      { recordingOf => 'recording_of' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
