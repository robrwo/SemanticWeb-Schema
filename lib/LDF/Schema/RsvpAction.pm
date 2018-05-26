package LDF::Schema::RsvpAction;

# ABSTRACT: The act of notifying an event organizer as to whether you expect to attend the event.

use Moo;

extends qw/ LDF::Schema::InformAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of notifying an event organizer as to whether you expect to attend
the event.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


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
);


=head2 C<comment>



Comments, typically from users.


A comment should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Comment']>

=back

=cut

has comment => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<rsvp_response>

C<rsvpResponse>

The response (yes, no, maybe) to the RSVP.


A rsvp_response should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::RsvpResponseType']>

=back

=cut

has rsvp_response => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'RsvpAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { additionalNumberOfGuests => 'additional_number_of_guests' },
      { comment => 'comment' },
      { rsvpResponse => 'rsvp_response' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::InformAction>

=cut

1;
