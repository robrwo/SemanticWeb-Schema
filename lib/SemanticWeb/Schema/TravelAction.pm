package SemanticWeb::Schema::TravelAction;

# ABSTRACT: The act of traveling from an fromLocation to a destination by a specified mode of transport

use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of traveling from an fromLocation to a destination by a specified
mode of transport, optionally with participants.




=head1 ATTRIBUTES


=head2 C<distance>



The distance travelled, e.g. exercising or travelling.


A distance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Distance']>

=back

=cut

has distance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'distance',
    json_ld_serializer => \&_serialize_distance,
);

sub _serialize_distance { $_[0]->_serializer('distance') }




around json_ld_type => sub { return 'TravelAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'distance' => \&_serialize_distance,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::MoveAction>

=cut

1;
