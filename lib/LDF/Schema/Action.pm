package LDF::Schema::Action;

# ABSTRACT: An action performed by a direct agent and indirect participants upon a direct object

use Moo;

extends qw/ LDF::Schema::Thing /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An action performed by a direct agent and indirect participants upon a
direct object. Optionally happens at a location with the help of an
inanimate instrument. The execution of the action may produce a result.
Specific action sub-type documentation specifies the exact expectation of
each argument/role.</p> <p>See also <a
href="http://blog.schema.org/2014/04/announcing-schemaorg-actions.html">blo
g post</a> and <a href="http://schema.org/docs/actions.html">Actions
overview document</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<action_status>

C<actionStatus>

Indicates the current disposition of the Action.


A action_status should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ActionStatusType']>

=back

=cut

has action_status => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<agent>



=begin html

The direct performer or driver of the action (animate or inanimate). e.g.
<em>John</em> wrote a book.

=end html


A agent should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has agent => (
    is        => 'rw',
    predicate => 1,
);


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


=head2 C<error>



For failed actions, more information on the cause of the failure.


A error should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has error => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<instrument>



=begin html

The object that helped the agent perform the action. e.g. John wrote a book
with <em>a pen</em>.

=end html


A instrument should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has instrument => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<location>



The location of for example where the event is happening, an organization
is located, or where an action takes place.


A location should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::PostalAddress']>

=item C<InstanceOf['LDF::Schema::Place']>

=back

=cut

has location => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<object>



=begin html

The object upon which the action is carried out, whose state is kept intact
or changed. Also known as the semantic roles patient, affected or undergoer
(which change their state) or theme (which doesn't). e.g. John read <em>a
book</em>.

=end html


A object should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has object => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<participant>



=begin html

Other co-agents that participated in the action indirectly. e.g. John wrote
a book with <em>Steve</em>.

=end html


A participant should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has participant => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<result>



=begin html

The result produced in the action. e.g. John wrote <em>a book</em>.

=end html


A result should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has result => (
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


=head2 C<target>



Indicates a target EntryPoint for an Action.


A target should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::EntryPoint']>

=back

=cut

has target => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Action' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { actionStatus => 'action_status' },
      { agent => 'agent' },
      { endTime => 'end_time' },
      { error => 'error' },
      { instrument => 'instrument' },
      { location => 'location' },
      { object => 'object' },
      { participant => 'participant' },
      { result => 'result' },
      { startTime => 'start_time' },
      { target => 'target' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Thing>

=cut

1;
