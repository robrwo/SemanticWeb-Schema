use utf8;

package SemanticWeb::Schema::InteractionCounter;

# ABSTRACT: A summary of how users have interacted with this CreativeWork

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'InteractionCounter';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A summary of how users have interacted with this CreativeWork. In most
cases, authors will use a subtype to specify the specific type of
interaction.




=head1 ATTRIBUTES


=head2 C<end_time>

C<endTime>

The endTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to end. For
actions that span a period of time, when the action was performed. E.g.
John wrote a book from January to *December*. For media, including audio
and video, it's the time offset of the end of a clip within a larger file.
Note that Event uses startDate/endDate instead of startTime/endTime, even
when describing dates with times. This situation may be clarified in future
revisions.


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


=head2 C<interaction_service>

C<interactionService>

The WebSite or SoftwareApplication where the interactions took place.


A interaction_service should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=item C<InstanceOf['SemanticWeb::Schema::WebSite']>

=back

=head2 C<_has_interaction_service>

A predicate for the L</interaction_service> attribute.

=cut

has interaction_service => (
    is        => 'rw',
    predicate => '_has_interaction_service',
    json_ld   => 'interactionService',
);


=head2 C<interaction_type>

C<interactionType>

The Action representing the type of interaction. For up votes, +1s, etc. use L<SemanticWeb::Schema::LikeAction>. For down votes use L<SemanticWeb::Schema::DislikeAction>. Otherwise, use the most specific Action.

A interaction_type should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Action']>

=back

=head2 C<_has_interaction_type>

A predicate for the L</interaction_type> attribute.

=cut

has interaction_type => (
    is        => 'rw',
    predicate => '_has_interaction_type',
    json_ld   => 'interactionType',
);


=head2 C<location>



The location of, for example, where an event is happening, where an
organization is located, or where an action takes place.


A location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=item C<InstanceOf['SemanticWeb::Schema::PostalAddress']>

=item C<InstanceOf['SemanticWeb::Schema::VirtualLocation']>

=item C<Str>

=back

=head2 C<_has_location>

A predicate for the L</location> attribute.

=cut

has location => (
    is        => 'rw',
    predicate => '_has_location',
    json_ld   => 'location',
);


=head2 C<start_time>

C<startTime>

The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. E.g.
John wrote a book from *January* to December. For media, including audio
and video, it's the time offset of the start of a clip within a larger
file. Note that Event uses startDate/endDate instead of startTime/endTime,
even when describing dates with times. This situation may be clarified in
future revisions.


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


=head2 C<user_interaction_count>

C<userInteractionCount>

The number of interactions for the CreativeWork using the WebSite or
SoftwareApplication.


A user_interaction_count should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_user_interaction_count>

A predicate for the L</user_interaction_count> attribute.

=cut

has user_interaction_count => (
    is        => 'rw',
    predicate => '_has_user_interaction_count',
    json_ld   => 'userInteractionCount',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
