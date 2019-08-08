use utf8;

package SemanticWeb::Schema::House;

# ABSTRACT: A house is a building or structure that has the ability to be occupied for habitation by humans or other creatures (Source: Wikipedia

use Moo;

extends qw/ SemanticWeb::Schema::Accommodation /;


use MooX::JSON_LD 'House';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

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

The number of rooms (excluding bathrooms and closets) of the accommodation
or lodging business. Typical unit code(s): ROM for room or C62 for no unit.
The type of room can be put in the unitText property of the
QuantitativeValue.


A number_of_rooms should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<Num>

=back

=cut

has number_of_rooms => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfRooms',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Accommodation>

=cut

1;
