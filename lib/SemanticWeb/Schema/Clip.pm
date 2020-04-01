use utf8;

package SemanticWeb::Schema::Clip;

# ABSTRACT: A short TV or radio program or a segment/part of a program.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Clip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

A short TV or radio program or a segment/part of a program.




=head1 ATTRIBUTES


=head2 C<actor>



An actor, e.g. in tv, radio, movie, video games etc., or in an event.
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



An actor, e.g. in tv, radio, movie, video games etc. Actors can be
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


=head2 C<clip_number>

C<clipNumber>

Position of the clip within an ordered group of clips.


A clip_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_clip_number>

A predicate for the L</clip_number> attribute.

=cut

has clip_number => (
    is        => 'rw',
    predicate => '_has_clip_number',
    json_ld   => 'clipNumber',
);


=head2 C<director>



A director of e.g. tv, radio, movie, video gaming etc. content, or of an
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



A director of e.g. tv, radio, movie, video games etc. content. Directors
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


=head2 C<end_offset>

C<endOffset>

The end time of the clip expressed as the number of seconds from the
beginning of the work.


A end_offset should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_end_offset>

A predicate for the L</end_offset> attribute.

=cut

has end_offset => (
    is        => 'rw',
    predicate => '_has_end_offset',
    json_ld   => 'endOffset',
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


=head2 C<part_of_episode>

C<partOfEpisode>

The episode to which this clip belongs.


A part_of_episode should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Episode']>

=back

=head2 C<_has_part_of_episode>

A predicate for the L</part_of_episode> attribute.

=cut

has part_of_episode => (
    is        => 'rw',
    predicate => '_has_part_of_episode',
    json_ld   => 'partOfEpisode',
);


=head2 C<part_of_season>

C<partOfSeason>

The season to which this episode belongs.


A part_of_season should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=head2 C<_has_part_of_season>

A predicate for the L</part_of_season> attribute.

=cut

has part_of_season => (
    is        => 'rw',
    predicate => '_has_part_of_season',
    json_ld   => 'partOfSeason',
);


=head2 C<part_of_series>

C<partOfSeries>

The series to which this episode or season belongs.


A part_of_series should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeries']>

=back

=head2 C<_has_part_of_series>

A predicate for the L</part_of_series> attribute.

=cut

has part_of_series => (
    is        => 'rw',
    predicate => '_has_part_of_series',
    json_ld   => 'partOfSeries',
);


=head2 C<start_offset>

C<startOffset>

The start time of the clip expressed as the number of seconds from the
beginning of the work.


A start_offset should be one of the following types:

=over

=item C<Num>

=back

=head2 C<_has_start_offset>

A predicate for the L</start_offset> attribute.

=cut

has start_offset => (
    is        => 'rw',
    predicate => '_has_start_offset',
    json_ld   => 'startOffset',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
