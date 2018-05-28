package SemanticWeb::Schema::ReservationPackage;

# ABSTRACT: A group of multiple reservations with common values for all sub-reservations.

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A group of multiple reservations with common values for all
sub-reservations.




=head1 ATTRIBUTES


=head2 C<sub_reservation>

C<subReservation>

The individual reservations included in the package. Typically a repeated
property.


A sub_reservation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Reservation']>

=back

=cut

has sub_reservation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subReservation',
    json_ld_serializer => \&_serialize_sub_reservation,
);

sub _serialize_sub_reservation { $_[0]->_serializer('sub_reservation') }




around json_ld_type => sub { return 'ReservationPackage' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'subReservation' => \&_serialize_sub_reservation,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
