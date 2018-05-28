package SemanticWeb::Schema::WinAction;

# ABSTRACT: The act of achieving victory in a competitive activity.

use Moo;

extends qw/ SemanticWeb::Schema::AchieveAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of achieving victory in a competitive activity.




=head1 ATTRIBUTES


=head2 C<loser>



A sub property of participant. The loser of the action.


A loser should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has loser => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loser',
    json_ld_serializer => \&_serialize_loser,
);

sub _serialize_loser { $_[0]->_serializer('loser') }




around json_ld_type => sub { return 'WinAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'loser' => \&_serialize_loser,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::AchieveAction>

=cut

1;
