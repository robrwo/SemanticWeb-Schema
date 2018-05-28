package SemanticWeb::Schema::Episode;

# ABSTRACT: A media episode (e

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A media episode (e.g. TV, radio, video game) which can be part of a series
or season.




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


=head2 C<episode_number>

C<episodeNumber>

Position of the episode within an ordered group of episodes.


A episode_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=cut

has episode_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'episodeNumber',
    json_ld_serializer => \&_serialize_episode_number,
);

sub _serialize_episode_number { $_[0]->_serializer('episode_number') }


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


=head2 C<part_of_season>

C<partOfSeason>

The season to which this episode belongs.


A part_of_season should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeason']>

=back

=cut

has part_of_season => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'partOfSeason',
    json_ld_serializer => \&_serialize_part_of_season,
);

sub _serialize_part_of_season { $_[0]->_serializer('part_of_season') }


=head2 C<part_of_series>

C<partOfSeries>

The series to which this episode or season belongs.


A part_of_series should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWorkSeries']>

=back

=cut

has part_of_series => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'partOfSeries',
    json_ld_serializer => \&_serialize_part_of_series,
);

sub _serialize_part_of_series { $_[0]->_serializer('part_of_series') }


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




around json_ld_type => sub { return 'Episode' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'actor' => \&_serialize_actor,
       'actors' => \&_serialize_actors,
       'director' => \&_serialize_director,
       'directors' => \&_serialize_directors,
       'episodeNumber' => \&_serialize_episode_number,
       'musicBy' => \&_serialize_music_by,
       'partOfSeason' => \&_serialize_part_of_season,
       'partOfSeries' => \&_serialize_part_of_series,
       'productionCompany' => \&_serialize_production_company,
       'trailer' => \&_serialize_trailer,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
