package LDF::Schema::TVSeries;

# ABSTRACT: CreativeWorkSeries dedicated to TV broadcast and associated online delivery.

use Moo;

extends qw/ LDF::Schema::CreativeWorkSeries LDF::Schema::CreativeWork /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of the principal offices of the production company or
individual responsible for the movie or program.


A country_of_origin should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Country']>

=back

=cut

has country_of_origin => (
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

sub json_ld_type { 'TVSeries' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'actor' => $self->curry::_serializer('actor'),
       'actors' => $self->curry::_serializer('actors'),
       'containsSeason' => $self->curry::_serializer('contains_season'),
       'countryOfOrigin' => $self->curry::_serializer('country_of_origin'),
       'director' => $self->curry::_serializer('director'),
       'directors' => $self->curry::_serializer('directors'),
       'episode' => $self->curry::_serializer('episode'),
       'episodes' => $self->curry::_serializer('episodes'),
       'musicBy' => $self->curry::_serializer('music_by'),
       'numberOfEpisodes' => $self->curry::_serializer('number_of_episodes'),
       'numberOfSeasons' => $self->curry::_serializer('number_of_seasons'),
       'productionCompany' => $self->curry::_serializer('production_company'),
       'season' => $self->curry::_serializer('season'),
       'seasons' => $self->curry::_serializer('seasons'),
       'trailer' => $self->curry::_serializer('trailer'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
