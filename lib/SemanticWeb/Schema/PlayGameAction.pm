use utf8;

package SemanticWeb::Schema::PlayGameAction;

# ABSTRACT: The act of playing a video game.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use MooX::JSON_LD 'PlayGameAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of playing a video game.




=head1 ATTRIBUTES


=head2 C<game_availability_type>

C<gameAvailabilityType>

Indicates the availability type of the game content associated with this
action, such as whether it is a full version or a demo.


A game_availability_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GameAvailabilityEnumeration']>

=item C<Str>

=back

=head2 C<_has_game_availability_type>

A predicate for the L</game_availability_type> attribute.

=cut

has game_availability_type => (
    is        => 'rw',
    predicate => '_has_game_availability_type',
    json_ld   => 'gameAvailabilityType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
