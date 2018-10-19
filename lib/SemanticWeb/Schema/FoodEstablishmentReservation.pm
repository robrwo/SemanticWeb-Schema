package SemanticWeb::Schema::FoodEstablishmentReservation;

# ABSTRACT: A reservation to dine at a food-related business

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'FoodEstablishmentReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

=begin html

A reservation to dine at a food-related business.<br/><br/> Note: This type
is for information about actual reservations, e.g. in confirmation emails
or HTML pages with individual confirmations of reservations.

=end html




=head1 ATTRIBUTES


=head2 C<end_time>

C<endTime>

=begin html

The endTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to end. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from January to <em>December</em>.<br/><br/> Note that
Event uses startDate/endDate instead of startTime/endTime, even when
describing dates with times. This situation may be clarified in future
revisions.

=end html


A end_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has end_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'endTime',
);


=head2 C<party_size>

C<partySize>

Number of people the reservation should accommodate.


A party_size should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has party_size => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'partySize',
);


=head2 C<start_time>

C<startTime>

=begin html

The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from <em>January</em> to December.<br/><br/> Note that
Event uses startDate/endDate instead of startTime/endTime, even when
describing dates with times. This situation may be clarified in future
revisions.

=end html


A start_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has start_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'startTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
