package LDF::Schema::Apartment;

# ABSTRACT: An apartment (in American English) or flat (in British English) is a self-contained housing unit (a type of residential real estate) that occupies only part of a building (Source: Wikipedia

use Moo;

extends qw/ LDF::Schema::Accommodation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An apartment (in American English) or flat (in British English) is a
self-contained housing unit (a type of residential real estate) that
occupies only part of a building (Source: Wikipedia, the free encyclopedia,
see <a
href="http://en.wikipedia.org/wiki/Apartment">http://en.wikipedia.org/wiki/
Apartment</a>).

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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


=head2 C<occupancy>



The allowed total occupancy for the accommodation in persons (including
infants etc). For individual accommodations, this is not necessarily the
legal maximum but defines the permitted usage as per the contractual
agreement (e.g. a double room used by a single person). Typical unit
code(s): C62 for person


A occupancy should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=back

=cut

has occupancy => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Apartment' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { numberOfRooms => 'number_of_rooms' },
      { occupancy => 'occupancy' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Accommodation>

=cut

1;
