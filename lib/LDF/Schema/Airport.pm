package LDF::Schema::Airport;

# ABSTRACT: An airport.

use Moo;

extends qw/ LDF::Schema::CivicStructure /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An airport.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


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
);


=head2 C<icao_code>

C<icaoCode>

ICAO identifier for an airport.


A icao_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has icao_code => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Airport' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { iataCode => 'iata_code' },
      { icaoCode => 'icao_code' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CivicStructure>

=cut

1;
