package LDF::Schema::Episode;

# ABSTRACT: A media episode (e

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A media episode (e.g. TV, radio, video game) which can be part of a series
or season.



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


=head2 C<episode_number>

C<episodeNumber>

Position of the episode within an ordered group of episodes.


A episode_number should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=item C<Str>

=back

=cut

has episode_number => (
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


=head2 C<production_company>

C<productionCompany>

The production company or studio responsible for the item e.g. series,
video game, episode etc.


A production_company should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has production_company => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<trailer>



The trailer of a movie or tv/radio series, season, episode, etc.


A trailer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::VideoObject']>

=back

=cut

has trailer => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Episode' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { actor => 'actor' },
      { actors => 'actors' },
      { director => 'director' },
      { directors => 'directors' },
      { episodeNumber => 'episode_number' },
      { musicBy => 'music_by' },
      { partOfSeason => 'part_of_season' },
      { partOfSeries => 'part_of_series' },
      { productionCompany => 'production_company' },
      { trailer => 'trailer' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
