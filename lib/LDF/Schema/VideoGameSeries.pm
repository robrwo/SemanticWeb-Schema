package LDF::Schema::VideoGameSeries;

# ABSTRACT: A video game series.

use Moo;

extends qw/ LDF::Schema::CreativeWorkSeries /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A video game series.




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


=head2 C<character_attribute>

C<characterAttribute>

A piece of data that represents a particular aspect of a fictional
character (skill, power, character points, advantage, disadvantage).


A character_attribute should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has character_attribute => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<cheat_code>

C<cheatCode>

Cheat codes to the game.


A cheat_code should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has cheat_code => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<contains_season>

C<containsSeason>

A season that is part of the media series.


A contains_season should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWorkSeason']>

=back

=cut

has contains_season => (
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


=head2 C<episode>



An episode of a tv, radio or game media within a series or season.


A episode should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Episode']>

=back

=cut

has episode => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<episodes>



An episode of a TV/radio series or season.


A episodes should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Episode']>

=back

=cut

has episodes => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<game_item>

C<gameItem>

An item is an object within the game world that can be collected by a
player or, occasionally, a non-player character.


A game_item should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has game_item => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<game_location>

C<gameLocation>

Real or fictional location of the game (or part of game).


A game_location should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::Place']>

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=back

=cut

has game_location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<game_platform>

C<gamePlatform>

=begin html

The electronic systems used to play <a
href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video
games</a>.

=end html


A game_platform should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has game_platform => (
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


=head2 C<number_of_episodes>

C<numberOfEpisodes>

The number of episodes in this season or series.


A number_of_episodes should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has number_of_episodes => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_players>

C<numberOfPlayers>

Indicate how many people can play this game (minimum, maximum, or range).


A number_of_players should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has number_of_players => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<number_of_seasons>

C<numberOfSeasons>

The number of seasons in this series.


A number_of_seasons should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has number_of_seasons => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<play_mode>

C<playMode>

Indicates whether this game is multi-player, co-op or single-player. The
game can be marked as multi-player, co-op and single-player at the same
time.


A play_mode should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::GamePlayMode']>

=back

=cut

has play_mode => (
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


=head2 C<quest>



The task that a player-controlled character, or group of characters may
complete in order to gain a reward.


A quest should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has quest => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<season>



A season in a media series.


A season should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWorkSeason']>

=back

=cut

has season => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<seasons>



A season in a media series.


A seasons should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWorkSeason']>

=back

=cut

has seasons => (
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

sub json_ld_type { 'VideoGameSeries' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'actor' => $self->curry::_serializer('actor'),
       'actors' => $self->curry::_serializer('actors'),
       'characterAttribute' => $self->curry::_serializer('character_attribute'),
       'cheatCode' => $self->curry::_serializer('cheat_code'),
       'containsSeason' => $self->curry::_serializer('contains_season'),
       'director' => $self->curry::_serializer('director'),
       'directors' => $self->curry::_serializer('directors'),
       'episode' => $self->curry::_serializer('episode'),
       'episodes' => $self->curry::_serializer('episodes'),
       'gameItem' => $self->curry::_serializer('game_item'),
       'gameLocation' => $self->curry::_serializer('game_location'),
       'gamePlatform' => $self->curry::_serializer('game_platform'),
       'musicBy' => $self->curry::_serializer('music_by'),
       'numberOfEpisodes' => $self->curry::_serializer('number_of_episodes'),
       'numberOfPlayers' => $self->curry::_serializer('number_of_players'),
       'numberOfSeasons' => $self->curry::_serializer('number_of_seasons'),
       'playMode' => $self->curry::_serializer('play_mode'),
       'productionCompany' => $self->curry::_serializer('production_company'),
       'quest' => $self->curry::_serializer('quest'),
       'season' => $self->curry::_serializer('season'),
       'seasons' => $self->curry::_serializer('seasons'),
       'trailer' => $self->curry::_serializer('trailer'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWorkSeries>

=cut

1;
