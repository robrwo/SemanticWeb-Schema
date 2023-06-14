use utf8;

package SemanticWeb::Schema::CreativeWorkSeason;

# ABSTRACT: A media season, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'CreativeWorkSeason';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A media season, e.g. TV, radio, video game etc.




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


=head2 C<end_date>

C<endDate>

The end date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A end_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_end_date>

A predicate for the L</end_date> attribute.

=cut

has end_date => (
    is        => 'rw',
    predicate => '_has_end_date',
    json_ld   => 'endDate',
);


=head2 C<episode>



An episode of a TV, radio or game media within a series or season.


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


=head2 C<production_company>

C<productionCompany>

The production company or studio responsible for the item, e.g. series,
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


=head2 C<season_number>

C<seasonNumber>

Position of the season within an ordered group of seasons.


A season_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_season_number>

A predicate for the L</season_number> attribute.

=cut

has season_number => (
    is        => 'rw',
    predicate => '_has_season_number',
    json_ld   => 'seasonNumber',
);


=head2 C<start_date>

C<startDate>

The start date and time of the item (in [ISO 8601 date
format](http://en.wikipedia.org/wiki/ISO_8601)).


A start_date should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_start_date>

A predicate for the L</start_date> attribute.

=cut

has start_date => (
    is        => 'rw',
    predicate => '_has_start_date',
    json_ld   => 'startDate',
);


=head2 C<trailer>



The trailer of a movie or TV/radio series, season, episode, etc.


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



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
