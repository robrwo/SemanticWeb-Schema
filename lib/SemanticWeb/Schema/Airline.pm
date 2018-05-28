package SemanticWeb::Schema::Airline;

# ABSTRACT: An organization that provides flights for passengers.

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An organization that provides flights for passengers.




=head1 ATTRIBUTES


=head2 C<boarding_policy>

C<boardingPolicy>

The type of boarding policy used by the airline (e.g. zone-based or
group-based).


A boarding_policy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BoardingPolicyType']>

=back

=cut

has boarding_policy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'boardingPolicy',
    json_ld_serializer => \&_serialize_boarding_policy,
);

sub _serialize_boarding_policy { $_[0]->_serializer('boarding_policy') }


=head2 C<iata_code>

C<iataCode>

IATA identifier for an airline or airport.


A iata_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has iata_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'iataCode',
    json_ld_serializer => \&_serialize_iata_code,
);

sub _serialize_iata_code { $_[0]->_serializer('iata_code') }




around json_ld_type => sub { return 'Airline' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'boardingPolicy' => \&_serialize_boarding_policy,
       'iataCode' => \&_serialize_iata_code,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
