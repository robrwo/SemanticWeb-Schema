use utf8;

package SemanticWeb::Schema::RsvpAction;

# ABSTRACT: The act of notifying an event organizer as to whether you expect to attend the event.

use Moo;

extends qw/ SemanticWeb::Schema::InformAction /;


use MooX::JSON_LD 'RsvpAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.9.1';

=encoding utf8

=head1 DESCRIPTION

The act of notifying an event organizer as to whether you expect to attend
the event.




=head1 ATTRIBUTES


=head2 C<additional_number_of_guests>

C<additionalNumberOfGuests>

If responding yes, the number of guests who will attend in addition to the
invitee.


A additional_number_of_guests should be one of the following types:

=over

=item C<Num>

=back

=cut

has additional_number_of_guests => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalNumberOfGuests',
);


=head2 C<comment>



Comments, typically from users.


A comment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=cut

has comment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'comment',
);


=head2 C<rsvp_response>

C<rsvpResponse>

The response (yes, no, maybe) to the RSVP.


A rsvp_response should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RsvpResponseType']>

=back

=cut

has rsvp_response => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'rsvpResponse',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::InformAction>

=cut

1;
