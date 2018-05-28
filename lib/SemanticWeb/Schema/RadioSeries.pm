package SemanticWeb::Schema::RadioSeries;

# ABSTRACT: CreativeWorkSeries dedicated to radio broadcast and associated online delivery.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

CreativeWorkSeries dedicated to radio broadcast and associated online
delivery.




=head1 ATTRIBUTES


=head2 C<actor>



An actor, e.g. in tv, radio, movie, video games etc., or in an event.
Actors can be associated with individual items or with a series, episode,
clip.


A actor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has actor => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actor',
    json_ld_serializer => \&_serialize_actor,
);

sub _serialize_actor { $_[0]->_serializer('actor') }


=head2 C<actors>



An actor, e.g. in tv, radio, movie, video games etc. Actors can be
associated with individual items or with a series, episode, clip.


A actors should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has actors => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actors',
    json_ld_serializer => \&_serialize_actors,
);

sub _serialize_actors { $_[0]->_serializer('actors') }


=head2 C<contains_season>

C<containsSeason>

A season that is part of the media series.


A contains_season should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=cut

has contains_season => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'containsSeason',
    json_ld_serializer => \&_serialize_contains_season,
);

sub _serialize_contains_season { $_[0]->_serializer('contains_season') }


=head2 C<director>



A director of e.g. tv, radio, movie, video gaming etc. content, or of an
event. Directors can be associated with individual items or with a series,
episode, clip.


A director should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has director => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'director',
    json_ld_serializer => \&_serialize_director,
);

sub _serialize_director { $_[0]->_serializer('director') }


=head2 C<directors>



A director of e.g. tv, radio, movie, video games etc. content. Directors
can be associated with individual items or with a series, episode, clip.


A directors should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has directors => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'directors',
    json_ld_serializer => \&_serialize_directors,
);

sub _serialize_directors { $_[0]->_serializer('directors') }


=head2 C<episode>



An episode of a tv, radio or game media within a series or season.


A episode should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Episode']>

=back

=cut

has episode => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'episode',
    json_ld_serializer => \&_serialize_episode,
);

sub _serialize_episode { $_[0]->_serializer('episode') }


=head2 C<episodes>



An episode of a TV/radio series or season.


A episodes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Episode']>

=back

=cut

has episodes => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'episodes',
    json_ld_serializer => \&_serialize_episodes,
);

sub _serialize_episodes { $_[0]->_serializer('episodes') }


=head2 C<music_by>

C<musicBy>

The composer of the soundtrack.


A music_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicGroup']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has music_by => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicBy',
    json_ld_serializer => \&_serialize_music_by,
);

sub _serialize_music_by { $_[0]->_serializer('music_by') }


=head2 C<number_of_episodes>

C<numberOfEpisodes>

The number of episodes in this season or series.


A number_of_episodes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has number_of_episodes => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfEpisodes',
    json_ld_serializer => \&_serialize_number_of_episodes,
);

sub _serialize_number_of_episodes { $_[0]->_serializer('number_of_episodes') }


=head2 C<number_of_seasons>

C<numberOfSeasons>

The number of seasons in this series.


A number_of_seasons should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has number_of_seasons => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfSeasons',
    json_ld_serializer => \&_serialize_number_of_seasons,
);

sub _serialize_number_of_seasons { $_[0]->_serializer('number_of_seasons') }


=head2 C<production_company>

C<productionCompany>

The production company or studio responsible for the item e.g. series,
video game, episode etc.


A production_company should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has production_company => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'productionCompany',
    json_ld_serializer => \&_serialize_production_company,
);

sub _serialize_production_company { $_[0]->_serializer('production_company') }


=head2 C<season>



A season in a media series.


A season should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=cut

has season => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'season',
    json_ld_serializer => \&_serialize_season,
);

sub _serialize_season { $_[0]->_serializer('season') }


=head2 C<seasons>



A season in a media series.


A seasons should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=cut

has seasons => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seasons',
    json_ld_serializer => \&_serialize_seasons,
);

sub _serialize_seasons { $_[0]->_serializer('seasons') }


=head2 C<trailer>



The trailer of a movie or tv/radio series, season, episode, etc.


A trailer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::VideoObject']>

=back

=cut

has trailer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'trailer',
    json_ld_serializer => \&_serialize_trailer,
);

sub _serialize_trailer { $_[0]->_serializer('trailer') }




around json_ld_type => sub { return 'RadioSeries' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'actor' => \&_serialize_actor,
       'actors' => \&_serialize_actors,
       'containsSeason' => \&_serialize_contains_season,
       'director' => \&_serialize_director,
       'directors' => \&_serialize_directors,
       'episode' => \&_serialize_episode,
       'episodes' => \&_serialize_episodes,
       'musicBy' => \&_serialize_music_by,
       'numberOfEpisodes' => \&_serialize_number_of_episodes,
       'numberOfSeasons' => \&_serialize_number_of_seasons,
       'productionCompany' => \&_serialize_production_company,
       'season' => \&_serialize_season,
       'seasons' => \&_serialize_seasons,
       'trailer' => \&_serialize_trailer,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
