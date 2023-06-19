use utf8;

package SemanticWeb::Schema::VideoObject;

# ABSTRACT: A video file.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'VideoObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A video file.




=head1 ATTRIBUTES


=head2 C<actor>



An actor, e.g. in TV, radio, movie, video games etc., or in an event.
Actors can be associated with individual items or with a series, episode,
clip.


A actor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_actor>

A predicate for the L</actor> attribute.

=cut

has actor => (
    is        => 'rw',
    predicate => '_has_actor',
    json_ld   => 'actor',
);


=head2 C<actors>



An actor, e.g. in TV, radio, movie, video games etc. Actors can be
associated with individual items or with a series, episode, clip.


A actors should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_actors>

A predicate for the L</actors> attribute.

=cut

has actors => (
    is        => 'rw',
    predicate => '_has_actors',
    json_ld   => 'actors',
);


=head2 C<caption>



The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].

A caption should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<Str>

=back

=head2 C<_has_caption>

A predicate for the L</caption> attribute.

=cut

has caption => (
    is        => 'rw',
    predicate => '_has_caption',
    json_ld   => 'caption',
);


=head2 C<director>



A director of e.g. TV, radio, movie, video gaming etc. content, or of an
event. Directors can be associated with individual items or with a series,
episode, clip.


A director should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_director>

A predicate for the L</director> attribute.

=cut

has director => (
    is        => 'rw',
    predicate => '_has_director',
    json_ld   => 'director',
);


=head2 C<directors>



A director of e.g. TV, radio, movie, video games etc. content. Directors
can be associated with individual items or with a series, episode, clip.


A directors should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_directors>

A predicate for the L</directors> attribute.

=cut

has directors => (
    is        => 'rw',
    predicate => '_has_directors',
    json_ld   => 'directors',
);


=head2 C<embedded_text_caption>

C<embeddedTextCaption>

Represents textual captioning from a L<SemanticWeb::Schema::MediaObject>, e.g. text of a 'meme'.

A embedded_text_caption should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_embedded_text_caption>

A predicate for the L</embedded_text_caption> attribute.

=cut

has embedded_text_caption => (
    is        => 'rw',
    predicate => '_has_embedded_text_caption',
    json_ld   => 'embeddedTextCaption',
);


=head2 C<music_by>

C<musicBy>

The composer of the soundtrack.


A music_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicGroup']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_music_by>

A predicate for the L</music_by> attribute.

=cut

has music_by => (
    is        => 'rw',
    predicate => '_has_music_by',
    json_ld   => 'musicBy',
);


=head2 C<transcript>



If this MediaObject is an AudioObject or VideoObject, the transcript of
that object.


A transcript should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_transcript>

A predicate for the L</transcript> attribute.

=cut

has transcript => (
    is        => 'rw',
    predicate => '_has_transcript',
    json_ld   => 'transcript',
);


=head2 C<video_frame_size>

C<videoFrameSize>

The frame size of the video.


A video_frame_size should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_video_frame_size>

A predicate for the L</video_frame_size> attribute.

=cut

has video_frame_size => (
    is        => 'rw',
    predicate => '_has_video_frame_size',
    json_ld   => 'videoFrameSize',
);


=head2 C<video_quality>

C<videoQuality>

The quality of the video.


A video_quality should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_video_quality>

A predicate for the L</video_quality> attribute.

=cut

has video_quality => (
    is        => 'rw',
    predicate => '_has_video_quality',
    json_ld   => 'videoQuality',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
