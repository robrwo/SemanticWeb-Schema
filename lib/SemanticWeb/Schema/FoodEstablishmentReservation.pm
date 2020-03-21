use utf8;

package SemanticWeb::Schema::FoodEstablishmentReservation;

# ABSTRACT: A reservation to dine at a food-related business

use Moo;

extends qw/ SemanticWeb::Schema::Reservation /;


use MooX::JSON_LD 'FoodEstablishmentReservation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A reservation to dine at a food-related business.<br/><br/> Note: This
type is for information about actual reservations, e.g. in confirmation
emails or HTML pages with individual confirmations of reservations.<p>

=end html




=head1 ATTRIBUTES


=head2 C<end_time>

C<endTime>

=begin html

<p>The endTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to end. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from January to <em>December</em>. For media, including
audio and video, it's the time offset of the end of a clip within a larger
file.<br/><br/> Note that Event uses startDate/endDate instead of
startTime/endTime, even when describing dates with times. This situation
may be clarified in future revisions.<p>

=end html


A end_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_end_time>

A predicate for the L</end_time> attribute.

=cut

has end_time => (
    is        => 'rw',
    predicate => '_has_end_time',
    json_ld   => 'endTime',
);


=head2 C<party_size>

C<partySize>

Number of people the reservation should accommodate.


A party_size should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=head2 C<_has_party_size>

A predicate for the L</party_size> attribute.

=cut

has party_size => (
    is        => 'rw',
    predicate => '_has_party_size',
    json_ld   => 'partySize',
);


=head2 C<start_time>

C<startTime>

=begin html

<p>The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. e.g.
John wrote a book from <em>January</em> to December. For media, including
audio and video, it's the time offset of the start of a clip within a
larger file.<br/><br/> Note that Event uses startDate/endDate instead of
startTime/endTime, even when describing dates with times. This situation
may be clarified in future revisions.<p>

=end html


A start_time should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_start_time>

A predicate for the L</start_time> attribute.

=cut

has start_time => (
    is        => 'rw',
    predicate => '_has_start_time',
    json_ld   => 'startTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Reservation>

=cut

1;
