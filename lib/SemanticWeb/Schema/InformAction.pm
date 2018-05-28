package SemanticWeb::Schema::InformAction;

# ABSTRACT: The act of notifying someone of information pertinent to them

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of notifying someone of information pertinent to them, with no
expectation of a response.




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




around json_ld_type => sub { return 'InformAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'event' => \&_serialize_event,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
