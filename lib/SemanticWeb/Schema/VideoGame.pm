use utf8;

package SemanticWeb::Schema::VideoGame;

# ABSTRACT: A video game is an electronic game that involves human interaction with a user interface to generate visual feedback on a video device.

use Moo;

extends qw/ SemanticWeb::Schema::SoftwareApplication SemanticWeb::Schema::Game /;


use MooX::JSON_LD 'VideoGame';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.0';

=encoding utf8

=head1 DESCRIPTION

A video game is an electronic game that involves human interaction with a
user interface to generate visual feedback on a video device.




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


=head2 C<cheat_code>

C<cheatCode>

Cheat codes to the game.


A cheat_code should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has cheat_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cheatCode',
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

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has game_platform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gamePlatform',
);


=head2 C<game_server>

C<gameServer>

The server on which it is possible to play the game.


A game_server should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GameServer']>

=back

=cut

has game_server => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gameServer',
);


=head2 C<game_tip>

C<gameTip>

Links to tips, tactics, etc.


A game_tip should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has game_tip => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gameTip',
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


=head2 C<play_mode>

C<playMode>

Indicates whether this game is multi-player, co-op or single-player. The
game can be marked as multi-player, co-op and single-player at the same
time.


A play_mode should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GamePlayMode']>

=back

=cut

has play_mode => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'playMode',
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



L<SemanticWeb::Schema::Game>

=cut

1;
