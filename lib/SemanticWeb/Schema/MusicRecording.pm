package SemanticWeb::Schema::MusicRecording;

# ABSTRACT: A music recording (track)

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicRecording';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A music recording (track), usually a single song.




=head1 ATTRIBUTES


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


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duration',
    json_ld_serializer => \&_serialize_duration,
);

sub _serialize_duration { $_[0]->_serializer('duration') }


=head2 C<in_album>

C<inAlbum>

The album to which this recording belongs.


A in_album should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbum']>

=back

=cut

has in_album => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inAlbum',
    json_ld_serializer => \&_serialize_in_album,
);

sub _serialize_in_album { $_[0]->_serializer('in_album') }


=head2 C<in_playlist>

C<inPlaylist>

The playlist to which this recording belongs.


A in_playlist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicPlaylist']>

=back

=cut

has in_playlist => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'inPlaylist',
    json_ld_serializer => \&_serialize_in_playlist,
);

sub _serialize_in_playlist { $_[0]->_serializer('in_playlist') }


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
    json_ld   => 'isrcCode',
    json_ld_serializer => \&_serialize_isrc_code,
);

sub _serialize_isrc_code { $_[0]->_serializer('isrc_code') }


=head2 C<recording_of>

C<recordingOf>

The composition this track is a recording of.


A recording_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=cut

has recording_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recordingOf',
    json_ld_serializer => \&_serialize_recording_of,
);

sub _serialize_recording_of { $_[0]->_serializer('recording_of') }




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
