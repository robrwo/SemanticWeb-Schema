package LDF::Schema::VideoObject;

# ABSTRACT: A video file.

use Moo;

extends qw/ LDF::Schema::MediaObject /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A video file.




=head1 ATTRIBUTES


=head2 C<actor>



An actor, e.g. in tv, radio, movie, video games etc., or in an event.
Actors can be associated with individual items or with a series, episode,
clip.


A actor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has actor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<actors>



An actor, e.g. in tv, radio, movie, video games etc. Actors can be
associated with individual items or with a series, episode, clip.


A actors should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has actors => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<caption>



The caption for this object.


A caption should be one of the following types:

=over

=item C<Str>

=back

=cut

has caption => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<director>



A director of e.g. tv, radio, movie, video gaming etc. content, or of an
event. Directors can be associated with individual items or with a series,
episode, clip.


A director should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has director => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<directors>



A director of e.g. tv, radio, movie, video games etc. content. Directors
can be associated with individual items or with a series, episode, clip.


A directors should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has directors => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<music_by>

C<musicBy>

The composer of the soundtrack.


A music_by should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::MusicGroup']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has music_by => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<thumbnail>



Thumbnail image for an image or video.


A thumbnail should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ImageObject']>

=back

=cut

has thumbnail => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<transcript>



If this MediaObject is an AudioObject or VideoObject, the transcript of
that object.


A transcript should be one of the following types:

=over

=item C<Str>

=back

=cut

has transcript => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<video_frame_size>

C<videoFrameSize>

The frame size of the video.


A video_frame_size should be one of the following types:

=over

=item C<Str>

=back

=cut

has video_frame_size => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<video_quality>

C<videoQuality>

The quality of the video.


A video_quality should be one of the following types:

=over

=item C<Str>

=back

=cut

has video_quality => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'VideoObject' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'actor' => $self->curry::_serializer('actor'),
       'actors' => $self->curry::_serializer('actors'),
       'caption' => $self->curry::_serializer('caption'),
       'director' => $self->curry::_serializer('director'),
       'directors' => $self->curry::_serializer('directors'),
       'musicBy' => $self->curry::_serializer('music_by'),
       'thumbnail' => $self->curry::_serializer('thumbnail'),
       'transcript' => $self->curry::_serializer('transcript'),
       'videoFrameSize' => $self->curry::_serializer('video_frame_size'),
       'videoQuality' => $self->curry::_serializer('video_quality'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::MediaObject>

=cut

1;
