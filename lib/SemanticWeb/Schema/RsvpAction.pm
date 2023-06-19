use utf8;

package SemanticWeb::Schema::RsvpAction;

# ABSTRACT: The act of notifying an event organizer as to whether you expect to attend the event.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::InformAction /;


use MooX::JSON_LD 'RsvpAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

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

=head2 C<_has_additional_number_of_guests>

A predicate for the L</additional_number_of_guests> attribute.

=cut

has additional_number_of_guests => (
    is        => 'rw',
    predicate => '_has_additional_number_of_guests',
    json_ld   => 'additionalNumberOfGuests',
);


=head2 C<comment>



Comments, typically from users.


A comment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=head2 C<_has_comment>

A predicate for the L</comment> attribute.

=cut

has comment => (
    is        => 'rw',
    predicate => '_has_comment',
    json_ld   => 'comment',
);


=head2 C<rsvp_response>

C<rsvpResponse>

The response (yes, no, maybe) to the RSVP.


A rsvp_response should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RsvpResponseType']>

=back

=head2 C<_has_rsvp_response>

A predicate for the L</rsvp_response> attribute.

=cut

has rsvp_response => (
    is        => 'rw',
    predicate => '_has_rsvp_response',
    json_ld   => 'rsvpResponse',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::InformAction>

=cut

1;
