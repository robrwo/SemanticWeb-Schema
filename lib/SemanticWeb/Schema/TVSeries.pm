use utf8;

package SemanticWeb::Schema::TVSeries;

# ABSTRACT: CreativeWorkSeries dedicated to TV broadcast and associated online delivery.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::CreativeWorkSeries /;


use MooX::JSON_LD 'TVSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.1';

=encoding utf8

=head1 DESCRIPTION

CreativeWorkSeries dedicated to TV broadcast and associated online
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


=head2 C<contains_season>

C<containsSeason>

A season that is part of the media series.


A contains_season should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=head2 C<_has_contains_season>

A predicate for the L</contains_season> attribute.

=cut

has contains_season => (
    is        => 'rw',
    predicate => '_has_contains_season',
    json_ld   => 'containsSeason',
);


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of the principal offices of the production company or
individual responsible for the movie or program.


A country_of_origin should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=back

=head2 C<_has_country_of_origin>

A predicate for the L</country_of_origin> attribute.

=cut

has country_of_origin => (
    is        => 'rw',
    predicate => '_has_country_of_origin',
    json_ld   => 'countryOfOrigin',
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


=head2 C<episode>



An episode of a tv, radio or game media within a series or season.


A episode should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Episode']>

=back

=head2 C<_has_episode>

A predicate for the L</episode> attribute.

=cut

has episode => (
    is        => 'rw',
    predicate => '_has_episode',
    json_ld   => 'episode',
);


=head2 C<episodes>



An episode of a TV/radio series or season.


A episodes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Episode']>

=back

=head2 C<_has_episodes>

A predicate for the L</episodes> attribute.

=cut

has episodes => (
    is        => 'rw',
    predicate => '_has_episodes',
    json_ld   => 'episodes',
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


=head2 C<number_of_episodes>

C<numberOfEpisodes>

The number of episodes in this season or series.


A number_of_episodes should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_number_of_episodes>

A predicate for the L</number_of_episodes> attribute.

=cut

has number_of_episodes => (
    is        => 'rw',
    predicate => '_has_number_of_episodes',
    json_ld   => 'numberOfEpisodes',
);


=head2 C<number_of_seasons>

C<numberOfSeasons>

The number of seasons in this series.


A number_of_seasons should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_number_of_seasons>

A predicate for the L</number_of_seasons> attribute.

=cut

has number_of_seasons => (
    is        => 'rw',
    predicate => '_has_number_of_seasons',
    json_ld   => 'numberOfSeasons',
);


=head2 C<production_company>

C<productionCompany>

The production company or studio responsible for the item e.g. series,
video game, episode etc.


A production_company should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_production_company>

A predicate for the L</production_company> attribute.

=cut

has production_company => (
    is        => 'rw',
    predicate => '_has_production_company',
    json_ld   => 'productionCompany',
);


=head2 C<season>



A season in a media series.


A season should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=item C<Str>

=back

=head2 C<_has_season>

A predicate for the L</season> attribute.

=cut

has season => (
    is        => 'rw',
    predicate => '_has_season',
    json_ld   => 'season',
);


=head2 C<seasons>



A season in a media series.


A seasons should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=head2 C<_has_seasons>

A predicate for the L</seasons> attribute.

=cut

has seasons => (
    is        => 'rw',
    predicate => '_has_seasons',
    json_ld   => 'seasons',
);


=head2 C<trailer>



The trailer of a movie or tv/radio series, season, episode, etc.


A trailer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::VideoObject']>

=back

=head2 C<_has_trailer>

A predicate for the L</trailer> attribute.

=cut

has trailer => (
    is        => 'rw',
    predicate => '_has_trailer',
    json_ld   => 'trailer',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
