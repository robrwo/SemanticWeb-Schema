package SemanticWeb::Schema::Seat;

# ABSTRACT: Used to describe a seat

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Seat';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Used to describe a seat, such as a reserved seat in an event reservation.




=head1 ATTRIBUTES


=head2 C<seat_number>

C<seatNumber>

The location of the reserved seat (e.g., 27).


A seat_number should be one of the following types:

=over

=item C<Str>

=back

=cut

has seat_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seatNumber',
    json_ld_serializer => \&_serialize_seat_number,
);

sub _serialize_seat_number { $_[0]->_serializer('seat_number') }


=head2 C<seat_row>

C<seatRow>

The row location of the reserved seat (e.g., B).


A seat_row should be one of the following types:

=over

=item C<Str>

=back

=cut

has seat_row => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seatRow',
    json_ld_serializer => \&_serialize_seat_row,
);

sub _serialize_seat_row { $_[0]->_serializer('seat_row') }


=head2 C<seat_section>

C<seatSection>

The section location of the reserved seat (e.g. Orchestra).


A seat_section should be one of the following types:

=over

=item C<Str>

=back

=cut

has seat_section => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seatSection',
    json_ld_serializer => \&_serialize_seat_section,
);

sub _serialize_seat_section { $_[0]->_serializer('seat_section') }


=head2 C<seating_type>

C<seatingType>

The type/class of the seat.


A seating_type should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has seating_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seatingType',
    json_ld_serializer => \&_serialize_seating_type,
);

sub _serialize_seating_type { $_[0]->_serializer('seating_type') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
