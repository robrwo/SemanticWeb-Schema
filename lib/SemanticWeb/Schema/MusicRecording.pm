use utf8;

package SemanticWeb::Schema::MusicRecording;

# ABSTRACT: A music recording (track)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicRecording';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A music recording (track), usually a single song.




=head1 ATTRIBUTES


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


=head2 C<duration>



The duration of the item (movie, audio recording, event, etc.) in [ISO 8601
date format](http://en.wikipedia.org/wiki/ISO_8601).


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=head2 C<_has_duration>

A predicate for the L</duration> attribute.

=cut

has duration => (
    is        => 'rw',
    predicate => '_has_duration',
    json_ld   => 'duration',
);


=head2 C<in_album>

C<inAlbum>

The album to which this recording belongs.


A in_album should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicAlbum']>

=back

=head2 C<_has_in_album>

A predicate for the L</in_album> attribute.

=cut

has in_album => (
    is        => 'rw',
    predicate => '_has_in_album',
    json_ld   => 'inAlbum',
);


=head2 C<in_playlist>

C<inPlaylist>

The playlist to which this recording belongs.


A in_playlist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicPlaylist']>

=back

=head2 C<_has_in_playlist>

A predicate for the L</in_playlist> attribute.

=cut

has in_playlist => (
    is        => 'rw',
    predicate => '_has_in_playlist',
    json_ld   => 'inPlaylist',
);


=head2 C<isrc_code>

C<isrcCode>

The International Standard Recording Code for the recording.


A isrc_code should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_isrc_code>

A predicate for the L</isrc_code> attribute.

=cut

has isrc_code => (
    is        => 'rw',
    predicate => '_has_isrc_code',
    json_ld   => 'isrcCode',
);


=head2 C<recording_of>

C<recordingOf>

The composition this track is a recording of.


A recording_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=head2 C<_has_recording_of>

A predicate for the L</recording_of> attribute.

=cut

has recording_of => (
    is        => 'rw',
    predicate => '_has_recording_of',
    json_ld   => 'recordingOf',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
