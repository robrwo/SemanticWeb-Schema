use utf8;

package SemanticWeb::Schema::Action;

# ABSTRACT: An action performed by a direct agent and indirect participants upon a direct object

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Action';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

An action performed by a direct agent and indirect participants upon a
direct object. Optionally happens at a location with the help of an
inanimate instrument. The execution of the action may produce a result.
Specific action sub-type documentation specifies the exact expectation of
each argument/role. See also [blog
post](http://blog.schema.org/2014/04/announcing-schemaorg-actions.html) and
[Actions overview document](http://schema.org/docs/actions.html).




=head1 ATTRIBUTES


=head2 C<action_status>

C<actionStatus>

Indicates the current disposition of the Action.


A action_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ActionStatusType']>

=back

=head2 C<_has_action_status>

A predicate for the L</action_status> attribute.

=cut

has action_status => (
    is        => 'rw',
    predicate => '_has_action_status',
    json_ld   => 'actionStatus',
);


=head2 C<agent>



The direct performer or driver of the action (animate or inanimate). e.g.
*John* wrote a book.


A agent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_agent>

A predicate for the L</agent> attribute.

=cut

has agent => (
    is        => 'rw',
    predicate => '_has_agent',
    json_ld   => 'agent',
);


=head2 C<end_time>

C<endTime>

The endTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to end. For
actions that span a period of time, when the action was performed. e.g.
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


=head2 C<error>



For failed actions, more information on the cause of the failure.


A error should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_error>

A predicate for the L</error> attribute.

=cut

has error => (
    is        => 'rw',
    predicate => '_has_error',
    json_ld   => 'error',
);


=head2 C<instrument>



The object that helped the agent perform the action. e.g. John wrote a book
with *a pen*.


A instrument should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_instrument>

A predicate for the L</instrument> attribute.

=cut

has instrument => (
    is        => 'rw',
    predicate => '_has_instrument',
    json_ld   => 'instrument',
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


=head2 C<object>



The object upon which the action is carried out, whose state is kept intact
or changed. Also known as the semantic roles patient, affected or undergoer
(which change their state) or theme (which doesn't). e.g. John read *a
book*.


A object should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_object>

A predicate for the L</object> attribute.

=cut

has object => (
    is        => 'rw',
    predicate => '_has_object',
    json_ld   => 'object',
);


=head2 C<participant>



Other co-agents that participated in the action indirectly. e.g. John wrote
a book with *Steve*.


A participant should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_participant>

A predicate for the L</participant> attribute.

=cut

has participant => (
    is        => 'rw',
    predicate => '_has_participant',
    json_ld   => 'participant',
);


=head2 C<result>



The result produced in the action. e.g. John wrote *a book*.


A result should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=back

=head2 C<_has_result>

A predicate for the L</result> attribute.

=cut

has result => (
    is        => 'rw',
    predicate => '_has_result',
    json_ld   => 'result',
);


=head2 C<start_time>

C<startTime>

The startTime of something. For a reserved event or service (e.g.
FoodEstablishmentReservation), the time that it is expected to start. For
actions that span a period of time, when the action was performed. e.g.
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


=head2 C<target>



Indicates a target EntryPoint for an Action.


A target should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EntryPoint']>

=back

=head2 C<_has_target>

A predicate for the L</target> attribute.

=cut

has target => (
    is        => 'rw',
    predicate => '_has_target',
    json_ld   => 'target',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
