package LDF::Schema::Seat;

# ABSTRACT: Used to describe a seat

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Used to describe a seat, such as a reserved seat in an event reservation.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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
);


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
);


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
);


=head2 C<seating_type>

C<seatingType>

The type/class of the seat.


A seating_type should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::QualitativeValue']>

=back

=cut

has seating_type => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Seat' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { seatNumber => 'seat_number' },
      { seatRow => 'seat_row' },
      { seatSection => 'seat_section' },
      { seatingType => 'seating_type' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
