use utf8;

package SemanticWeb::Schema::FollowAction;

# ABSTRACT: The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates polled from

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'FollowAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates polled from.

Related actions:

=over

=item *

L<SemanticWeb::Schema::BefriendAction>: Unlike BefriendAction, FollowAction implies that the connection is I<not> necessarily reciprocal.


=item *

L<SemanticWeb::Schema::SubscribeAction>: Unlike SubscribeAction, FollowAction implies that the follower acts as an active agent constantly/actively polling for updates.


=item *

L<SemanticWeb::Schema::RegisterAction>: Unlike RegisterAction, FollowAction implies that the agent is interested in continuing receiving updates from the object.


=item *

L<SemanticWeb::Schema::JoinAction>: Unlike JoinAction, FollowAction implies that the agent is interested in getting updates from the object.


=item *

L<SemanticWeb::Schema::TrackAction>: Unlike TrackAction, FollowAction refers to the polling of updates of all aspects of animate objects rather than the location of inanimate objects (e.g. you track a package, but you don't follow it).


=back



=head1 ATTRIBUTES


=head2 C<followee>



A sub property of object. The person or organization being followed.


A followee should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_followee>

A predicate for the L</followee> attribute.

=cut

has followee => (
    is        => 'rw',
    predicate => '_has_followee',
    json_ld   => 'followee',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
