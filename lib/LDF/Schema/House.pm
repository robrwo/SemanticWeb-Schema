package LDF::Schema::House;

# ABSTRACT: A house is a building or structure that has the ability to be occupied for habitation by humans or other creatures (Source: Wikipedia

use Moo;

extends qw/ LDF::Schema::Accommodation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A house is a building or structure that has the ability to be occupied for
habitation by humans or other creatures (Source: Wikipedia, the free
encyclopedia, see <a
href="http://en.wikipedia.org/wiki/House">http://en.wikipedia.org/wiki/Hous
e</a>).

=end html




=head1 ATTRIBUTES


=head2 C<number_of_rooms>

C<numberOfRooms>

The number of rooms (excluding bathrooms and closets) of the acccommodation
or lodging business. Typical unit code(s): ROM for room or C62 for no unit.
The type of room can be put in the unitText property of the
QuantitativeValue.


A number_of_rooms should be one of the following types:

=over

=item C<Num>

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has number_of_rooms => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'House' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { numberOfRooms => 'number_of_rooms' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Accommodation>

=cut

1;
