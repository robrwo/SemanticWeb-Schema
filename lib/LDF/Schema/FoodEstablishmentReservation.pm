package LDF::Schema::FoodEstablishmentReservation;

# ABSTRACT: A reservation to dine at a food-related business

use Moo;

extends qw/ LDF::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A reservation to dine at a food-related business.Note: This type is for
information about actual reservations, e.g. in confirmation emails or HTML
pages with individual confirmations of reservations.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<end_time>

C<endTime>

=begin html

The endTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to end. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from January to <em>December</em>.</p> <p>Note that Event
uses startDate/endDate instead of startTime/endTime, even when describing
dates with times. This situation may be clarified in future revisions.

=end html


A end_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has end_time => (
    is        => 'rw',
    predicate => 1,
);


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


=head2 C<start_time>

C<startTime>

=begin html

The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from <em>January</em> to December.</p> <p>Note that Event
uses startDate/endDate instead of startTime/endTime, even when describing
dates with times. This situation may be clarified in future revisions.

=end html


A start_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has start_time => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'FoodEstablishmentReservation' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { endTime => 'end_time' },
      { partySize => 'party_size' },
      { startTime => 'start_time' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Reservation>

=cut

1;
