package LDF::Schema::TravelAction;

# ABSTRACT: The act of traveling from an fromLocation to a destination by a specified mode of transport

use Moo;

extends qw/ LDF::Schema::MoveAction /;


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

=item C<InstanceOf['LDF::Schema::Distance']>

=back

=cut

has distance => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TravelAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { distance => 'distance' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::MoveAction>

=cut

1;
