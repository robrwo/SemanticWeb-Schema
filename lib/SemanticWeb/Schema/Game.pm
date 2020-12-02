use utf8;

package SemanticWeb::Schema::Game;

# ABSTRACT: The Game type represents things which are games

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Game';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.0';

=encoding utf8

=head1 DESCRIPTION

The Game type represents things which are games. These are typically
rule-governed recreational activities, e.g. role-playing games in which
players assume the role of characters in a fictional setting.




=head1 ATTRIBUTES


=head2 C<character_attribute>

C<characterAttribute>

A piece of data that represents a particular aspect of a fictional
character (skill, power, character points, advantage, disadvantage).


A character_attribute should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_character_attribute>

A predicate for the L</character_attribute> attribute.

=cut

has character_attribute => (
    is        => 'rw',
    predicate => '_has_character_attribute',
    json_ld   => 'characterAttribute',
);


=head2 C<game_item>

C<gameItem>

An item is an object within the game world that can be collected by a
player or, occasionally, a non-player character.


A game_item should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_game_item>

A predicate for the L</game_item> attribute.

=cut

has game_item => (
    is        => 'rw',
    predicate => '_has_game_item',
    json_ld   => 'gameItem',
);


=head2 C<game_location>

C<gameLocation>

Real or fictional location of the game (or part of game).


A game_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<Str>

=back

=head2 C<_has_game_location>

A predicate for the L</game_location> attribute.

=cut

has game_location => (
    is        => 'rw',
    predicate => '_has_game_location',
    json_ld   => 'gameLocation',
);


=head2 C<number_of_players>

C<numberOfPlayers>

Indicate how many people can play this game (minimum, maximum, or range).


A number_of_players should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_number_of_players>

A predicate for the L</number_of_players> attribute.

=cut

has number_of_players => (
    is        => 'rw',
    predicate => '_has_number_of_players',
    json_ld   => 'numberOfPlayers',
);


=head2 C<quest>



The task that a player-controlled character, or group of characters may
complete in order to gain a reward.


A quest should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_quest>

A predicate for the L</quest> attribute.

=cut

has quest => (
    is        => 'rw',
    predicate => '_has_quest',
    json_ld   => 'quest',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
