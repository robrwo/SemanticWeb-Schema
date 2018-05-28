package SemanticWeb::Schema::UpdateAction;

# ABSTRACT: The act of managing by changing/editing the state of the object.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of managing by changing/editing the state of the object.




=head1 ATTRIBUTES


=head2 C<collection>



A sub property of object. The collection target of the action.


A collection should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has collection => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'collection',
    json_ld_serializer => \&_serialize_collection,
);

sub _serialize_collection { $_[0]->_serializer('collection') }


=head2 C<target_collection>

C<targetCollection>

A sub property of object. The collection target of the action.


A target_collection should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=cut

has target_collection => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'targetCollection',
    json_ld_serializer => \&_serialize_target_collection,
);

sub _serialize_target_collection { $_[0]->_serializer('target_collection') }




around json_ld_type => sub { return 'UpdateAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'collection' => \&_serialize_collection,
       'targetCollection' => \&_serialize_target_collection,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
