package SemanticWeb::Schema::JoinAction;

# ABSTRACT: <p>An agent joins an event/group with participants/friends at a location

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'JoinAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

<p>An agent joins an event/group with participants/friends at a
location.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, JoinAction refers to joining a group/team of people.</li>
<li><a class="localLink"
href="http://schema.org/SubscribeAction">SubscribeAction</a>: Unlike
SubscribeAction, JoinAction does not imply that you'll be receiving
updates.</li> <li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, JoinAction does not imply that you'll be polling for
updates.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'event',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
