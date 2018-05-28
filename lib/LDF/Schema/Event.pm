package LDF::Schema::Event;

# ABSTRACT: An event happening at a certain time and location

use Moo;

extends qw/ LDF::Schema::Thing /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

An event happening at a certain time and location, such as a concert,
lecture, or festival. Ticketing information may be added via the <a
class="localLink" href="http://schema.org/offers">offers</a> property.
Repeated events may be structured as separate Event objects.

=end html




=head1 ATTRIBUTES


=head2 C<about>



The subject matter of the content.


A about should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Thing']>

=back

=cut

has about => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<actor>



An actor, e.g. in tv, radio, movie, video games etc., or in an event.
Actors can be associated with individual items or with a series, episode,
clip.


A actor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has actor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<aggregate_rating>

C<aggregateRating>

The overall rating, based on a collection of reviews or ratings, of the
item.


A aggregate_rating should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::AggregateRating']>

=back

=cut

has aggregate_rating => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<attendee>



A person or organization attending the event.


A attendee should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has attendee => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<attendees>



A person attending the event.


A attendees should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has attendees => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Audience']>

=back

=cut

has audience => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<composer>



The person or organization who wrote a composition, or who is the composer
of a work performed at some event.


A composer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has composer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<contributor>



A secondary contributor to the CreativeWork or Event.


A contributor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has contributor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<director>



A director of e.g. tv, radio, movie, video gaming etc. content, or of an
event. Directors can be associated with individual items or with a series,
episode, clip.


A director should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has director => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<door_time>

C<doorTime>

The time admission will commence.


A door_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has door_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<duration>



=begin html

The duration of the item (movie, audio recording, event, etc.) in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>.

=end html


A duration should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Duration']>

=back

=cut

has duration => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<end_date>

C<endDate>

=begin html

The end date and time of the item (in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>).

=end html


A end_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has end_date => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<event_status>

C<eventStatus>

An eventStatus of an event represents its status; particularly useful when
an event is cancelled or rescheduled.


A event_status should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::EventStatusType']>

=back

=cut

has event_status => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<funder>



A person or organization that supports (sponsors) something through some
kind of financial contribution.


A funder should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has funder => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<in_language>

C<inLanguage>

=begin html

The language of the content or performance or used in an action. Please use
one of the language codes from the <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard</a>. See also
<a class="localLink"
href="http://schema.org/availableLanguage">availableLanguage</a>.

=end html


A in_language should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Language']>

=item C<Str>

=back

=cut

has in_language => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<is_accessible_for_free>

C<isAccessibleForFree>

A flag to signal that the item, event, or place is accessible for free.


A is_accessible_for_free should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_accessible_for_free => (
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


=head2 C<maximum_attendee_capacity>

C<maximumAttendeeCapacity>

The total number of individuals that may attend an event or venue.


A maximum_attendee_capacity should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has maximum_attendee_capacity => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<offers>



An offer to provide this item&#x2014;for example, an offer to sell a
product, rent the DVD of a movie, perform a service, or give away tickets
to an event.


A offers should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Offer']>

=back

=cut

has offers => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<organizer>



An organizer of an Event.


A organizer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has organizer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<performer>



A performer at the event&#x2014;for example, a presenter, musician, musical
group or actor.


A performer should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has performer => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<performers>



The main performer or performers of the event&#x2014;for example, a
presenter, musician, or actor.


A performers should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has performers => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<previous_start_date>

C<previousStartDate>

Used in conjunction with eventStatus for rescheduled or cancelled events.
This property contains the previously scheduled start date. For rescheduled
events, the startDate property should be used for the newly scheduled start
date. In the (rare) case of an event that has been postponed and
rescheduled multiple times, this field may be repeated.


A previous_start_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has previous_start_date => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<recorded_in>

C<recordedIn>

The CreativeWork that captured all or part of this Event.


A recorded_in should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has recorded_in => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<remaining_attendee_capacity>

C<remainingAttendeeCapacity>

The number of attendee places for an event that remain unallocated.


A remaining_attendee_capacity should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has remaining_attendee_capacity => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<review>



A review of the item.


A review should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Review']>

=back

=cut

has review => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sponsor>



A person or organization that supports a thing through a pledge, promise,
or financial contribution. e.g. a sponsor of a Medical Study or a corporate
sponsor of an event.


A sponsor should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has sponsor => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<start_date>

C<startDate>

=begin html

The start date and time of the item (in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>).

=end html


A start_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has start_date => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sub_event>

C<subEvent>

An Event that is part of this event. For example, a conference event
includes many presentations, each of which is a subEvent of the conference.


A sub_event should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has sub_event => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<sub_events>

C<subEvents>

Events that are a part of this event. For example, a conference event
includes many presentations, each subEvents of the conference.


A sub_events should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has sub_events => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<super_event>

C<superEvent>

An event that this event is a part of. For example, a collection of
individual music performances might each have a music festival as their
superEvent.


A super_event should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Event']>

=back

=cut

has super_event => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<translator>



Organization or person who adapts a creative work to different languages,
regional differences and technical requirements of a target market, or that
translates during some event.


A translator should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has translator => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<typical_age_range>

C<typicalAgeRange>

The typical expected age range, e.g. '7-9', '11-'.


A typical_age_range should be one of the following types:

=over

=item C<Str>

=back

=cut

has typical_age_range => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<work_featured>

C<workFeatured>

A work featured in some event, e.g. exhibited in an ExhibitionEvent.
Specific subproperties are available for workPerformed (e.g. a play), or a
workPresented (a Movie at a ScreeningEvent).


A work_featured should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has work_featured => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<work_performed>

C<workPerformed>

A work performed in some event, for example a play performed in a
TheaterEvent.


A work_performed should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=back

=cut

has work_performed => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Event' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'about' => $self->curry::_serializer('about'),
       'actor' => $self->curry::_serializer('actor'),
       'aggregateRating' => $self->curry::_serializer('aggregate_rating'),
       'attendee' => $self->curry::_serializer('attendee'),
       'attendees' => $self->curry::_serializer('attendees'),
       'audience' => $self->curry::_serializer('audience'),
       'composer' => $self->curry::_serializer('composer'),
       'contributor' => $self->curry::_serializer('contributor'),
       'director' => $self->curry::_serializer('director'),
       'doorTime' => $self->curry::_serializer('door_time'),
       'duration' => $self->curry::_serializer('duration'),
       'endDate' => $self->curry::_serializer('end_date'),
       'eventStatus' => $self->curry::_serializer('event_status'),
       'funder' => $self->curry::_serializer('funder'),
       'inLanguage' => $self->curry::_serializer('in_language'),
       'isAccessibleForFree' => $self->curry::_serializer('is_accessible_for_free'),
       'location' => $self->curry::_serializer('location'),
       'maximumAttendeeCapacity' => $self->curry::_serializer('maximum_attendee_capacity'),
       'offers' => $self->curry::_serializer('offers'),
       'organizer' => $self->curry::_serializer('organizer'),
       'performer' => $self->curry::_serializer('performer'),
       'performers' => $self->curry::_serializer('performers'),
       'previousStartDate' => $self->curry::_serializer('previous_start_date'),
       'recordedIn' => $self->curry::_serializer('recorded_in'),
       'remainingAttendeeCapacity' => $self->curry::_serializer('remaining_attendee_capacity'),
       'review' => $self->curry::_serializer('review'),
       'sponsor' => $self->curry::_serializer('sponsor'),
       'startDate' => $self->curry::_serializer('start_date'),
       'subEvent' => $self->curry::_serializer('sub_event'),
       'subEvents' => $self->curry::_serializer('sub_events'),
       'superEvent' => $self->curry::_serializer('super_event'),
       'translator' => $self->curry::_serializer('translator'),
       'typicalAgeRange' => $self->curry::_serializer('typical_age_range'),
       'workFeatured' => $self->curry::_serializer('work_featured'),
       'workPerformed' => $self->curry::_serializer('work_performed'),
    } ]
};




=head1 SEE ALSO



L<LDF::Schema::Thing>

=cut

1;
