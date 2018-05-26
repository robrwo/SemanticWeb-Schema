package LDF::Schema::FollowAction;

# ABSTRACT: <p>The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates polled from

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of forming a personal connection with someone/something (object)
unidirectionally/asymmetrically to get updates polled from.</p> <p>Related
actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/BefriendAction">BefriendAction</a>: Unlike
BefriendAction, FollowAction implies that the connection is <em>not</em>
necessarily reciprocal.</li> <li><a class="localLink"
href="http://schema.org/SubscribeAction">SubscribeAction</a>: Unlike
SubscribeAction, FollowAction implies that the follower acts as an active
agent constantly/actively polling for updates.</li> <li><a
class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, FollowAction implies that the agent is interested in
continuing receiving updates from the object.</li> <li><a class="localLink"
href="http://schema.org/JoinAction">JoinAction</a>: Unlike JoinAction,
FollowAction implies that the agent is interested in getting updates from
the object.</li> <li><a class="localLink"
href="http://schema.org/TrackAction">TrackAction</a>: Unlike TrackAction,
FollowAction refers to the polling of updates of all aspects of animate
objects rather than the location of inanimate objects (e.g. you track a
package, but you don't follow it).</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<followee>



A sub property of object. The person or organization being followed.


A followee should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has followee => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'FollowAction' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { followee => 'followee' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::InteractAction>

=cut

1;
