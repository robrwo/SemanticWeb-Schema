package LDF::Schema::Clip;

# ABSTRACT: A short TV or radio program or a segment/part of a program.

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A short TV or radio program or a segment/part of a program.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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


=head2 C<clip_number>

C<clipNumber>

Position of the clip within an ordered group of clips.


A clip_number should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=item C<Str>

=back

=cut

has clip_number => (
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


=head2 C<part_of_episode>

C<partOfEpisode>

The episode to which this clip belongs.


A part_of_episode should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Episode']>

=back

=cut

has part_of_episode => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<part_of_season>

C<partOfSeason>

The season to which this episode belongs.


A part_of_season should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWorkSeason']>

=back

=cut

has part_of_season => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<part_of_series>

C<partOfSeries>

The series to which this episode or season belongs.


A part_of_series should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWorkSeries']>

=back

=cut

has part_of_series => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Clip' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { actor => 'actor' },
      { actors => 'actors' },
      { clipNumber => 'clip_number' },
      { director => 'director' },
      { directors => 'directors' },
      { musicBy => 'music_by' },
      { partOfEpisode => 'part_of_episode' },
      { partOfSeason => 'part_of_season' },
      { partOfSeries => 'part_of_series' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
