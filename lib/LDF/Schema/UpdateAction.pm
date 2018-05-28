package LDF::Schema::UpdateAction;

# ABSTRACT: The act of managing by changing/editing the state of the object.

use Moo;

extends qw/ LDF::Schema::Action /;


use curry;
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

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has collection => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<target_collection>

C<targetCollection>

A sub property of object. The collection target of the action.


A target_collection should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has target_collection => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'UpdateAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'collection' => $self->curry::_serializer('collection'),
       'targetCollection' => $self->curry::_serializer('target_collection'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::Action>

=cut

1;
