use utf8;

package SemanticWeb::Schema::Movie;

# ABSTRACT: A movie.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Movie';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

A movie.




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
);


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
);


=head2 C<country_of_origin>

C<countryOfOrigin>

The country of the principal offices of the production company or
individual responsible for the movie or program.


A country_of_origin should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Country']>

=back

=cut

has country_of_origin => (
    is        => 'rw',
    predicate => 1,
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

=cut

has director => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'director',
);


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
);


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duration',
);


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
);


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
);


=head2 C<subtitle_language>

C<subtitleLanguage>

=begin html

Languages in which subtitles/captions are available, in <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard format</a>.

=end html


A subtitle_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subtitleLanguage',
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
