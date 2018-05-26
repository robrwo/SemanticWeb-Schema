package LDF::Schema::TaxiReservation;

# ABSTRACT: A reservation for a taxi

use Moo;

extends qw/ LDF::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A reservation for a taxi.</p> <p>Note: This type is for information about
actual reservations, e.g. in confirmation emails or HTML pages with
individual confirmations of reservations. For offers of tickets, use <a
class="localLink" href="http://schema.org/Offer">Offer</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<party_size>

C<partySize>

Number of people the reservation should accommodate.


A party_size should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::QuantitativeValue']>

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has party_size => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<pickup_location>

C<pickupLocation>

Where a taxi will pick up a passenger or a rental car can be picked up.


A pickup_location should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has pickup_location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<pickup_time>

C<pickupTime>

When a taxi will pickup a passenger or a rental car can be picked up.


A pickup_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has pickup_time => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TaxiReservation' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { partySize => 'party_size' },
      { pickupLocation => 'pickup_location' },
      { pickupTime => 'pickup_time' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Reservation>

=cut

1;
