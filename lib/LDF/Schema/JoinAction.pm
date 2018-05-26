package LDF::Schema::JoinAction;

# ABSTRACT: <p>An agent joins an event/group with participants/friends at a location

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'JoinAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { event => 'event' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::InteractAction>

=cut

1;
