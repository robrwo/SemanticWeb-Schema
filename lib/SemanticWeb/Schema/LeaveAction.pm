package SemanticWeb::Schema::LeaveAction;

# ABSTRACT: <p>An agent leaves an event / group with participants/friends at a location

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>An agent leaves an event / group with participants/friends at a
location.</p> <p>Related actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/JoinAction">JoinAction</a>: The antonym of
LeaveAction.</li> <li><a class="localLink"
href="http://schema.org/UnRegisterAction">UnRegisterAction</a>: Unlike
UnRegisterAction, LeaveAction implies leaving a group/team of people rather
than a service.</li> </ul> 

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
    json_ld_serializer => \&_serialize_event,
);

sub _serialize_event { $_[0]->_serializer('event') }




around json_ld_type => sub { return 'LeaveAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'event' => \&_serialize_event,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
