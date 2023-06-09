use utf8;

package SemanticWeb::Schema::JoinAction;

# ABSTRACT: An agent joins an event/group with participants/friends at a location

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'JoinAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

An agent joins an event/group with participants/friends at a location.

Related actions:

=over

=item *

L<SemanticWeb::Schema::RegisterAction>: Unlike RegisterAction, JoinAction refers to joining a group/team of people.


=item *

L<SemanticWeb::Schema::SubscribeAction>: Unlike SubscribeAction, JoinAction does not imply that you'll be receiving updates.


=item *

L<SemanticWeb::Schema::FollowAction>: Unlike FollowAction, JoinAction does not imply that you'll be polling for updates.


=back



=head1 ATTRIBUTES


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=head2 C<_has_event>

A predicate for the L</event> attribute.

=cut

has event => (
    is        => 'rw',
    predicate => '_has_event',
    json_ld   => 'event',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
